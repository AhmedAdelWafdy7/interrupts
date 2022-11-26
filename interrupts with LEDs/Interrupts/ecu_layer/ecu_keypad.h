/* 
 * File:   ecu_keypad.h
 * Author: Ahmed Adel
 *https://www.linkedin.com/in/ahmed-adel-094567242/
 * Created on October 8, 2022, 7:02 PM
 */

#ifndef ECU_KEYPAD_H
#define	ECU_KEYPAD_H



/*---------------------------- Includes ---------------------*/
#include "../mcal_layer/gpio_layer/hal_gpio.h"
#include "ecu_keypad_cfg.h"
/*---------------------------- Macro Declaration---------------------*/
#define ECU_KEYPAD_ROWS     4
#define ECU_KEYPAD_COLUMNS     4
#define _XTAL_FREQ 8000000UL

/*---------------------------- Macro Function Declaration---------------------*/
typedef struct{
    pin_config_t ecu_keypad_row_pins[ECU_KEYPAD_ROWS];
    pin_config_t ecu_keypad_columns_pins[ECU_KEYPAD_COLUMNS];
}keypad_t;


/*---------------------------- Data Types Declaration ---------------------*/


/*---------------------------- Software Interfaces Declaration ---------------------*/
STD_ReturnType keypad_intialize(const keypad_t *_keypad_obj);
STD_ReturnType keypad_get_value(const keypad_t *_keypad_obj,uint8 *value);






#endif	/* ECU_KEYPAD_H */

