################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../ra/fsp/src/bsp/mcu/all/bsp_clocks.c \
../ra/fsp/src/bsp/mcu/all/bsp_common.c \
../ra/fsp/src/bsp/mcu/all/bsp_delay.c \
../ra/fsp/src/bsp/mcu/all/bsp_group_irq.c \
../ra/fsp/src/bsp/mcu/all/bsp_guard.c \
../ra/fsp/src/bsp/mcu/all/bsp_io.c \
../ra/fsp/src/bsp/mcu/all/bsp_irq.c \
../ra/fsp/src/bsp/mcu/all/bsp_macl.c \
../ra/fsp/src/bsp/mcu/all/bsp_register_protection.c \
../ra/fsp/src/bsp/mcu/all/bsp_rom_registers.c \
../ra/fsp/src/bsp/mcu/all/bsp_sbrk.c \
../ra/fsp/src/bsp/mcu/all/bsp_security.c 

SREC += \
tflm_hello_world.srec 

C_DEPS += \
./ra/fsp/src/bsp/mcu/all/bsp_clocks.d \
./ra/fsp/src/bsp/mcu/all/bsp_common.d \
./ra/fsp/src/bsp/mcu/all/bsp_delay.d \
./ra/fsp/src/bsp/mcu/all/bsp_group_irq.d \
./ra/fsp/src/bsp/mcu/all/bsp_guard.d \
./ra/fsp/src/bsp/mcu/all/bsp_io.d \
./ra/fsp/src/bsp/mcu/all/bsp_irq.d \
./ra/fsp/src/bsp/mcu/all/bsp_macl.d \
./ra/fsp/src/bsp/mcu/all/bsp_register_protection.d \
./ra/fsp/src/bsp/mcu/all/bsp_rom_registers.d \
./ra/fsp/src/bsp/mcu/all/bsp_sbrk.d \
./ra/fsp/src/bsp/mcu/all/bsp_security.d 

OBJS += \
./ra/fsp/src/bsp/mcu/all/bsp_clocks.o \
./ra/fsp/src/bsp/mcu/all/bsp_common.o \
./ra/fsp/src/bsp/mcu/all/bsp_delay.o \
./ra/fsp/src/bsp/mcu/all/bsp_group_irq.o \
./ra/fsp/src/bsp/mcu/all/bsp_guard.o \
./ra/fsp/src/bsp/mcu/all/bsp_io.o \
./ra/fsp/src/bsp/mcu/all/bsp_irq.o \
./ra/fsp/src/bsp/mcu/all/bsp_macl.o \
./ra/fsp/src/bsp/mcu/all/bsp_register_protection.o \
./ra/fsp/src/bsp/mcu/all/bsp_rom_registers.o \
./ra/fsp/src/bsp/mcu/all/bsp_sbrk.o \
./ra/fsp/src/bsp/mcu/all/bsp_security.o 

MAP += \
tflm_hello_world.map 


# Each subdirectory must supply rules for building sources it contributes
ra/fsp/src/bsp/mcu/all/%.o: ../ra/fsp/src/bsp/mcu/all/%.c
	$(file > $@.in,-mthumb -mfloat-abi=hard -mcpu=cortex-m85+nopacbti -Os -fmessage-length=0 -ffunction-sections -fdata-sections -fno-unwind-tables -Wall -Wextra -Wsign-compare -Wdouble-promotion -Wunused-variable -Wunused-function -Wswitch -Wvla -Wmissing-field-initializers -Wstrict-aliasing -Wno-unused-parameter -g -D_RENESAS_RA_ -D_RA_CORE=CM85 -D_RA_ORDINAL=1 -DTF_LITE_STATIC_MEMORY -DTF_LITE_DISABLE_X86_NEON -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/projects/tflm_hello_world/src" -I"." -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra/fsp/inc" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra/fsp/inc/api" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra/fsp/inc/instances" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra/arm/CMSIS_5/CMSIS/Core/Include" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra_gen" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra_cfg/fsp_cfg/bsp" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/projects/tflm_hello_world/ra_cfg/fsp_cfg" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/tflm/third_party" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/tflm/third_party/gemmlowp" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/tflm/third_party/flatbuffers/include" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/tflm/third_party/kissfft" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/tflm/third_party/ruy" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/tflm" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/SEGGER_RTT" -I"C:/Users/Tu/Repositories/tflm-ekra8m1-mtk3/applications/tflm_hello_world" -std=c11 -Wno-stringop-overflow -Wno-format-truncation -flax-vector-conversions --param=min-pagesize=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -c -o "$@" -x c "$<")
	@echo Building file: $< && arm-none-eabi-gcc @"$@.in"

