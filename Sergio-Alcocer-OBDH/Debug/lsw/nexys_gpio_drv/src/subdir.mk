################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../lsw/nexys_gpio_drv/src/nexys_mutex_gpio_drv.cpp 

CPP_DEPS += \
./lsw/nexys_gpio_drv/src/nexys_mutex_gpio_drv.d 

OBJS += \
./lsw/nexys_gpio_drv/src/nexys_mutex_gpio_drv.o 


# Each subdirectory must supply rules for building sources it contributes
lsw/nexys_gpio_drv/src/%.o: ../lsw/nexys_gpio_drv/src/%.cpp lsw/nexys_gpio_drv/src/subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	sparc-gaisler-rtems5-g++ -I/opt/rcc-1.3.2-gcc/sparc-gaisler-rtems5/leon3/lib/include -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3_resuelto/asw/edroom_glue/include" -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3_resuelto/service_libraries/edroomsl/edroombp/include" -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3_resuelto/asw/components/ccdisplaysmng/include" -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3_resuelto/asw/components/ccledmng/include" -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3_resuelto/asw/components/ccsystemmng/include" -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3_resuelto/asw/components/examplenexys/include" -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3_resuelto/service_libraries/edroomsl/edroomsl/include" -I"/home/opolo70/OBDH_2026-workspace/edroom_ej1_nexys_rtems_5_0_leon3_resuelto/service_libraries/edroomsl/edroomsl_types/include" -O0 -g3 -Wall -c -fmessage-length=0 -mcpu=leon3 -qbsp=leon3 -msoft-float -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-lsw-2f-nexys_gpio_drv-2f-src

clean-lsw-2f-nexys_gpio_drv-2f-src:
	-$(RM) ./lsw/nexys_gpio_drv/src/nexys_mutex_gpio_drv.d ./lsw/nexys_gpio_drv/src/nexys_mutex_gpio_drv.o

.PHONY: clean-lsw-2f-nexys_gpio_drv-2f-src

