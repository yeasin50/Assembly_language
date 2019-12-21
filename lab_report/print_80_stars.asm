.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC
    MOV CX, 80
    MOV AH, 2
    MOV DL, '*'
    
    L1:
        INT 21H
        LOOP L1
        
    MOV AH, 4CH
    INT 21H
    MAIN ENDP
END MAIN
