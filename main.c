/*
 * PointerUsage.c
 *
 * Created: 30-04-2020 14:11:58
 * Author : ltpe
 */ 
#define DisplayTestCode

#include <avr/io.h>
#include <stdbool.h>
#include <avr/interrupt.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>

#include "ProjectDefines.h"
#include "ssd1306.h"
#include "UART.h"
#include "Timer.h"
#include "Timer0.h"
#include "ExternalInterrupt.h"

static volatile uint8_t DisplaySetupTimeInRAM;
static volatile uint8_t ExternalInterruptLockoutTimeInRAM;
static volatile bool GoBackToInitStateOnTypeErrorsInRAM;

static volatile StateMachineStates StateMachineState = STATE_MACHINE_RECEIVING_ADDRESS;
static volatile bool PrintOutInfo = false;
static volatile AddressStruct ThisAddressStruct;
static volatile DisplayTimeSetupTimeStruct ThisDisplayTimeSetupTimeStruct;
static volatile ExternalInterruptLockoutTimeStruct ThisExternalInterruptLockoutTimeStruct;

static volatile uint8_t I2CAddress = SSD1306_ADDR;
static volatile uint8_t I2CDisplayStatus = SSD1306_SUCCESS;
static volatile uint8_t I2CDisplayStatusOperation = SSD1306_SUCCESS;
static volatile bool I2CDisplayErrorFound = false;

static volatile bool DisplayStartUpWaitTime = false;
static volatile bool DisplayErrorTestTimeout = false;

static volatile uint32_t NumberOfTimerInterrupts = 0;

static volatile uint16_t NumberOfExternalInterruptsOnPin0 = 0;
static volatile uint16_t NumberOfExternalInterruptsOnPin0FromCallback = 0;

char TimerCounterString[6];
char InterruptCounterString[6];

void TreatUartReceivedCharAccordingToState(char InputChar)
{
    
}

void ReceiveTimeOutValueCounterInit(uint32_t TimeOutValueCounter)
{
	DisplaySetupTimeInRAM--;
		
	if (0 == DisplaySetupTimeInRAM)
	{
		Disable_Timer0_Overflow_Interrupt();
		PORTB &= ~(YellowLedBitValue);
		DisplayStartUpWaitTime = true;
	}
	else
	{
		printf("%d sekunder tilbage til Adafruit Display Opstart\n", DisplaySetupTimeInRAM);
	}
}

void ReceiveTimeoutValueErrorTest(uint32_t TimeOutValueCounter)
{
	DisplayErrorTestTimeout = true;
}

void ReceiveTimerSecondsValue(uint32_t TimeOutValueCounter)
{
    NumberOfTimerInterrupts = TimeOutValueCounter;
    PrintOutInfo = true;
}

void PrintDisplayCodeOnUART(uint8_t DisplayCode)
{
	char DisplayCodeString[MaxCharactersInDisplayInformationString];
	
	sprintf(DisplayCodeString, "0x%x", DisplayCode);
	printf("Display Code : %s\n", DisplayCodeString);
}

void TestI2CDisplayStatus(uint8_t I2CDisplayStatus)
{
    if (SSD1306_SUCCESS != I2CDisplayStatus)
    {
        PrintDisplayCodeOnUART(I2CDisplayStatus);
    }
}

ISR(TWI0_vect)
{
	static volatile uint8_t test = 10;
}

void ExternalInterruptFunction_0(uint16_t NumberOfExternalInterruptsOnPin0FromCallbackHere)
{
	NumberOfExternalInterruptsOnPin0++;
	NumberOfExternalInterruptsOnPin0FromCallback = NumberOfExternalInterruptsOnPin0FromCallbackHere;
	PrintOutInfo = true;
}

