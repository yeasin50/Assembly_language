.MODEL SMALL
.STACK 100H    
.DATA

MSG1 DB 'Hellow there ,$' ; must use $ end of string
MSG2 DB 'Nice to meet you$'

.CODE


MAIN PROC
    
    MOV AX, @DATA ; initialization of data
    MOV DS , AX

    
    MOV AH, 2   ; 2 use for  OUTPUT
    MOV DL,0AH  ; NEW LINE
    INT 21H
    MOV DL,0DH  ; CRET, it will help to remove space
    INT 21H  
    
    ; PRINTING STRING
    LEA DX, MSG1 ; load effective address 
    MOV AH, 9
    INT 21H
    
    ; try urself to print MSG2 
    
    
  EXIT:
  MOV AH, 4CH
  MAIN ENDP
END MAIN