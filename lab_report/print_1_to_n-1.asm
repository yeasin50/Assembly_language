.MODEL SMALL    
.STACK 100H
.DATA
.CODE
MAIN PROC 
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    MOV CL, '1'
    
    MOV AH,2
    MOV DL,10
    INT 21H       
    MOV DL,13
    INT 21H
    
    L1:
        MOV AH, 2
        MOV DL, CL
        INT 21H
        INC CL
        CMP BL,CL
        JE EXIT
        JMP L1
   
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
