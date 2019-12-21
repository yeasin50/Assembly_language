INCLUDE "EMU8086.INC"
.MODEL SMALL    
.STACK 100H
.DATA
.CODE
MAIN PROC 
    
    MOV AH,1
    INT 21H
    MOV BL, AL
    
    MOV AH,2
    MOV DL,10
    INT 21H       ;newline and cret
    MOV DL,13
    INT 21H  
    
    CMP BL, '0'
    JGE NUM
    
    NUM:
    CMP BL, '9'
    JLE NUM_
    
    
    CMP BL, 'A'
    JE VOWEL
    CMP BL, 'a'
    JE VOWEL
    CMP BL, 'E'
    JE VOWEL
    CMP BL, 'e'
    JE VOWEL
    CMP BL, 'I'
    JE VOWEL
    CMP BL, 'i'
    JE VOWEL
    CMP BL, 'O'
    JE VOWEL
    CMP BL, 'o'
    JE VOWEL  
    CMP BL, 'U'
    JE VOWEL
    CMP BL, 'u'
    JE VOWEL
        
    JMP NXT
    
    NUM_:
    PRINTN "NOT ALPHABET"
    JMP EXIT 
    
   VOWEL:
         PRINTN "VOWEL" 
         JMP EXIT 
         
   CONSONANT:
          PRINTN "CONSONANT"
          JMP EXIT
           
    NXT:
    CMP BL, "A"
    JG C_CHK
    
    C_CHK:
        CMP BL, 'Z'
        JLE CONSONANT 
          
    CMP BL, 'a'
    JG c_ch
     
    c_ch:
     CMP BL, "z"
     JLE CONSONANT
                
    EXIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