int setup(void){
	AttachAndEnableExternalInterrupt(EXTERNAL_INTERRUPT_0, ExternalInterruptFunction_0, FALLING_EDGE_GENERATE_INTERRUPT);
    
	DDRB |= YellowLedBitValue;
	RS232Init();
    
	
	DisplaySetupTimeInRAM = TimeoutValueInSecondsForAdafruitDisplatToStartup;;
	printf("\nVenter i %d sekunder på Adafruit Display Opstart\n", DisplaySetupTimeInRAM);
	
	sei(); // Enable the Global Interrupt Enable flag so that interrupts can be processed
	
	if (DisplaySetupTimeInRAM > 0)
	{
		Setup_Timer0_Overflow_Interrupt(VariableValue1SecValue8Bit, ReceiveTimeOutValueCounterInit);
		Enable_Timer0_Overflow_Interrupt();
		
		while (false == DisplayStartUpWaitTime)
		{
			// Wait here for the specified time in ProjectDefined.h before trying
			// to start up the AdaFruit Display.
			// I we try to start up the AdaFruit Display to soon after initialization
			// we might face some problems !!!
		}
	}
	
	SetupUARTFunctionCallbackPointer(TreatUartReceivedCharAccordingToState);
	Enable_UART_Receive_Interrupt();
	
	printf("\n\nNu starter vi med at teste Displayet !!!\n");
	
	Setup_Timer0_Overflow_Interrupt(VariableValue1SecValue8Bit, ReceiveTimeoutValueErrorTest);
	Enable_Timer0_Overflow_Interrupt();
	do 
	{
		DisplayErrorTestTimeout = false;
		
		while (false == DisplayErrorTestTimeout)
		{
			// Wait here for the specified time in ProjectDefined.h before trying
			// to start up the AdaFruit Display.
			// I we try to start up the AdaFruit Display to soon after initialization
			// we might face some problems !!!
		}
		I2CDisplayStatus = SSD1306_Init(I2CAddress);
		if (SSD1306_SUCCESS != I2CDisplayStatus)
		{
			printf("Display NOT properly initialized !!!\n");
			PrintDisplayCodeOnUART(I2CDisplayStatus);
		}
		else
		{
			printf("Display properly initialized i DisplayTestCode !!!\n");
			PrintDisplayCodeOnUART(I2CDisplayStatus);
		}
	} while (SSD1306_SUCCESS != I2CDisplayStatus);
	Disable_Timer0_Overflow_Interrupt();
	
	I2CDisplayStatusOperation = SSD1306_ClearScreen();
    if (SSD1306_SUCCESS != I2CDisplayStatusOperation)
    {
        printf("Fejl ved funktionen : SSD1306_ClearScreen\n");
        PrintDisplayCodeOnUART(I2CDisplayStatusOperation);
        I2CDisplayErrorFound = true;
    }
    
    I2CDisplayStatusOperation = SSD1306_SetPosition(XCoordinateStartPositionInDisplay, AddressLineInDisplay);
    if (SSD1306_SUCCESS != I2CDisplayStatusOperation)
    {
        printf("Fejl ved funktionen : SSD1306_SetPosition(%d,%d)\n", XCoordinateStartPositionInDisplay, AddressLineInDisplay);
        PrintDisplayCodeOnUART(I2CDisplayStatusOperation);
        I2CDisplayErrorFound = true;
    }
    
    I2CDisplayStatusOperation = SSD1306_DrawString("h4pd011125 styrer", NORMAL);
    if (SSD1306_SUCCESS != I2CDisplayStatusOperation)
    {
        printf("Fejl ved funktionen : SSD1306_DrawString('Waiting !!!', NORMAL)\n");
        PrintDisplayCodeOnUART(I2CDisplayStatusOperation);
        I2CDisplayErrorFound = true;
    }

    if (false == I2CDisplayErrorFound)
    {
        printf("Display properly initialized og ingen fejl herefter !!!\n");
    }
    else
    {
        printf("Display properly initialized men fejl herefter !!!\n");
    }
    
    Setup_Timer0_Overflow_Interrupt(VariableValue1SecValue8Bit, ReceiveTimerSecondsValue);
	Enable_Timer0_Overflow_Interrupt();
    
}

int main(void){
    setup();
	/* Replace with your application code */
    while (1) 
    {
		if (true == PrintOutInfo)
        {
            PrintOutInfo = false;
            // Write timer interrupt on line 2 on Display
            I2CDisplayStatusOperation = SSD1306_SetPosition(XCoordinateStartPositionInDisplay, AddressLineInDisplay + 2);
            
            sprintf(TimerCounterString, "%d", NumberOfTimerInterrupts);
            I2CDisplayStatusOperation = SSD1306_DrawString(TimerCounterString, NORMAL);

            // Write interrupt from button connected to pin D2 on line 3 on Display
            I2CDisplayStatusOperation = SSD1306_SetPosition(XCoordinateStartPositionInDisplay, AddressLineInDisplay + 3);
            
            sprintf(InterruptCounterString,"%d", NumberOfExternalInterruptsOnPin0);
            I2CDisplayStatusOperation = SSD1306_DrawString(InterruptCounterString, NORMAL);
            
            // Write values to console. Visible in Hercules and XCTU
            printf("TimerCounter : %d\n", NumberOfTimerInterrupts);
            printf("InterruptCounter : %s\n", NumberOfExternalInterruptsOnPin0);
        }
    }
}

