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
	sparc-gaisler-rtems5-g++ -I/opt/rcc-1.3.2-gcc/sparc-gaisler-rtems5/leon3/lib/include -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/llsw/emu_watchdog_drv/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/llsw/device_drv/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/asw/components/uah_asw/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/asw/components/cctcmanager/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/asw/edroom_glue/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/asw/dataclasses/CDTCExecCtrl/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/asw/dataclasses/CDTCAcceptReport/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/asw/dataclasses/CDTCMemDescriptor/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/asw/dataclasses/CDEvAction/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/asw/dataclasses/CDTCHandler/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/service_libraries/pus_services/pus_sys_data_pool/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/service_libraries/pus_services/pus_tm_handler/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/service_libraries/pus_services/pus_service17/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/service_libraries/pus_services/pus_service01/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/service_libraries/pus_services/pus_tc_handler/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/service_libraries/pus_services/pus_tc_accept_report/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/service_libraries/pus_services/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/service_libraries/crc/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/service_libraries/ccsds_pus/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/service_libraries/serialize/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/service_libraries/edroomsl/edroombp/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/service_libraries/edroomsl/edroomsl/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/service_libraries/edroomsl/edroomsl_types/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/llsw/emu_gss/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/llsw/emu_adc_drv/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/llsw/emu_hw_timecode_drv/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/llsw/tc_rate_ctrl/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/llsw/tc_queue_drv/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/llsw/config/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/llsw/obt_drv/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/llsw/sc_channel_drv/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/llsw/emu_sc_channel_drv/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/llsw/tmtc_dyn_mem/include" -I"/home/opolo70/OBDH_2026-workspace/asw_pus_rtems_5_0_leon3_st01_st17_2026/llsw/rtems_osswr/include" -O0 -g3 -Wall -c -fmessage-length=0 -mcpu=leon3 -qbsp=leon3 -msoft-float -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean-asw-2f-edroom_glue-2f-src

clean-asw-2f-edroom_glue-2f-src:
	-$(RM) ./asw/edroom_glue/src/edroomdeployment.d ./asw/edroom_glue/src/edroomdeployment.o

.PHONY: clean-asw-2f-edroom_glue-2f-src

