
INCLUDE "EMU8086.INC"
.MODEL SMALL    
.STACK 100H
.DATA
.CODE
MAIN PROC 
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    

    L1:
        CMP BL, '0'
        JE EXIT
        
        PRINTN " "
        MOV AH, 2
        MOV DL, BL
        INT 21H 
        DEC BL
        JMP L1
         
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
