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
ifeq "$(wildcard nbproject/Makefile-local-DebugWire.mk)" "nbproject/Makefile-local-DebugWire.mk"
include nbproject/Makefile-local-DebugWire.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=DebugWire
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/DisplayTest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/DisplayTest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=main.c ssd1306.c twi.c Timer.c Timer0.c UART.c ExternalInterrupt.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/main.o ${OBJECTDIR}/ssd1306.o ${OBJECTDIR}/twi.o ${OBJECTDIR}/Timer.o ${OBJECTDIR}/Timer0.o ${OBJECTDIR}/UART.o ${OBJECTDIR}/ExternalInterrupt.o
POSSIBLE_DEPFILES=${OBJECTDIR}/main.o.d ${OBJECTDIR}/ssd1306.o.d ${OBJECTDIR}/twi.o.d ${OBJECTDIR}/Timer.o.d ${OBJECTDIR}/Timer0.o.d ${OBJECTDIR}/UART.o.d ${OBJECTDIR}/ExternalInterrupt.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/main.o ${OBJECTDIR}/ssd1306.o ${OBJECTDIR}/twi.o ${OBJECTDIR}/Timer.o ${OBJECTDIR}/Timer0.o ${OBJECTDIR}/UART.o ${OBJECTDIR}/ExternalInterrupt.o

# Source Files
SOURCEFILES=main.c ssd1306.c twi.c Timer.c Timer0.c UART.c ExternalInterrupt.c



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
	${MAKE}  -f nbproject/Makefile-DebugWire.mk ${DISTDIR}/DisplayTest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=ATmega328PB
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/main.o: main.c  .generated_files/flags/DebugWire/3e5b6a354f73fc595197b6a142b3ba041d6f0ca1 .generated_files/flags/DebugWire/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_DebugWire=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/ssd1306.o: ssd1306.c  .generated_files/flags/DebugWire/7adc49e88f554b0b5a1d3af336e95ffd351adf28 .generated_files/flags/DebugWire/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ssd1306.o.d 
	@${RM} ${OBJECTDIR}/ssd1306.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_DebugWire=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/ssd1306.o.d" -MT "${OBJECTDIR}/ssd1306.o.d" -MT ${OBJECTDIR}/ssd1306.o -o ${OBJECTDIR}/ssd1306.o ssd1306.c 
	
${OBJECTDIR}/twi.o: twi.c  .generated_files/flags/DebugWire/5a297421dce536f24ad832d6cbbe06ca00525fe8 .generated_files/flags/DebugWire/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/twi.o.d 
	@${RM} ${OBJECTDIR}/twi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_DebugWire=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/twi.o.d" -MT "${OBJECTDIR}/twi.o.d" -MT ${OBJECTDIR}/twi.o -o ${OBJECTDIR}/twi.o twi.c 
	
${OBJECTDIR}/Timer.o: Timer.c  .generated_files/flags/DebugWire/851585b88e771bfd29fcf8b05ea10efe12f7904a .generated_files/flags/DebugWire/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Timer.o.d 
	@${RM} ${OBJECTDIR}/Timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_DebugWire=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/Timer.o.d" -MT "${OBJECTDIR}/Timer.o.d" -MT ${OBJECTDIR}/Timer.o -o ${OBJECTDIR}/Timer.o Timer.c 
	
${OBJECTDIR}/Timer0.o: Timer0.c  .generated_files/flags/DebugWire/bed4ffb5c1b07a04470f6c0e786f2a4c97eb7868 .generated_files/flags/DebugWire/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Timer0.o.d 
	@${RM} ${OBJECTDIR}/Timer0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_DebugWire=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/Timer0.o.d" -MT "${OBJECTDIR}/Timer0.o.d" -MT ${OBJECTDIR}/Timer0.o -o ${OBJECTDIR}/Timer0.o Timer0.c 
	
${OBJECTDIR}/UART.o: UART.c  .generated_files/flags/DebugWire/9f5fefbd1ef955e74dd21ff4b89ab97974f04c12 .generated_files/flags/DebugWire/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/UART.o.d 
	@${RM} ${OBJECTDIR}/UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_DebugWire=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/UART.o.d" -MT "${OBJECTDIR}/UART.o.d" -MT ${OBJECTDIR}/UART.o -o ${OBJECTDIR}/UART.o UART.c 
	
${OBJECTDIR}/ExternalInterrupt.o: ExternalInterrupt.c  .generated_files/flags/DebugWire/841928c0885fd5ca85c02cf01ea4c413993e964f .generated_files/flags/DebugWire/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ExternalInterrupt.o.d 
	@${RM} ${OBJECTDIR}/ExternalInterrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -D__DEBUG=1 -g -DDEBUG  -gdwarf-2  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_DebugWire=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/ExternalInterrupt.o.d" -MT "${OBJECTDIR}/ExternalInterrupt.o.d" -MT ${OBJECTDIR}/ExternalInterrupt.o -o ${OBJECTDIR}/ExternalInterrupt.o ExternalInterrupt.c 
	
