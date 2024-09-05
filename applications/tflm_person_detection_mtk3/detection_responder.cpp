#include "detection_responder.h"
#include "tensorflow/lite/micro/micro_log.h"

// This dummy implementation writes person and no person scores to the terminal
// Real applications will want to take some custom action instead, and
// should implement their own versions of this function.
TfLiteStatus RespondToDetection(int8_t person_score, int8_t no_person_score)
{   const char* output_class = person_score > no_person_score ? "person" : "no person";
    MicroPrintf("Detected %s (person score: %d no person score: %d)", output_class, person_score, no_person_score);
    return kTfLiteOk;
}
