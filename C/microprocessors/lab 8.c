/*
 * lab_8.c
 *
 * Created: 4/8/2014 3:27:05 PM
 *  Author: Marc
 */ 

#include <stdio.h>
#include <stdlib.h>
#include <avr/io.h>
#include <avr/interrupt.h>
#include <math.h>
#include <avr/delay.h>
#include <util/delay.h>
#include "LCD_driver.h"

int delay(int perc);
int duty(int percent);

char str[100];
int prescale = 0x4;
int tcnt;
int total_time;
int revolutions;
int RPM;
int reset;

int x;
int y;

int main(void)
{
	    LCD_Init();// initialize LCD
		PCMSK1|= (1<<PINB7); //Set PIN7 on PORTB to activate interrupt
		EIMSK |= ((1<<PCIE1)); // Set PCIE1 for interrupt
		sei(); // set global interrupt bit
		
		DDRB |= 0x3f; //pins 6 and 7 inputs, rest outputs

		
	    		duty(80);//percent duty cycle, only accept multiples of 10 up to 100
		
	};
    
	int duty(int percent){ // this function takes the input parameter as the duty cycle.
		
		int off_perc = 100 - percent; // percent off
		int on_perc = percent; // perent on
		total_time = 0; // total running time
		revolutions = 0; // total revolutions so far 
		
		while(1){
			TCNT0 = 0x00; // set TCNT0 to maximum count
			TCCR0A = prescale; //set the prescale in the global variables
			x = 0; 
		total_time++; //should increment once every second
		RPM = (revolutions * 6) / (total_time); // RPM equation
		sprintf(str, "%d", RPM);// Write count to string
	    LCD_puts(str);	

	while(x<123){
		
	while((TIFR0&(1<<TOV0))==0){
	PORTB = 0x10; //set high
	delay(on_perc);	//delay
	PORTB = 0x00;//set low
	delay(off_perc);//delay
			}
	x++;
	TIFR0=0x1;//reset timer flag
							//sprintf(str, "%d", x);
							//LCD_puts(str);	
	
	}
			TCCR0A = 0;//stop timer

		};
	};

	int delay(int perc){//this function delays for the prescribed duty cycle
		int loops = perc/10;
		for(int j=0; j<loops; j++){
			int msecs = 2000;//need to include operation otherwise for loop won't run
			_delay_loop_2(msecs);//1ms delay;
		};
	
}

ISR(PCINT1_vect,ISR_BLOCK){
   revolutions ++;
			//sprintf(str, "%d", revolutions);
			//LCD_puts(str);
	}	
