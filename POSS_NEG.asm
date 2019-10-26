INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
   
.DATA
    S1 DB 'ENTER number $' 
    S2 DB 'MY AGE IS $'
    
.CODE

MAIN PROC   
    
    MOV BX, 10
    
    CMP BX, 0
    JL IF
    JGE ELSE
    
    IF:
    PRINTN "THE NUMBER IS NEGATIVE" 
    JMP EXIT
    
    ELSE:
    PRINTN "THE NUMBER IS POSITIVE"
  
EXIT:
    MOV AH, 4CH
    INT 21H           

