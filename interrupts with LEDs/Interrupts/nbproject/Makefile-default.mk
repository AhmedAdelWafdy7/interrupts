#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/key_pad.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/key_pad.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=ecu_layer/Chr_Lcd/ecu_chr_lcd.c ecu_layer/ecu_keypad.c ecu_layer/ecu_layer_init.c mcal_layer/gpio_layer/hal_gpio.c mcal_layer/interrupt/mcal_internal_interrupt.c mcal_layer/interrupt/mcal_external_interrupt.c mcal_layer/interrupt/mcal_interrupt_manager.c mcal_layer/device_config.c application.c ecu_layer/led/ecu_led.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/ecu_layer/Chr_Lcd/ecu_chr_lcd.p1 ${OBJECTDIR}/ecu_layer/ecu_keypad.p1 ${OBJECTDIR}/ecu_layer/ecu_layer_init.p1 ${OBJECTDIR}/mcal_layer/gpio_layer/hal_gpio.p1 ${OBJECTDIR}/mcal_layer/interrupt/mcal_internal_interrupt.p1 ${OBJECTDIR}/mcal_layer/interrupt/mcal_external_interrupt.p1 ${OBJECTDIR}/mcal_layer/interrupt/mcal_interrupt_manager.p1 ${OBJECTDIR}/mcal_layer/device_config.p1 ${OBJECTDIR}/application.p1 ${OBJECTDIR}/ecu_layer/led/ecu_led.p1
POSSIBLE_DEPFILES=${OBJECTDIR}/ecu_layer/Chr_Lcd/ecu_chr_lcd.p1.d ${OBJECTDIR}/ecu_layer/ecu_keypad.p1.d ${OBJECTDIR}/ecu_layer/ecu_layer_init.p1.d ${OBJECTDIR}/mcal_layer/gpio_layer/hal_gpio.p1.d ${OBJECTDIR}/mcal_layer/interrupt/mcal_internal_interrupt.p1.d ${OBJECTDIR}/mcal_layer/interrupt/mcal_external_interrupt.p1.d ${OBJECTDIR}/mcal_layer/interrupt/mcal_interrupt_manager.p1.d ${OBJECTDIR}/mcal_layer/device_config.p1.d ${OBJECTDIR}/application.p1.d ${OBJECTDIR}/ecu_layer/led/ecu_led.p1.d

# Object Files
OBJECTFILES=${OBJECTDIR}/ecu_layer/Chr_Lcd/ecu_chr_lcd.p1 ${OBJECTDIR}/ecu_layer/ecu_keypad.p1 ${OBJECTDIR}/ecu_layer/ecu_layer_init.p1 ${OBJECTDIR}/mcal_layer/gpio_layer/hal_gpio.p1 ${OBJECTDIR}/mcal_layer/interrupt/mcal_internal_interrupt.p1 ${OBJECTDIR}/mcal_layer/interrupt/mcal_external_interrupt.p1 ${OBJECTDIR}/mcal_layer/interrupt/mcal_interrupt_manager.p1 ${OBJECTDIR}/mcal_layer/device_config.p1 ${OBJECTDIR}/application.p1 ${OBJECTDIR}/ecu_layer/led/ecu_led.p1

