#include "tensorflow/lite/c/common.h"
#include "models/person_detect_model_data.h"
#include "testdata/no_person_image_data.h"
#include "testdata/person_image_data.h"
#include "model_settings.h"
#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/micro/micro_log.h"
#include "tensorflow/lite/micro/micro_mutable_op_resolver.h"
#include "tensorflow/lite/micro/system_setup.h"
#include "tensorflow/lite/schema/schema_generated.h"
#include "detection_responder.h"
#include "image_provider.h"
#include "person_detection.h"

namespace
{
    const tflite::Model* model = nullptr;
    tflite::MicroInterpreter* interpreter = nullptr;
    constexpr int tensor_arena_size = 136 * 1024;
    uint8_t tensor_arena[tensor_arena_size];
}

void person_detection_init(void)
{
    tflite::InitializeTarget();

    model = tflite::GetModel(g_person_detect_model_data);
    if (TFLITE_SCHEMA_VERSION != model->version())
    {
      MicroPrintf(
          "Model provided is schema version %d not equal "
          "to supported version %d.\n",
          model->version(), TFLITE_SCHEMA_VERSION);
    }

    static tflite::MicroMutableOpResolver<5> micro_op_resolver;
    micro_op_resolver.AddAveragePool2D(tflite::Register_AVERAGE_POOL_2D_INT8());
    micro_op_resolver.AddConv2D(tflite::Register_CONV_2D_INT8());
    micro_op_resolver.AddDepthwiseConv2D(tflite::Register_DEPTHWISE_CONV_2D_INT8());
    micro_op_resolver.AddReshape();
    micro_op_resolver.AddSoftmax(tflite::Register_SOFTMAX_INT8());

    static tflite::MicroInterpreter static_interpreter(model, micro_op_resolver, tensor_arena, tensor_arena_size);
    interpreter = &static_interpreter;
    interpreter->AllocateTensors();
}

void person_detection_run(void)
{
    TfLiteStatus invoke_status = interpreter->Invoke();
    if (kTfLiteOk != invoke_status)
    {
      MicroPrintf("Invoke failed\n");
    }
}

int person_detection_input(void)
{
    static int input_class = 0; // 0: no person data; 1: person data
    int current_input_class = input_class;
    const unsigned char* input_src = nullptr;

    if (0 == input_class)
    {
        input_src = g_no_person_image_data;
        input_class = 1;
    }
    else if (1 == input_class)
    {
        input_src = g_person_image_data;
        input_class = 0;
    }

    TfLiteTensor* input = interpreter->input(0);
    GetImageFromMemory(input->data.int8, input_src, input->bytes);
    return current_input_class;
}

void person_detection_output(void)
{
    TfLiteTensor* output = interpreter->output(0);
    int8_t person_score = output->data.int8[kPersonIndex];
    int8_t no_person_score = output->data.int8[kNotAPersonIndex];
    RespondToDetection(person_score, no_person_score);
}

