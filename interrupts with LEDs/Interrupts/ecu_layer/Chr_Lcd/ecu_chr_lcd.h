/* 
 * File:   ecu_chr_lcd.h
 * Author: Ahmed Adel
 *https://www.linkedin.com/in/ahmed-adel-094567242/
 * Created on October 17, 2022, 1:07 AM
 */

#ifndef ECU_CHR_LCD_H
#define	ECU_CHR_LCD_H
/*----------------------- includes ------------------------*/
#include "../../mcal_layer/gpio_layer/hal_gpio.h"
#include "../../ecu_layer/ecu_chr_lcd_cfg.h"
/*------------------------ Macro Declaration --------------------*/
#define _LCD_CLEAR                                  0x01
#define _LCD_RETURN_HOME                            0x02
#define _LCD_ENTERY_MODE_DEC_SHIFT_OFF              0x04
#define _LCD_ENTERY_MODE_DEC_SHIFT_ON               0x05
#define _LCD_ENTERY_MODE_INC_SHIFT_OFF              0x06
#define _LCD_ENTERY_MODE_INC_SHIFT_ON               0x07
#define _LCD_CURSOR_MOVE_SHIFT_LEFT                 0x10
#define _LCD_CURSOR_MOVE_SHIFT_RIGHT                0x14
#define _LCD_DISPLAY_SHIFT_LEFT                     0x18
#define _LCD_DISPLAY_SHIFT_RIGHT                    0x1C
#define _LCD_DISPLAY_ON_UNDERLINE_OFF_CURSOR_OFF    0x0C
#define _LCD_DISPLAY_ON_UNDERLINE_OFF_CURSOR_ON     0x0D
#define _LCD_DISPLAY_ON_UNDERLINE_ON_CURSOR_OFF     0x0E
#define _LCD_DISPLAY_ON_UNDERLINE_ON_CURSOR_ON      0x0F
#define _LCD_DISPLAY_OFF_CURSOR_OFF                 0x08
#define _LCD_8BIT_MODE_2_LINE                       0x38
#define _LCD_4BIT_MODE_2_LINE                       0x28

#define _LCD_CGRAM_START                            0x40
#define _LCD_DDRAM_START                            0x80

#define ROW1 1
#define ROW2 2
#define ROW3 3
#define ROW4 4


/*-------------------------Macro Function Declaration ------------------*/

/*---------------------------Data Types Declaration---------------------------*/
typedef struct{
    pin_config_t lcd_rs;
    pin_config_t lcd_en;
    pin_config_t lcd_data[4];
}chr_lcd_4bit_t;
typedef struct{
    pin_config_t lcd_rs;
    pin_config_t lcd_en;
    pin_config_t lcd_data[8];
}chr_lcd_8bit_t;
/*-------------------------------software Declaration--------------------------*/
static STD_ReturnType lcd_4bit_initialize(const chr_lcd_4bit_t *lcd);
static STD_ReturnType lcd_4bit_send_command(const chr_lcd_4bit_t *lcd,uint8 command);
static STD_ReturnType lcd_4bit_send_char_data(const chr_lcd_4bit_t *lcd,uint8 data);
static STD_ReturnType lcd_4bit_send_char_dat_pos(const chr_lcd_4bit_t *lcd,uint8 row,uint8 column,uint8 data);
static STD_ReturnType lcd_4bit_send_string(const chr_lcd_4bit_t *lcd,uint8 *str);
static STD_ReturnType lcd_4bit_send_string_pos(const chr_lcd_4bit_t *lcd,uint8 row,uint8 column,uint8 *str);
static STD_ReturnType lcd_4bit_send_custome_char(const chr_lcd_4bit_t *lcd,uint8 row,uint8 column,const uint8 _chr[],uint8 mem_pos); 

static STD_ReturnType lcd_8bit_initialize(const chr_lcd_8bit_t *lcd);
static STD_ReturnType lcd_8bit_send_command(const chr_lcd_8bit_t *lcd,uint8 command);
static STD_ReturnType lcd_8bit_send_char_data(const chr_lcd_8bit_t *lcd,uint8 data);
static STD_ReturnType lcd_8bit_send_char_dat_pos(const chr_lcd_8bit_t *lcd,uint8 row,uint8 column,uint8 data);
static STD_ReturnType lcd_8bit_send_string(const chr_lcd_8bit_t *lcd,uint8 *str);
static STD_ReturnType lcd_8bit_send_string_pos(const chr_lcd_8bit_t *lcd,uint8 row,uint8 column,uint8 *str);
static STD_ReturnType lcd_8bit_send_custome_char(const chr_lcd_8bit_t *lcd,uint8 row,uint8 column,const uint8 _chr[],uint8 mem_pos);

void convert_byte_to_string(uint8 value,uint8 *str);
void convert_short_to_string(uint8 value,uint8 *str);
void convert_int_to_string(uint8 value,uint8 *str);



static STD_ReturnType lcd_8bit_set_cursor(const chr_lcd_8bit_t *lcd,uint8 row,uint8 coulmn);
static STD_ReturnType lcd_4bit_set_cursor(const chr_lcd_8bit_t *lcd,uint8 row,uint8 coulmn);
static STD_ReturnType lcd_8bit_send_enable_signal(const chr_lcd_8bit_t *lcd);
static STD_ReturnType lcd_4bit_send_enable_signal(const chr_lcd_4bit_t *lcd);
static STD_ReturnType lcd_send_4bits(const chr_lcd_4bit_t *lcd,uint8 _data_command);



#endif	/* ECU_CHR_LCD_H */

