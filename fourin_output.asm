.MODEL SMALL
.STACK 100H
.CODE


MAIN PROC
    MOV AH, 1   ; 1 FOR INPUT
    INT 21H    
    
    MOV BL, AL ; input1 using BL
    INT 21H   
    
    MOV BH, AL; input2 using BH
    INT 21H   
    
    MOV CL, AL  ; input3 using BL  
    INT 21H
    
    MOV CH, AL ;    INPUT 4
    INT 21H
    
    MOV AH, 2   ; 2 FOR OUTPUT
    MOV DL,0AH  ; NEW LINE
    INT 21H
    
    MOV DL,0DH  ; CRET, it will help to remove space
    INT 21H
    
    MOV DL,BL     ; 1ST OUTPUT
    INT 21H   
    
    MOV DL, BH    ;2nd out
    INT 21H
    
    MOV DL, CL
    INT 21H       ;3rd print
    
    MOV DL,CH
    INT 21H       ;4print
    
  EXIT:
  MOV AH, 4CH
  MAIN ENDP
END MAIN