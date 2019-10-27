include "emu8086.inc"
.model small
.stack 100h


main proc
     
    PRINTN "Enter Char : "
    
    MOV AH, 1
    INT 21h     ; scan and assign -> bl
    MOV BL, AL
     
    MOV AH,2
    MOV DL,10
    INT 21H
    MOV DL,13
    INT 21H
    
    CMP BL, 'a'
    JGE IF
    
    CMP BL, 'A'
    JGE ELSE
    
    
    ELSE:
    CMP BL, 'Z'
    JLE UPPER
    
    UPPER:
    PRINTN " UPPER "
    JMP EXIT
    
    IF:
    CMP BL, 'z'
    JMP LOWER
    
    LOWER:
    PRINTN "LOWER CASE"
    JMP EXIT
    
    EXIT:
    MOV AH, 4CH
    INT 21H
    
    
