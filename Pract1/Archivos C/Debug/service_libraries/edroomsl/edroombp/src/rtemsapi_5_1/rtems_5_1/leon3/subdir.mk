################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../service_libraries/edroomsl/edroombp/src/rtemsapi_5_1/rtems_5_1/leon3/leon3_hw_irqs.c 

C_DEPS += \
./service_libraries/edroomsl/edroombp/src/rtemsapi_5_1/rtems_5_1/leon3/leon3_hw_irqs.d 

OBJS += \
./service_libraries/edroomsl/edroombp/src/rtemsapi_5_1/rtems_5_1/leon3/leon3_hw_irqs.o 


# Each subdirectory must supply rules for building sources it contributes
service_libraries/edroomsl/edroombp/src/rtemsapi_5_1/rtems_5_1/leon3/%.o: ../service_libraries/edroomsl/edroombp/src/rtemsapi_5_1/rtems_5_1/leon3/%.c service_libraries/edroomsl/edroombp/src/rtemsapi_5_1/rtems_5_1/leon3/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	sparc-gaisler-rtems5-gcc -std=c99 -I/opt/rcc-1.3.2-gcc/sparc-gaisler-rtems5/leon3/lib/include -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/asw/components/systemmng/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/asw/components/systemmng/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/llsw/nexys_gpio_drv/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/llsw/leon3_uart_drv/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/asw/edroom_glue/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/service_libraries/edroomsl/edroombp/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/llsw/config/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/llsw/rtems_osswr/include" -O0 -g3 -Wall -c -fmessage-length=0 -mcpu=leon3 -qbsp=leon3 -msoft-float -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-service_libraries-2f-edroomsl-2f-edroombp-2f-src-2f-rtemsapi_5_1-2f-rtems_5_1-2f-leon3

clean-service_libraries-2f-edroomsl-2f-edroombp-2f-src-2f-rtemsapi_5_1-2f-rtems_5_1-2f-leon3:
	-$(RM) ./service_libraries/edroomsl/edroombp/src/rtemsapi_5_1/rtems_5_1/leon3/leon3_hw_irqs.d ./service_libraries/edroomsl/edroombp/src/rtemsapi_5_1/rtems_5_1/leon3/leon3_hw_irqs.o

.PHONY: clean-service_libraries-2f-edroomsl-2f-edroombp-2f-src-2f-rtemsapi_5_1-2f-rtems_5_1-2f-leon3

