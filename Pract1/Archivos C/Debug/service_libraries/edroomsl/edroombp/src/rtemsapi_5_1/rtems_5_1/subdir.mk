################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../service_libraries/edroomsl/edroombp/src/rtemsapi_5_1/rtems_5_1/edroombp.cpp 

CPP_DEPS += \
./service_libraries/edroomsl/edroombp/src/rtemsapi_5_1/rtems_5_1/edroombp.d 

OBJS += \
./service_libraries/edroomsl/edroombp/src/rtemsapi_5_1/rtems_5_1/edroombp.o 


# Each subdirectory must supply rules for building sources it contributes
service_libraries/edroomsl/edroombp/src/rtemsapi_5_1/rtems_5_1/%.o: ../service_libraries/edroomsl/edroombp/src/rtemsapi_5_1/rtems_5_1/%.cpp service_libraries/edroomsl/edroombp/src/rtemsapi_5_1/rtems_5_1/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	sparc-gaisler-rtems5-g++ -I/opt/rcc-1.3.2-gcc/sparc-gaisler-rtems5/leon3/lib/include -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/llsw/nexys_gpio_drv/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/llsw/leon3_uart_drv/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/asw/edroom_glue/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/service_libraries/edroomsl/edroombp/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/asw/components/ccdisplaysmng/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/asw/components/ccledmng/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/asw/components/ccsystemmng/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/asw/components/examplenexys/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/service_libraries/edroomsl/edroomsl/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/service_libraries/edroomsl/edroomsl_types/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/llsw/config/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/llsw/rtems_osswr/include" -O0 -g3 -Wall -c -fmessage-length=0 -mcpu=leon3 -qbsp=leon3 -msoft-float -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-service_libraries-2f-edroomsl-2f-edroombp-2f-src-2f-rtemsapi_5_1-2f-rtems_5_1

clean-service_libraries-2f-edroomsl-2f-edroombp-2f-src-2f-rtemsapi_5_1-2f-rtems_5_1:
	-$(RM) ./service_libraries/edroomsl/edroombp/src/rtemsapi_5_1/rtems_5_1/edroombp.d ./service_libraries/edroomsl/edroombp/src/rtemsapi_5_1/rtems_5_1/edroombp.o

.PHONY: clean-service_libraries-2f-edroomsl-2f-edroombp-2f-src-2f-rtemsapi_5_1-2f-rtems_5_1

