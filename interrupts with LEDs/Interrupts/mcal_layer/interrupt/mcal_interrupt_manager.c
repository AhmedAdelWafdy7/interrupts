#include "mcal_interrupt_manager.h"


static volatile uint8 RB4_flag=1,RB5_flag=1,RB6_flag=1,RB7_flag=1;

#if Interrupt_Priority_Levels_Enable==Interrupt_Feature_enable

void __interrupt() InterruptManagerHigh(void){
    if( (INTERRUPT_ENABLE== INTCONbits.INT0IE) && (INTERRUPT_OCCUR == INTCONbits.INT0IF)){
        INT0_ISR();
    }
    else{/* NO THING */}
    if( (INTERRUPT_ENABLE== INTCON3bits.INT1IE) && (INTERRUPT_OCCUR == INTCON3bits.INT1IF)){
        INT1_ISR();
    } 
    else{/* NO THING */}     
    if( (INTERRUPT_ENABLE== INTCON3bits.INT2IE) && (INTERRUPT_OCCUR == INTCON3bits.INT2IF)){
        INT2_ISR();
    }
    else{/* NO THING */}
    /* ===================== PortB On Change Interrupt Start====================== */
    if( (INTERRUPT_ENABLE== INTCONbits.RBIE) && (INTERRUPT_OCCUR == INTCONbits.RBIF) && (PORTBbits.RB4== high) && (RB4_flag==1)){
        RB4_ISR(0);
        RB4_flag=0;
    }
    else{/* NO THING */}
    if( (INTERRUPT_ENABLE== INTCONbits.RBIE) && (INTERRUPT_OCCUR == INTCONbits.RBIF) && (PORTBbits.RB4== low) && (RB4_flag==0)){
        RB4_ISR(1);
        RB4_flag=1;
    }
    else{/* NO THING */}
    
    
    if( (INTERRUPT_ENABLE== INTCONbits.RBIE) && (INTERRUPT_OCCUR == INTCONbits.RBIF) && (PORTBbits.RB5== high) && (RB5_flag==1) ){
        RB5_ISR(0);
        RB5_flag=0;
    }
    else{/* NO THING */}
    if( (INTERRUPT_ENABLE== INTCONbits.RBIE) && (INTERRUPT_OCCUR == INTCONbits.RBIF) && (PORTBbits.RB5== low) && (RB5_flag==0)){
        RB5_ISR(1);
        RB5_flag=1;
    }
    else{/* NO THING */}     
    
    if( (INTERRUPT_ENABLE== INTCONbits.RBIE) && (INTERRUPT_OCCUR == INTCONbits.RBIF) && (PORTBbits.RB6== high) && (RB6_flag==1) ){
        RB6_ISR(0);
        RB6_flag=0;
    }
    else{/* NO THING */}
    if( (INTERRUPT_ENABLE== INTCONbits.RBIE) && (INTERRUPT_OCCUR == INTCONbits.RBIF) && (PORTBbits.RB6== low) && (RB6_flag==0)){
        RB6_ISR(1);
        RB6_flag=1;
    }
    else{/* NO THING */}

    if( (INTERRUPT_ENABLE== INTCONbits.RBIE) && (INTERRUPT_OCCUR == INTCONbits.RBIF) && (PORTBbits.RB7== high) && (RB7_flag==1) ){
        RB7_ISR(0);
        RB7_flag=0;
    }
    else{/* NO THING */}
    if( (INTERRUPT_ENABLE== INTCONbits.RBIE) && (INTERRUPT_OCCUR == INTCONbits.RBIF) && (PORTBbits.RB7== low) && (RB7_flag==0)){
        RB7_ISR(1);
        RB7_flag=1;
    }
    else{/* NO THING */}     
    /* ===================== PortB On Change Interrupt End====================== */

}

void __interrupt(low_priority) InterruptManagerLow(void){
    if( (INTERRUPT_ENABLE== INTCON3bits.INT1IE) && (INTERRUPT_OCCUR == INTCON3bits.INT2IF)){
        INT0_ISR();
    }
    else{/* NO THING */}
}
#else
void __interrupt() InterruptManager(void){
    if( (INTERRUPT_ENABLE==INTCONbits.INT0IE) && (INTERRUPT_OCCUR==INTCONbits.INT0IF)){
        INT0_ISR();
    }
    else {}
    
    if((INTERRUPT_ENABLE==INTCON3bits.INT1IE) && (INTERRUPT_OCCUR==INTCON3bits.INT1IF)){
        INT1_ISR();
    }
    else{}
    
    if((INTERRUPT_ENABLE==INTCON3bits.INT2IE) && (INTERRUPT_OCCUR==INTCON3bits.INT2IF)){
        INT2_ISR();
    }
    else{}    
}
#endif