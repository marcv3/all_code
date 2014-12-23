/*
// Blinky.c

#include <avr/io.h>
#include <avr/delay.h>

int main (void)
{
	
	// set PORTD for output
	DDRD = 0xFF;
	
	while(1)
	{
		
		for(int i = 1; i <= 128; i = i*2)
		{
			PORTD = i;
			_delay_loop_2(30000);
		}
		
		for(int i = 128; i > 1; i -= i/2)
		{
			PORTD = i;
			_delay_loop_2(30000);
		}
		
	}
	
}
*/
/*
 * lab_7.c
 *
 * Created: 3/25/2014 2:20:16 PM
 *  Author: Marc
 */ 


#include <avr/io.h>//avr io library
#include <avr/delay.h>// avr delay library

void delay (int length); //prototypes for functions
void parta (int length);
void partb (int length);
void partc (int length);

int main (void)
{
	DDRD = 0xFF;// set PORTD for output
	int length = 10000;// number of iterations of the delay function

	
	while(1)
	{
    parta(length); //call functions 
//	partb(length);
//	partc(length);
	}
	
}

void delay (int length) //delay function
{
	for(int i = 1; i <= length; i++){
		_delay_loop_1(1950); //delay loops 1950 times
	}
}




void partc (int length){
	
		delay(75);
		PORTD = 0x00;
		delay(15);
		PORTD = 0xff;	
}



void parta (int length)
{
	for(int i = 1; i <= 128; i = i*2)
	{
		PORTD = i;//this loop turns leds on one at a time
		delay(length);
		
	}
	
}



/*
void partb (int length)
{

	PORTD = 0x55; //odd LEDs on
	delay(length); //delay
	PORTD = 0xaa; // even LEDs on
	delay(length);
}
*/





