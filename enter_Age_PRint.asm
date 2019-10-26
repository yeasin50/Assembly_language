.MODEL SMALL
.STACK
   
.DATA
    S1 DB 'ENTER YOUR AGE $' 
    S2 DB 'MY AGE IS $'
    
.CODE

MAIN PROC   
    
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,S1
    MOV AH, 9
    INT 21H  
            
    MOV AH, 2
    MOV DL, 13
    INT 21H 
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H 
           
    MOV AH, 1
    INT 21H       ;1ST SCAN
    MOV BL,AL    
              
              
    MOV AH, 1
    INT 21H       ; 2ND SCAN
    MOV BH,AL  
    
    MOV AH, 2
    MOV DL, 0AH
    INT 21H     
    
  
    MOV AH, 2
    MOV DL, 0AH
    INT 21H  
    
    MOV AH, 2
    MOV DL, 13
    INT 21H    
    
    LEA DX,S2
    MOV AH, 9
    INT 21H  
    
    MOV AH, 2
    MOV DL, BL    ;1ST OUT
    INT 21H 
    
    MOV DL, BH    ;2ND OUT
    INT 21H  
    
  
EXIT:
    MOV AH, 4CH
    INT 21H           

