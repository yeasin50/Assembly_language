INCLUDE "EMU8086.INC"
.MODEL SMALL    
.STACK 100H
.DATA
.CODE
MAIN PROC 
;A:   A = 5*A - 7
    MOV AX, 5
    IMUL A           
    SUB AX, 7
    MOV A, AX
    
;B:    B= (A-B)* (B+10)   
    MOV AX, A
    SUB AX, B
    ADD B, 10       
    IMUL B
    MOV B, AX   
    
;C:  A=6 - 9*A      
    
    MOV AX, 9
    IMUL A          
    MOV BX , 6
    SUB BX, AX
    MOV A, AX   
 
    
 ; D: SOLVE
    
    MOV AX, A
    IMUL AX
    MOV A, AX
    
    MOV AX, B
    IMUL AX
    MOV BX, AX
    ADD BX, A
    MOV AX, C
    IMUL AX
    
    CMP BX , AX
    JE SET_CF
    CLC
    
    JMP END_IF
    SET_CF : STC  
    
    END_IF:
  
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