# Source Files
SOURCEFILES=ecu_layer/Chr_Lcd/ecu_chr_lcd.c ecu_layer/ecu_keypad.c ecu_layer/ecu_layer_init.c mcal_layer/gpio_layer/hal_gpio.c mcal_layer/interrupt/mcal_internal_interrupt.c mcal_layer/interrupt/mcal_external_interrupt.c mcal_layer/interrupt/mcal_interrupt_manager.c mcal_layer/device_config.c application.c ecu_layer/led/ecu_led.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/key_pad.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=18F4520
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/ecu_layer/Chr_Lcd/ecu_chr_lcd.p1: ecu_layer/Chr_Lcd/ecu_chr_lcd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ecu_layer/Chr_Lcd" 
	@${RM} ${OBJECTDIR}/ecu_layer/Chr_Lcd/ecu_chr_lcd.p1.d 
	@${RM} ${OBJECTDIR}/ecu_layer/Chr_Lcd/ecu_chr_lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ecu_layer/Chr_Lcd/ecu_chr_lcd.p1 ecu_layer/Chr_Lcd/ecu_chr_lcd.c 
	@-${MV} ${OBJECTDIR}/ecu_layer/Chr_Lcd/ecu_chr_lcd.d ${OBJECTDIR}/ecu_layer/Chr_Lcd/ecu_chr_lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ecu_layer/Chr_Lcd/ecu_chr_lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ecu_layer/ecu_keypad.p1: ecu_layer/ecu_keypad.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ecu_layer" 
	@${RM} ${OBJECTDIR}/ecu_layer/ecu_keypad.p1.d 
	@${RM} ${OBJECTDIR}/ecu_layer/ecu_keypad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ecu_layer/ecu_keypad.p1 ecu_layer/ecu_keypad.c 
	@-${MV} ${OBJECTDIR}/ecu_layer/ecu_keypad.d ${OBJECTDIR}/ecu_layer/ecu_keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ecu_layer/ecu_keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ecu_layer/ecu_layer_init.p1: ecu_layer/ecu_layer_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ecu_layer" 
	@${RM} ${OBJECTDIR}/ecu_layer/ecu_layer_init.p1.d 
	@${RM} ${OBJECTDIR}/ecu_layer/ecu_layer_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ecu_layer/ecu_layer_init.p1 ecu_layer/ecu_layer_init.c 
	@-${MV} ${OBJECTDIR}/ecu_layer/ecu_layer_init.d ${OBJECTDIR}/ecu_layer/ecu_layer_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ecu_layer/ecu_layer_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/gpio_layer/hal_gpio.p1: mcal_layer/gpio_layer/hal_gpio.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/gpio_layer" 
	@${RM} ${OBJECTDIR}/mcal_layer/gpio_layer/hal_gpio.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/gpio_layer/hal_gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/gpio_layer/hal_gpio.p1 mcal_layer/gpio_layer/hal_gpio.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/gpio_layer/hal_gpio.d ${OBJECTDIR}/mcal_layer/gpio_layer/hal_gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/gpio_layer/hal_gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/interrupt/mcal_internal_interrupt.p1: mcal_layer/interrupt/mcal_internal_interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/interrupt" 
	@${RM} ${OBJECTDIR}/mcal_layer/interrupt/mcal_internal_interrupt.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/interrupt/mcal_internal_interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/interrupt/mcal_internal_interrupt.p1 mcal_layer/interrupt/mcal_internal_interrupt.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/interrupt/mcal_internal_interrupt.d ${OBJECTDIR}/mcal_layer/interrupt/mcal_internal_interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/interrupt/mcal_internal_interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/interrupt/mcal_external_interrupt.p1: mcal_layer/interrupt/mcal_external_interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/interrupt" 
	@${RM} ${OBJECTDIR}/mcal_layer/interrupt/mcal_external_interrupt.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/interrupt/mcal_external_interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/interrupt/mcal_external_interrupt.p1 mcal_layer/interrupt/mcal_external_interrupt.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/interrupt/mcal_external_interrupt.d ${OBJECTDIR}/mcal_layer/interrupt/mcal_external_interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/interrupt/mcal_external_interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/interrupt/mcal_interrupt_manager.p1: mcal_layer/interrupt/mcal_interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/interrupt" 
	@${RM} ${OBJECTDIR}/mcal_layer/interrupt/mcal_interrupt_manager.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/interrupt/mcal_interrupt_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/interrupt/mcal_interrupt_manager.p1 mcal_layer/interrupt/mcal_interrupt_manager.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/interrupt/mcal_interrupt_manager.d ${OBJECTDIR}/mcal_layer/interrupt/mcal_interrupt_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/interrupt/mcal_interrupt_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/device_config.p1: mcal_layer/device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer" 
	@${RM} ${OBJECTDIR}/mcal_layer/device_config.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/device_config.p1 mcal_layer/device_config.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/device_config.d ${OBJECTDIR}/mcal_layer/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/application.p1: application.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.p1.d 
	@${RM} ${OBJECTDIR}/application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/application.p1 application.c 
	@-${MV} ${OBJECTDIR}/application.d ${OBJECTDIR}/application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ecu_layer/led/ecu_led.p1: ecu_layer/led/ecu_led.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ecu_layer/led" 
	@${RM} ${OBJECTDIR}/ecu_layer/led/ecu_led.p1.d 
	@${RM} ${OBJECTDIR}/ecu_layer/led/ecu_led.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1  -mdebugger=pickit3   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ecu_layer/led/ecu_led.p1 ecu_layer/led/ecu_led.c 
	@-${MV} ${OBJECTDIR}/ecu_layer/led/ecu_led.d ${OBJECTDIR}/ecu_layer/led/ecu_led.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ecu_layer/led/ecu_led.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
