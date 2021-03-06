
/*
 * ultrasonic_project.c
 *
 * Created: 4/24/2014 10:43:57 AM
 *  Author: Marc
 */ 

#include <avr/io.h>
#include "util\delay.h"
#include "LCD_driver.h"
#include <avr/interrupt.h>
char str [100];
int count;
int dist;
int time;
float totaltimer;
float timer;
	int z;
int main()                                    // Main function
{
	DDRB = 0b00000110;// Set PINB0 to an input
	LCD_Init();//initialize the LCD
	// enable interrupts
	PCMSK1 |= (1<<PINB0);
	EIMSK |= (1<<PCIE1);
	TCCR0A |= (1<<CS02);
	TIMSK0 |= (1<<OCIE0A);
	DDRB = 0b00000111;
	PORTB = 0x00;
	_delay_us(2);
	PORTB = 0x01;
	_delay_us(5);
	DDRB = 0b00000110;

sei(); // enable interrupts
while(1)        // Repeat indefinitely
{
}
}

ISR(PCINT1_vect) {
	count++;

	if (count == 3){
		TCNT0 = 0;
	}

	if (count == 4){
		dist = (TCNT0*.544);
		sprintf(str, "%d CM", dist);
		LCD_puts(str);
cli(); // clear interrupts
		if((dist>=5) && (dist<=29)){ // will activate if the ultrasonic sensor (USS) outputs between 5 and 30 cm			
			time = dist - 5; // time varies from 0 to 25 as the distance changes
		LCD_puts(str); // print distance

        for (int i = 0; i<=(time*20);i++) // this loop generates the delay below based on the distance reading of the USS
        {

//delay timer equal to _delay_loop_2(1500);
TCCR0A = 0b00000101;
TCNT0 = 248;
while((TIFR0&(0x1<<TOV0))==0){
}
TCCR0A = 0b00000000;
TIFR0 = 0x1<<TOV0;
TCCR0A |= (1<<CS02);
// end delay
        }

		PORTB = 0b10000000; // Sets LED on

        for (int i = 0; i<=(time*20);i++)//A repeat of the above delay code
        {
//equivalent to _delay_loop_2(1500);
TCCR0A = 0b00000101;
TCNT0 = 248;
while((TIFR0&(0x1<<TOV0))==0){
}
TCCR0A = 0b00000000;
TIFR0 = 0x1<<TOV0;
TCCR0A |= (1<<CS02);
// end delay		
        }
		PORTB = 0b00000000;// sets LED off
		} //end if
		
		if (dist>=30) //will activate if USS outputs 30 or greater
		{
	
		PORTB = 0b01000000; //sets high pulse of PWM for servo
		
//timer delay equal to	_delay_loop_2(2600), time for 1.3 ms high pulse;
TCCR0A = 0b00000101;
TCNT0 = 154;
while((TIFR0&(0x1<<TOV0))==0){
}
TCCR0A = 0b00000000;
TIFR0 = 0x1<<TOV0;
TCCR0A |= (1<<CS02);
// end delay

		PORTB = 0b00000000;
		
//timer equal to _delay_loop_2(40000), 20ms low pulse
TCCR0A = 0b00000101;
TCNT0 = 100;
while((TIFR0&(0x1<<TOV0))==0){
}
TCCR0A = 0b00000000;
TIFR0 = 0x1<<TOV0;
TCCR0A |= (1<<CS02);
// end delay
	
		}

		
		if (dist<=5) // if within 5 cm
		{
	
	PORTB = 0b11000000; // sets servo to high pulse while keeping LED on
	
_delay_loop_2(3400); // delay for 1.7ms high pulse for servo	
	
	PORTB = 0b10000000; //sets servo signal to low while keeping LED on
	
//delay equivalent to _delay_loop_2(40000), 20ms delay; 
	TCCR0A = 0b00000101;
	TCNT0 = 100;
	while((TIFR0&(0x1<<TOV0))==0){		
	}
	TCCR0A = 0b00000000;	
    TIFR0 = 0x1<<TOV0;
	TCCR0A |= (1<<CS02);	
// end delay
	
		}
		

		TCNT0 = 0;
		count = 0;
sei();		// enable interrupts	

		return;
	}
}
