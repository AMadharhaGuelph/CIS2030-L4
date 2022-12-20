*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
        ORG     $8000
START:  MOVE.W  A,D0


LOOP    CMP     #50,D0
        BHS     EXIT
        ADD.W   #1,D0
        BRA.S   LOOP
                      
EXIT    MOVE.W  D0,A
* Put program code here

        SIMHALT             ; halt simulator

* Put variables and constants here
        ORG     $9000
       
A       DC.W    1
    
        END     START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
