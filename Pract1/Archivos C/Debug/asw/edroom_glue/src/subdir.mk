################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../asw/edroom_glue/src/edroomdeployment.cpp 

CPP_DEPS += \
./asw/edroom_glue/src/edroomdeployment.d 

OBJS += \
./asw/edroom_glue/src/edroomdeployment.o 


# Each subdirectory must supply rules for building sources it contributes
asw/edroom_glue/src/%.o: ../asw/edroom_glue/src/%.cpp asw/edroom_glue/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	sparc-gaisler-rtems5-g++ -I/opt/rcc-1.3.2-gcc/sparc-gaisler-rtems5/leon3/lib/include -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3/llsw/nexys_gpio_drv/include" -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3/llsw/leon3_uart_drv/include" -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3/asw/edroom_glue/include" -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3/service_libraries/edroomsl/edroombp/include" -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3/asw/components/ccdisplaysmng/include" -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3/asw/components/ccledmng/include" -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3/asw/components/ccsystemmng/include" -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3/asw/components/examplenexys/include" -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3/service_libraries/edroomsl/edroomsl/include" -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3/service_libraries/edroomsl/edroomsl_types/include" -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3/llsw/config/include" -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3/llsw/rtems_osswr/include" -O0 -g3 -Wall -c -fmessage-length=0 -mcpu=leon3 -qbsp=leon3 -msoft-float -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-asw-2f-edroom_glue-2f-src

clean-asw-2f-edroom_glue-2f-src:
	-$(RM) ./asw/edroom_glue/src/edroomdeployment.d ./asw/edroom_glue/src/edroomdeployment.o

.PHONY: clean-asw-2f-edroom_glue-2f-src

