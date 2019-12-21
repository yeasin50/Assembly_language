.MODEL SMALL
.STACK 100H
.CODE

MAIN PROC 
    
    MOV AL, 1
    MOV BL, 3
    
    CALL M2
    CALL M2
    CALL M2
    CALL M2
    
    RET
    MAIN ENDP

M2 PROC
    MUL BL
    RET
    M2 ENDP
END    

;; AX= 51 BX=3 
       