else
${OBJECTDIR}/ecu_layer/Chr_Lcd/ecu_chr_lcd.p1: ecu_layer/Chr_Lcd/ecu_chr_lcd.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ecu_layer/Chr_Lcd" 
	@${RM} ${OBJECTDIR}/ecu_layer/Chr_Lcd/ecu_chr_lcd.p1.d 
	@${RM} ${OBJECTDIR}/ecu_layer/Chr_Lcd/ecu_chr_lcd.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ecu_layer/Chr_Lcd/ecu_chr_lcd.p1 ecu_layer/Chr_Lcd/ecu_chr_lcd.c 
	@-${MV} ${OBJECTDIR}/ecu_layer/Chr_Lcd/ecu_chr_lcd.d ${OBJECTDIR}/ecu_layer/Chr_Lcd/ecu_chr_lcd.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ecu_layer/Chr_Lcd/ecu_chr_lcd.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ecu_layer/ecu_keypad.p1: ecu_layer/ecu_keypad.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ecu_layer" 
	@${RM} ${OBJECTDIR}/ecu_layer/ecu_keypad.p1.d 
	@${RM} ${OBJECTDIR}/ecu_layer/ecu_keypad.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ecu_layer/ecu_keypad.p1 ecu_layer/ecu_keypad.c 
	@-${MV} ${OBJECTDIR}/ecu_layer/ecu_keypad.d ${OBJECTDIR}/ecu_layer/ecu_keypad.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ecu_layer/ecu_keypad.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ecu_layer/ecu_layer_init.p1: ecu_layer/ecu_layer_init.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ecu_layer" 
	@${RM} ${OBJECTDIR}/ecu_layer/ecu_layer_init.p1.d 
	@${RM} ${OBJECTDIR}/ecu_layer/ecu_layer_init.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ecu_layer/ecu_layer_init.p1 ecu_layer/ecu_layer_init.c 
	@-${MV} ${OBJECTDIR}/ecu_layer/ecu_layer_init.d ${OBJECTDIR}/ecu_layer/ecu_layer_init.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ecu_layer/ecu_layer_init.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/gpio_layer/hal_gpio.p1: mcal_layer/gpio_layer/hal_gpio.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/gpio_layer" 
	@${RM} ${OBJECTDIR}/mcal_layer/gpio_layer/hal_gpio.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/gpio_layer/hal_gpio.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/gpio_layer/hal_gpio.p1 mcal_layer/gpio_layer/hal_gpio.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/gpio_layer/hal_gpio.d ${OBJECTDIR}/mcal_layer/gpio_layer/hal_gpio.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/gpio_layer/hal_gpio.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/interrupt/mcal_internal_interrupt.p1: mcal_layer/interrupt/mcal_internal_interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/interrupt" 
	@${RM} ${OBJECTDIR}/mcal_layer/interrupt/mcal_internal_interrupt.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/interrupt/mcal_internal_interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/interrupt/mcal_internal_interrupt.p1 mcal_layer/interrupt/mcal_internal_interrupt.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/interrupt/mcal_internal_interrupt.d ${OBJECTDIR}/mcal_layer/interrupt/mcal_internal_interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/interrupt/mcal_internal_interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/interrupt/mcal_external_interrupt.p1: mcal_layer/interrupt/mcal_external_interrupt.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/interrupt" 
	@${RM} ${OBJECTDIR}/mcal_layer/interrupt/mcal_external_interrupt.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/interrupt/mcal_external_interrupt.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/interrupt/mcal_external_interrupt.p1 mcal_layer/interrupt/mcal_external_interrupt.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/interrupt/mcal_external_interrupt.d ${OBJECTDIR}/mcal_layer/interrupt/mcal_external_interrupt.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/interrupt/mcal_external_interrupt.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/interrupt/mcal_interrupt_manager.p1: mcal_layer/interrupt/mcal_interrupt_manager.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer/interrupt" 
	@${RM} ${OBJECTDIR}/mcal_layer/interrupt/mcal_interrupt_manager.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/interrupt/mcal_interrupt_manager.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/interrupt/mcal_interrupt_manager.p1 mcal_layer/interrupt/mcal_interrupt_manager.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/interrupt/mcal_interrupt_manager.d ${OBJECTDIR}/mcal_layer/interrupt/mcal_interrupt_manager.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/interrupt/mcal_interrupt_manager.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/mcal_layer/device_config.p1: mcal_layer/device_config.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/mcal_layer" 
	@${RM} ${OBJECTDIR}/mcal_layer/device_config.p1.d 
	@${RM} ${OBJECTDIR}/mcal_layer/device_config.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/mcal_layer/device_config.p1 mcal_layer/device_config.c 
	@-${MV} ${OBJECTDIR}/mcal_layer/device_config.d ${OBJECTDIR}/mcal_layer/device_config.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/mcal_layer/device_config.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/application.p1: application.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/application.p1.d 
	@${RM} ${OBJECTDIR}/application.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/application.p1 application.c 
	@-${MV} ${OBJECTDIR}/application.d ${OBJECTDIR}/application.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/application.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
