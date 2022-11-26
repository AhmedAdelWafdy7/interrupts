/* 
 * File:   mcal_std_types.h
 * Author: Ahmed Adel
 *https://www.linkedin.com/in/ahmed-adel-094567242/
 * Created on October 8, 2022, 6:51 PM
 */


#include "compiler.h"
#include "mcal_std_libraries.h"
#ifndef MCAL_STD_TYPES_H
#define	MCAL_STD_TYPES_H

/* section : Macro Declarations*/
#define STD_HIGH       0x01
#define STD_LOW        0x00




#define STD_ON         0x01
#define STD_OFF        0x00

#define STD_ACTIVE     0x01
#define STD_IDLE       0x00
#define E_OK         (STD_ReturnType)0x01
#define E_NOT_OK     (STD_ReturnType)0x00
/* section : Macro function Declartion*/


/* section : Data Types Declartion*/
typedef unsigned char uint8;

typedef uint8 STD_ReturnType; 

/* section :function declartion*/

#endif


