/* 
 * File:   application.h
 * Author: Ahmed Adel
 *https://www.linkedin.com/in/ahmed-adel-094567242/
 * Created on October 8, 2022, 6:52 PM
 */

#ifndef APPLICATION_H
#define	APPLICATION_H
#include "ecu_layer/led/ecu_led.h"
#include "../Relay_interface/ecu_layer/dc_motor/ecu_dc_motor.h"
#include "ecu_layer/ecu_keypad.h"
#include "ecu_layer/ecu_layer_init.h"
#include "mcal_layer/interrupt/mcal_external_interrupt.h"
/* section : Macro Declarations*/


/* section : Macro function Declartion*/


/* section : Data Types Declaration*/
extern keypad_t keypad1;
extern led_t led1;
extern chr_lcd_8bit_t lcd_2;
extern chr_lcd_4bit_t lcd_1;
/* section :function declaration*/
void application_intialize(void);
#define _XTAL_FREQ 8000000UL
#endif	/* APPLICATION_H */
