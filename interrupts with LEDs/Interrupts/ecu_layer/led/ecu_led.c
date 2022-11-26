#include "ecu_led.h"
/**
 * 
 * @param led
 * @return 
 */
STD_ReturnType led_intialize(const led_t *led){
    STD_ReturnType ret= E_OK;
    
    if(NULL== led)
    {
        ret = E_NOT_OK;
    }
    else{
        pin_config_t pin_obj ={.port= led ->port_name,
                               .pin =led ->pin,
                               .direction= led->led_direction,
                               .logic =led ->led_status};    
        gpio_pin_direction_intialize(&pin_obj);
    
    }
    return ret;
}

/**
 * 
 * @param led
 * @return 
 */
STD_ReturnType led_turn_on(const led_t *led){
    STD_ReturnType ret= E_OK;
    if(NULL== led)
    {
        ret = E_NOT_OK;
    }
    else{
      pin_config_t pin_obj ={.port= led ->port_name,
                               .pin =led ->pin,
                               .direction= led->led_direction,
                               .logic =led ->led_status};
      gpio_pin_write_logic(&pin_obj,high);
    
    }
    return ret;



}

/**
 * 
 * @param led
 * @return 
 */
STD_ReturnType led_turn_off(const led_t *led){
    STD_ReturnType ret= E_OK;
    if(NULL== led)
    {
        ret = E_NOT_OK;
    }
    else{
       pin_config_t pin_obj ={.port= led ->port_name,
                               .pin =led ->pin,
                               .direction= led->led_direction,
                               .logic =led ->led_status};
      gpio_pin_write_logic(&pin_obj,low);  
    
    }
    return ret;

}

/**
 * 
 * @param led
 * @return 
 */
STD_ReturnType led_turn_toggle(const led_t *led){
    STD_ReturnType ret= E_OK;
    if(NULL== led)
    {
        ret = E_NOT_OK;
    }
    else{
         pin_config_t pin_obj ={.port= led ->port_name,
                               .pin =led ->pin,
                               .direction= led->led_direction,
                               .logic =led ->led_status};
      gpio_pin_toggle_logic(&pin_obj);
    
    }
    return ret;

}
