################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ra_gen/common_data.c \
../ra_gen/hal_data.c \
../ra_gen/main.c \
../ra_gen/pin_data.c \
../ra_gen/vector_data.c 

SREC += \
tflm_hello_world.srec 

C_DEPS += \
./ra_gen/common_data.d \
./ra_gen/hal_data.d \
./ra_gen/main.d \
./ra_gen/pin_data.d \
./ra_gen/vector_data.d 

OBJS += \
./ra_gen/common_data.o \
./ra_gen/hal_data.o \
./ra_gen/main.o \
./ra_gen/pin_data.o \
./ra_gen/vector_data.o 

MAP += \
tflm_hello_world.map 


# Each subdirectory must supply rules for building sources it contributes
ra_gen/%.o: ../ra_gen/%.c
	$(file > $@.in,-mthumb -mfloat-abi=hard -mcpu=cortex-m85+nopacbti -Os -fmessage-length=0 -ffunction-sections -fdata-sections -fno-unwind-tables -Wall -Wextra -Wsign-compare -Wdouble-promotion -Wunused-variable -Wunused-function -Wswitch -Wvla -Wmissing-field-initializers -Wstrict-aliasing -Wno-unused-parameter -g -D_RENESAS_RA_ -D_RA_CORE=CM85 -D_RA_ORDINAL=1 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/projects/tflm_hello_world/src" -I"." -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra/fsp/inc" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra/fsp/inc/api" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra/fsp/inc/instances" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra/arm/CMSIS_5/CMSIS/Core/Include" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra_gen" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra_cfg/fsp_cfg/bsp" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra_cfg/fsp_cfg" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/tflm/third_party" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/tflm/third_party/gemmlowp" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/tflm/third_party/flatbuffers/include" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/tflm/third_party/kissfft" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/tflm/third_party/ruy" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/tflm" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/SEGGER_RTT" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/applications/tflm_hello_world" -std=c11 -Wno-stringop-overflow -Wno-format-truncation -flax-vector-conversions --param=min-pagesize=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

