INCLUDE "EMU8086.INC"
.MODEL SMALL    
.STACK 100H
.DATA
.CODE
MAIN PROC 
    
   MOV CX, 6
   MOV BX, 4
   
   TOP:
        MOV AH, 2
        MOV DL, "*"
        INT 21H
        DEC BX
        
        CMP BX, 0
        JE EXIT
        JMP TOP
        
    EXIT:
    MOV AH,2
    MOV DL, 10
    INT 21H
    MOV DL, 13
    INT 21H
    
    MOV BX, 4
    LOOP TOP
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
