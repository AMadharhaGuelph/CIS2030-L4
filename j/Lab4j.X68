*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
            ORG     $8000
START:      MOVE.W  A,D0
            CMP     #0,D0
            BLO     COND2
                                   
            CMP     #100,D0
            BHI     COND2
            
            MOVE.W  #1,B
            BRA     EXIT

COND2       CMP     #800,D0
            BLO     FALSE
            CMP     #900,D0
            BHI     FALSE
            
            MOVE.W  #1,B
            BRA     EXIT
            
            
FALSE       MOVE.W  #0,B
            BRA     EXIT
* Put program code here

EXIT        SIMHALT             ; halt simulator

* Put variables and constants here
            ORG     $9000
A           DC.W    117
B           DS.W    1  
            END     START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
