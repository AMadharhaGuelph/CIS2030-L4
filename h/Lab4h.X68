*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
            ORG    $8000
START:      MOVE.B  A,D1
            MOVE.B  B,D2
            CMP     D1,D2
            BNE     NOTEQUAL
            
            MOVE.B  C,A
            MOVE.B  C,B
            BRA     EXIT
                        
NOTEQUAL    MOVE.B  A,D0
            MOVE.B  B,A
            MOVE.B  D0,B   
 
* Put program code here

EXIT        SIMHALT             ; halt simulator

* Put variables and constants here
        ORG     $9000
A       DC.B    $1
B       DC.B    $1
C       DC.B    $7         
        END     START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
