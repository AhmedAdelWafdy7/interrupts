/* 
 * File:   application.c
 * Author: Ahmed Adel
 *https://www.linkedin.com/in/ahmed-adel-094567242/
 * Created on October 8, 2022, 6:53 PM
 */

#include "application.h"


led_t led1 = {.port_name = PORTC_INDEX, .pin = pin0, .led_status = low};
led_t led2 = {.port_name = PORTC_INDEX, .pin = pin1, .led_status = low};
led_t led3 = {.port_name = PORTC_INDEX, .pin = pin2, .led_status = low};
led_t led4 = {.port_name = PORTC_INDEX, .pin = pin3, .led_status = low};

void RB4_HIGH_Int_APP_ISR(void){
    led_turn_on(&led1);
    __delay_ms(500);
}

void RB4_LOW_Int_APP_ISR(void){
    led_turn_on(&led2);
    __delay_ms(500);
}

void RB5_HIGH_Int_APP_ISR(void){
    led_turn_off(&led1);
}

void RB5_LOW_Int_APP_ISR(void){
    led_turn_off(&led2);
}

void RB6_HIGH_Int_APP_ISR(void){
    led_turn_on(&led3);
}

void RB6_LOW_Int_APP_ISR(void){
    led_turn_on(&led4);
}

void RB7_HIGH_Int_APP_ISR(void){
    led_turn_off(&led3);
}

void RB7_LOW_Int_APP_ISR(void){
    led_turn_off(&led4);
}



interrupt_RBx_t rb4_int_obj = {
  .EXT_InterruptHandler_HIGH =  RB4_HIGH_Int_APP_ISR,
  .EXT_InterruptHandler_LOW =  RB4_LOW_Int_APP_ISR,
  .priority = INERRUPT_HIGH_PRIORITY,
  .mcu_pins.port = PORTB_INDEX,
  .mcu_pins.pin = pin4,
  .mcu_pins.direction = input
};

interrupt_RBx_t rb5_int_obj = {
  .EXT_InterruptHandler_HIGH =  RB5_HIGH_Int_APP_ISR,
  .EXT_InterruptHandler_LOW =  RB5_LOW_Int_APP_ISR,
  .priority = INERRUPT_HIGH_PRIORITY,
  .mcu_pins.port = PORTB_INDEX,
  .mcu_pins.pin = pin5,
  .mcu_pins.direction = input
};

interrupt_RBx_t rb6_int_obj = {
  .EXT_InterruptHandler_HIGH =  RB6_HIGH_Int_APP_ISR,
  .EXT_InterruptHandler_LOW =  RB6_LOW_Int_APP_ISR,
  .priority = INERRUPT_HIGH_PRIORITY,
  .mcu_pins.port = PORTB_INDEX,
  .mcu_pins.pin = pin6,
  .mcu_pins.direction = input
};

interrupt_RBx_t rb7_int_obj = {
  .EXT_InterruptHandler_HIGH =  RB7_HIGH_Int_APP_ISR,
  .EXT_InterruptHandler_LOW =  RB7_LOW_Int_APP_ISR,
  .priority = INERRUPT_HIGH_PRIORITY,
  .mcu_pins.port = PORTB_INDEX,
  .mcu_pins.pin = pin7,
  .mcu_pins.direction = input 

};

int main() { 
    STD_ReturnType ret = E_NOT_OK;
    
    ret = led_intialize(&led1);
    ret = led_intialize(&led2);
    ret = led_intialize(&led3);
    ret = led_intialize(&led4);
    
    ret = Interrupt_RBx_init(&rb4_int_obj);
    ret = Interrupt_RBx_init(&rb5_int_obj);
    ret = Interrupt_RBx_init(&rb6_int_obj);
    ret = Interrupt_RBx_init(&rb7_int_obj);
    
    while(1){
        led_turn_toggle(&led4);
        __delay_ms(250);
    }
    return (EXIT_SUCCESS);
}


