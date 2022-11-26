/* 
 * File:   mcal_interrupt_manager.h
 * Author: Ahmed Adel
 *https://www.linkedin.com/in/ahmed-adel-094567242/
 * Created on November 15, 2022, 12:49 AM
 */
#ifndef MCAL_INTERRUPT_MANAGER_H
#define	MCAL_INTERRUPT_MANAGER_H
/* -------------------includes----------------------*/
#include "mcal_interrupt_config.h"
/* ------------------------Macro Declaration------------------ */
/* ------------------------Macro Function Declaration--------- */
/*--------------------------Data Types Declaration------------ */
/* --------------------------Software Declaration------------- */
void INT0_ISR(void);
void INT1_ISR(void);
void INT2_ISR(void);
void RB4_ISR(uint8 source);
void RB5_ISR(uint8 source);
void RB6_ISR(uint8 source);
void RB7_ISR(uint8 source);

#endif	/* MCAL_INTERRUPT_MANAGER_H */

