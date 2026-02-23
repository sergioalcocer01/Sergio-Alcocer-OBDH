################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../lsw/leon3_uart_drv/src/leon3_uart_drv.c 

C_DEPS += \
./lsw/leon3_uart_drv/src/leon3_uart_drv.d 

OBJS += \
./lsw/leon3_uart_drv/src/leon3_uart_drv.o 


# Each subdirectory must supply rules for building sources it contributes
lsw/leon3_uart_drv/src/%.o: ../lsw/leon3_uart_drv/src/%.c lsw/leon3_uart_drv/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	sparc-gaisler-rtems5-gcc -std=c99 -I/opt/rcc-1.3.2-gcc/sparc-gaisler-rtems5/leon3/lib/include -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3_resuelto/asw/edroom_glue/include" -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3_resuelto/service_libraries/edroomsl/edroombp/include" -O0 -g3 -Wall -c -fmessage-length=0 -mcpu=leon3 -qbsp=leon3 -msoft-float -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-lsw-2f-leon3_uart_drv-2f-src

clean-lsw-2f-leon3_uart_drv-2f-src:
	-$(RM) ./lsw/leon3_uart_drv/src/leon3_uart_drv.d ./lsw/leon3_uart_drv/src/leon3_uart_drv.o

.PHONY: clean-lsw-2f-leon3_uart_drv-2f-src