${OBJECTDIR}/ecu_layer/led/ecu_led.p1: ecu_layer/led/ecu_led.c  nbproject/Makefile-${CND_CONF}.mk 
	@${MKDIR} "${OBJECTDIR}/ecu_layer/led" 
	@${RM} ${OBJECTDIR}/ecu_layer/led/ecu_led.p1.d 
	@${RM} ${OBJECTDIR}/ecu_layer/led/ecu_led.p1 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -DXPRJ_default=$(CND_CONF)  -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits $(COMPARISON_BUILD)  -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -o ${OBJECTDIR}/ecu_layer/led/ecu_led.p1 ecu_layer/led/ecu_led.c 
	@-${MV} ${OBJECTDIR}/ecu_layer/led/ecu_led.d ${OBJECTDIR}/ecu_layer/led/ecu_led.p1.d 
	@${FIXDEPS} ${OBJECTDIR}/ecu_layer/led/ecu_led.p1.d $(SILENT) -rsi ${MP_CC_DIR}../  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/key_pad.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/key_pad.${IMAGE_TYPE}.map  -D__DEBUG=1  -mdebugger=pickit3  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     -mrom=default,-7dc0-7fff -mram=default,-5f4-5ff,-f9c-f9c,-fd4-fd4,-fdb-fdf,-fe3-fe7,-feb-fef,-ffd-fff  $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/key_pad.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	@${RM} ${DISTDIR}/key_pad.${IMAGE_TYPE}.hex 
	
else
${DISTDIR}/key_pad.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/key_pad.${IMAGE_TYPE}.map  -DXPRJ_default=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -fno-short-double -fno-short-float -memi=wordwrite -O0 -fasmfile -maddrqual=ignore -xassembler-with-cpp -mwarn=-3 -Wa,-a -msummary=-psect,-class,+mem,-hex,-file  -ginhx32 -Wl,--data-init -mno-keep-startup -mno-download -mdefault-config-bits -std=c99 -gdwarf-3 -mstack=compiled:auto:auto:auto     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/key_pad.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}     
	
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
