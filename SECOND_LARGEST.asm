.MODEL SMALL    
.STACK 100H
.DATA
.CODE
MAIN PROC 
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    INT 21H
    MOV BH,AL
    INT 21H
    MOV CL,AL
   
    CMP BL,BH
    JG L1
    JL L3
    
    L1:
    CMP BH,CL
    JG PRINT_BH
    JL L2
    
    L2:
    CMP BL,CL
    JG PRINT_CL
    JL PRINT_BL
    
    L3:
    CMP BL,CL
    JG PRINT_BL
    JL L4
    
    L4:
    CMP BH,CL
    JG PRINT_CL
    JL PRINT_BH
    
    PRINT_BL:
    MOV AH,2
    MOV DL,BL
    INT 21H
    JMP EXIT
        
    PRINT_BH:
    MOV AH,2
    MOV DL,BH
    INT 21H 
    JMP EXIT
        
    PRINT_CL:
    MOV AH,2
    MOV DL,CL
    INT 21H
    
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
