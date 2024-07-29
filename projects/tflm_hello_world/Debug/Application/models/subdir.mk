################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CC_SRCS += \
C:/Users/Tu/tflm-ekra8m1-mtk3/applications/tflm_hello_world/models/hello_world_float_model_data.cc \
C:/Users/Tu/tflm-ekra8m1-mtk3/applications/tflm_hello_world/models/hello_world_int8_model_data.cc 

SREC += \
tflm_hello_world.srec 

CC_DEPS += \
./Application/models/hello_world_float_model_data.d \
./Application/models/hello_world_int8_model_data.d 

OBJS += \
./Application/models/hello_world_float_model_data.o \
./Application/models/hello_world_int8_model_data.o 

MAP += \
tflm_hello_world.map 


# Each subdirectory must supply rules for building sources it contributes
Application/models/hello_world_float_model_data.o: C:/Users/Tu/tflm-ekra8m1-mtk3/applications/tflm_hello_world/models/hello_world_float_model_data.cc
	$(file > $@.in,-mthumb -mfloat-abi=hard -mcpu=cortex-m85+nopacbti -Os -fmessage-length=0 -ffunction-sections -fdata-sections -fno-unwind-tables -Wall -Wextra -Wsign-compare -Wdouble-promotion -Wunused-variable -Wunused-function -Wswitch -Wvla -Wmissing-field-initializers -Wstrict-aliasing -Wno-unused-parameter -g -D_RENESAS_RA_ -D_RA_CORE=CM85 -D_RA_ORDINAL=1 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -I"C:/Users/Tu/tflm-ekra8m1-mtk3/projects/tflm_hello_world/src" -I"." -I"C:/Users/Tu/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra/fsp/inc" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra/fsp/inc/api" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra/fsp/inc/instances" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra/arm/CMSIS_5/CMSIS/Core/Include" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra_gen" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra_cfg/fsp_cfg/bsp" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra_cfg/fsp_cfg" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/tflm/third_party" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/tflm/third_party/gemmlowp" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/tflm/third_party/flatbuffers/include" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/tflm/third_party/kissfft" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/tflm/third_party/ruy" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/tflm" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/SEGGER_RTT" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/applications/tflm_hello_world/models" -std=c++11 -fabi-version=0 -Wno-stringop-overflow -Wno-format-truncation -flax-vector-conversions --param=min-pagesize=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c++ "$<")
	@echo Building file: $< && arm-none-eabi-g++ @"$@.in"
Application/models/hello_world_int8_model_data.o: C:/Users/Tu/tflm-ekra8m1-mtk3/applications/tflm_hello_world/models/hello_world_int8_model_data.cc
	$(file > $@.in,-mthumb -mfloat-abi=hard -mcpu=cortex-m85+nopacbti -Os -fmessage-length=0 -ffunction-sections -fdata-sections -fno-unwind-tables -Wall -Wextra -Wsign-compare -Wdouble-promotion -Wunused-variable -Wunused-function -Wswitch -Wvla -Wmissing-field-initializers -Wstrict-aliasing -Wno-unused-parameter -g -D_RENESAS_RA_ -D_RA_CORE=CM85 -D_RA_ORDINAL=1 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -I"C:/Users/Tu/tflm-ekra8m1-mtk3/projects/tflm_hello_world/src" -I"." -I"C:/Users/Tu/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra/fsp/inc" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra/fsp/inc/api" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra/fsp/inc/instances" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra/arm/CMSIS_5/CMSIS/Core/Include" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra_gen" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra_cfg/fsp_cfg/bsp" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra_cfg/fsp_cfg" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/tflm/third_party" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/tflm/third_party/gemmlowp" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/tflm/third_party/flatbuffers/include" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/tflm/third_party/kissfft" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/tflm/third_party/ruy" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/tflm" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/SEGGER_RTT" -I"C:/Users/Tu/tflm-ekra8m1-mtk3/applications/tflm_hello_world/models" -std=c++11 -fabi-version=0 -Wno-stringop-overflow -Wno-format-truncation -flax-vector-conversions --param=min-pagesize=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c++ "$<")
	@echo Building file: $< && arm-none-eabi-g++ @"$@.in"

