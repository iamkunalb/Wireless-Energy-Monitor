/*
 * Timers_Interrupts.c
 *
 * Created: 3/10/2017 2:52:47 PM
 * Author : Group 5
 */ 

#include <avr/io.h>
#define F_CPU 16000000
#include <util/delay.h>
#include <avr/interrupt.h>
#include <stdio.h>

volatile uint16_t voltage_vals[200];
volatile int v_count = 0;

void adc_init() {
	ADMUX |= (1<<REFS0) ;//| (1 << MUX2) | (1 << MUX0);  //Set the reference to AVCC- choosing to have an external reference voltage (our Vref is 5V)
	ADCSRA |= (1 << ADEN) | (1 << ADIE) | (1 << ADPS2) | (1 << ADPS1); //control/status reg: 
	//set ADC enable, Auto trigger enable, interrupt enable and prescaler value
}
ISR(ADC_vect) {
	voltage_vals[v_count] = ADC; //store ADC reading in an array
	v_count++;
	ADCSRA |= (1 << ADSC); //start conversion	
	//ADMUX ^= (1<<MUX0); //toggle the channel
}

void uartinit(){
	UBRR0H = 0;	//UBRR0 value for baud rate
	UBRR0L = 103; //UBRR0 value for baud rate
	UCSR0B |= (1 << TXEN0); //| (1 << RXEN0); //| (1 << UDRIE0);	//Initialise transmitting mode and recieving mode and interrupt enable.
	UCSR0C |= (1 << UCSZ00) | (1 << UCSZ01); //8-bit sending mode	

}

void uart_transmit(uint8_t val){
	while(!((1 << UDRE0) & UCSR0A));
	UDR0 = val;
}

int main(void)
{
	uartinit();
	adc_init();
    ADCSRA |= (1 << ADSC); //start conversion
	sei();
    while (1) 
    {
		if (v_count >= 200) {
			cli();

			float calc_voltage[v_count];
			float ave_voltage = 0;
			for(int i =0; i<v_count; i++){
				calc_voltage[i] = ((((double)voltage_vals[i] * 5.0) / 1024.0) - 2.50) * 9.2;  //calculating voltage
			}
			for(int i=0; i<v_count; i++){
				ave_voltage += calc_voltage[i] * calc_voltage[i]; //Vload squared
				voltage_vals[i] = 0;
			}

			ave_voltage /= v_count;
			ave_voltage = sqrtf(ave_voltage);
			int temp = ave_voltage * 100;
			v_count = 0;
			uart_transmit(temp/1000 | 0x30);
			uart_transmit((temp%1000)/100 | 0x20);
			uart_transmit(((temp%1000)%100)/10 | 0x10);
			uart_transmit(((temp%1000)%100)%10 | 0x00);
			_delay_ms(500);
			sei();
		}
		
    }

}