else
${OBJECTDIR}/main.o: main.c  .generated_files/flags/DebugWire/d35a7940df470560dcc2c5b2a7cce95312a30ae7 .generated_files/flags/DebugWire/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/main.o.d 
	@${RM} ${OBJECTDIR}/main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_DebugWire=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/main.o.d" -MT "${OBJECTDIR}/main.o.d" -MT ${OBJECTDIR}/main.o -o ${OBJECTDIR}/main.o main.c 
	
${OBJECTDIR}/ssd1306.o: ssd1306.c  .generated_files/flags/DebugWire/4ec90526b72f3147230b2fe79eda5d375fd65b2 .generated_files/flags/DebugWire/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ssd1306.o.d 
	@${RM} ${OBJECTDIR}/ssd1306.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_DebugWire=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/ssd1306.o.d" -MT "${OBJECTDIR}/ssd1306.o.d" -MT ${OBJECTDIR}/ssd1306.o -o ${OBJECTDIR}/ssd1306.o ssd1306.c 
	
${OBJECTDIR}/twi.o: twi.c  .generated_files/flags/DebugWire/8716a826fb4c59f5a113d65aa51eb67efad4d05e .generated_files/flags/DebugWire/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/twi.o.d 
	@${RM} ${OBJECTDIR}/twi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_DebugWire=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/twi.o.d" -MT "${OBJECTDIR}/twi.o.d" -MT ${OBJECTDIR}/twi.o -o ${OBJECTDIR}/twi.o twi.c 
	
${OBJECTDIR}/Timer.o: Timer.c  .generated_files/flags/DebugWire/87b1fdbaf6560832d768c7be556bf90f68204538 .generated_files/flags/DebugWire/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Timer.o.d 
	@${RM} ${OBJECTDIR}/Timer.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_DebugWire=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/Timer.o.d" -MT "${OBJECTDIR}/Timer.o.d" -MT ${OBJECTDIR}/Timer.o -o ${OBJECTDIR}/Timer.o Timer.c 
	
${OBJECTDIR}/Timer0.o: Timer0.c  .generated_files/flags/DebugWire/d4be0f22907c46b2362fc1f94ca673fb50603df4 .generated_files/flags/DebugWire/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/Timer0.o.d 
	@${RM} ${OBJECTDIR}/Timer0.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_DebugWire=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/Timer0.o.d" -MT "${OBJECTDIR}/Timer0.o.d" -MT ${OBJECTDIR}/Timer0.o -o ${OBJECTDIR}/Timer0.o Timer0.c 
	
${OBJECTDIR}/UART.o: UART.c  .generated_files/flags/DebugWire/bd97351130e2e3910b8ccec47f48740c774929ba .generated_files/flags/DebugWire/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/UART.o.d 
	@${RM} ${OBJECTDIR}/UART.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_DebugWire=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/UART.o.d" -MT "${OBJECTDIR}/UART.o.d" -MT ${OBJECTDIR}/UART.o -o ${OBJECTDIR}/UART.o UART.c 
	
${OBJECTDIR}/ExternalInterrupt.o: ExternalInterrupt.c  .generated_files/flags/DebugWire/6d7f6f0d66c19392599e72cc2b49fc49e4f341a0 .generated_files/flags/DebugWire/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/ExternalInterrupt.o.d 
	@${RM} ${OBJECTDIR}/ExternalInterrupt.o 
	${MP_CC} $(MP_EXTRA_CC_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -c  -x c -D__$(MP_PROCESSOR_OPTION)__   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -DXPRJ_DebugWire=$(CND_CONF)  $(COMPARISON_BUILD)  -gdwarf-3 -mno-const-data-in-progmem     -MD -MP -MF "${OBJECTDIR}/ExternalInterrupt.o.d" -MT "${OBJECTDIR}/ExternalInterrupt.o.d" -MT ${OBJECTDIR}/ExternalInterrupt.o -o ${OBJECTDIR}/ExternalInterrupt.o ExternalInterrupt.c 
	
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
${DISTDIR}/DisplayTest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/DisplayTest.X.${IMAGE_TYPE}.map  -D__DEBUG=1  -DXPRJ_DebugWire=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"   -gdwarf-2 -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/DisplayTest.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/DisplayTest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group  -Wl,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1
	@${RM} ${DISTDIR}/DisplayTest.X.${IMAGE_TYPE}.hex 
	
	
else
${DISTDIR}/DisplayTest.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -mcpu=$(MP_PROCESSOR_OPTION) -Wl,-Map=${DISTDIR}/DisplayTest.X.${IMAGE_TYPE}.map  -DXPRJ_DebugWire=$(CND_CONF)  -Wl,--defsym=__MPLAB_BUILD=1   -mdfp="${DFP_DIR}/xc8"  -Wl,--gc-sections -O0 -ffunction-sections -fdata-sections -fshort-enums -fno-common -funsigned-char -funsigned-bitfields -Wall -gdwarf-3 -mno-const-data-in-progmem     $(COMPARISON_BUILD) -Wl,--memorysummary,${DISTDIR}/memoryfile.xml -o ${DISTDIR}/DisplayTest.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  -o ${DISTDIR}/DisplayTest.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -Wl,--start-group  -Wl,-lm -Wl,--end-group 
	${MP_CC_DIR}\\avr-objcopy -O ihex "${DISTDIR}/DisplayTest.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}" "${DISTDIR}/DisplayTest.X.${IMAGE_TYPE}.hex"
	
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

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
