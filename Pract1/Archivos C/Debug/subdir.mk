################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../examplenexys_mmesp_project.cpp 

CPP_DEPS += \
./examplenexys_mmesp_project.d 

OBJS += \
./examplenexys_mmesp_project.o 


# Each subdirectory must supply rules for building sources it contributes
%.o: ../%.cpp subdir.mk
	@echo 'Building file: $<'
	@echo 'Invoking: Cross G++ Compiler'
	sparc-gaisler-rtems5-g++ -I/opt/rcc-1.3.2-gcc/sparc-gaisler-rtems5/leon3/lib/include -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/llsw/nexys_gpio_drv/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/llsw/leon3_uart_drv/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/asw/edroom_glue/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/service_libraries/edroomsl/edroombp/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/asw/components/ccdisplaysmng/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/asw/components/ccledmng/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/asw/components/ccsystemmng/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/asw/components/examplenexys/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/service_libraries/edroomsl/edroomsl/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/service_libraries/edroomsl/edroomsl_types/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/llsw/config/include" -I"/home/atcsol/git/Sergio-Alcocer-OBDH/Pract1/Archivos C/llsw/rtems_osswr/include" -O0 -g3 -Wall -c -fmessage-length=0 -mcpu=leon3 -qbsp=leon3 -msoft-float -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


clean: clean--2e-

clean--2e-:
	-$(RM) ./examplenexys_mmesp_project.d ./examplenexys_mmesp_project.o

.PHONY: clean--2e-

