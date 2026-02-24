################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../llsw/leon3_uart_drv/src/leon3_uart_drv.c 

C_DEPS += \
./llsw/leon3_uart_drv/src/leon3_uart_drv.d 

OBJS += \
./llsw/leon3_uart_drv/src/leon3_uart_drv.o 


# Each subdirectory must supply rules for building sources it contributes
llsw/leon3_uart_drv/src/%.o: ../llsw/leon3_uart_drv/src/%.c llsw/leon3_uart_drv/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	sparc-gaisler-rtems5-gcc -std=c99 -I/opt/rcc-1.3.2-gcc/sparc-gaisler-rtems5/leon3/lib/include -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/asw/components/systemmng/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/asw/components/systemmng/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/llsw/nexys_gpio_drv/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/llsw/leon3_uart_drv/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/asw/edroom_glue/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/service_libraries/edroomsl/edroombp/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/llsw/config/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/llsw/rtems_osswr/include" -O0 -g3 -Wall -c -fmessage-length=0 -mcpu=leon3 -qbsp=leon3 -msoft-float -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-llsw-2f-leon3_uart_drv-2f-src

clean-llsw-2f-leon3_uart_drv-2f-src:
	-$(RM) ./llsw/leon3_uart_drv/src/leon3_uart_drv.d ./llsw/leon3_uart_drv/src/leon3_uart_drv.o

.PHONY: clean-llsw-2f-leon3_uart_drv-2f-src

