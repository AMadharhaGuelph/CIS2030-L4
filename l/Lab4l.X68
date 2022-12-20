*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
        ORG     $8000
START:  LEA     MY_SID,A0
        CLR.W   D0 
        CLR.W   D1
        CLR.W   D2               

    

LOOP    CMP     #7,D7
        BHS     DONE
        CLR.L   D2 
        MOVE.W  (A0)+,D2   

        DIVU    #2,D2
        CLR.W   D2
        SWAP    D2
        
        CMP     #0,D2
        BNE     ODD
        ADD.W   #1,D0
        ADD.B   #1,D7
        BRA     LOOP   
        
ODD     ADD.W   #1,D1
        ADD.B   #1,D7
        BRA     LOOP
* Put program code here

DONE    SIMHALT             ; halt simulator

* Put variables and constants here
        ORG     $9000
MY_SID  DC.W    1,1,7,2,8,5,9
*even stored in D0
*odd stored in D1
*digit stored in D2
        END     START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
