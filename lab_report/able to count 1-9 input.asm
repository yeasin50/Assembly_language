; count the inputed char

.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC 
    
    MOV CL,30H 
    L: 
        MOV AH, 1
        INT 21H 
        CMP AL, 0DH
        JE EXIT  
        INC CL
        JMP L   
        
    EXIT: 
        MOV AH, 2   
        MOV DL,10
        INT 21H
        MOV DL, 13
        INT 21H
        
        MOV DL,CL
        INT 21H 
        MOV AH, 4CH
        INT 21H
        MAIN ENDP  

END MAIN
