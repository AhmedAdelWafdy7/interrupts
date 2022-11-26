#include "ecu_layer_init.h"
#include <xc.h>

chr_lcd_4bit_t lcd_1 ={
    .lcd_rs.port = PORTC_INDEX,
    .lcd_rs.pin = pin0,
    .lcd_rs.direction = output,
    .lcd_rs.logic = low,
    .lcd_en.port = PORTC_INDEX,
    .lcd_en.pin = pin1,
    .lcd_en.direction = output,
    .lcd_en.logic = low,
    .lcd_data[0].port = PORTC_INDEX,
    .lcd_data[0].pin = pin2,
    .lcd_data[0].direction =output,
    .lcd_data[0].logic=low,
    .lcd_data[1].port = PORTC_INDEX,
    .lcd_data[1].pin = pin3,
    .lcd_data[1].direction =output,
    .lcd_data[1].logic=low,
    .lcd_data[2].port = PORTC_INDEX,
    .lcd_data[2].pin = pin4,
    .lcd_data[2].direction =output,
    .lcd_data[2].logic=low,
    .lcd_data[3].port = PORTC_INDEX,
    .lcd_data[3].pin = pin5,
    .lcd_data[3].direction =output,
    .lcd_data[3].logic=low,
};
void ecu_layer_inialize(){
    STD_ReturnType ret = E_NOT_OK;
    ret = lcd_4bit_initialize(&lcd_1);
}