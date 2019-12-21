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
    INT 21H       ;newline and cret
    MOV DL,13
    INT 21H
    
    CMP BL, 'a'
    JGE IF
    
    CMP BL, 'A'
    JGE ELSE_IF
    
    CMP BL, '0'
    JGE NUM
    
    NUM:
    CMP BL, '9'
    JLE NUM_
    
    NUM_:
    PRINTN "NOT ALPHABET"
    JMP EXIT 
    
    ELSE_IF:
    CMP BL, 'Z'
    JLE ALPHA
    
    ALPHA:
    PRINTN " ALPHABET "
    JMP EXIT
    
    IF:
    CMP BL, 'z'
    JMP ALPHA
    JMP NUM_
    
    
    EXIT: 
    MOV AH, 4CH
    INT 21H
    
    
