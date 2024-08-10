       IDENTIFICATION DIVISION.
       PROGRAM-ID. Realavkastning.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 inv PIC 9(7)V99.
       01 avk PIC 99V99.
       01 inf PIC 99V99.
       01 rea PIC 9(7)V99.
       01 pro PIC 99V99.
       01 rea-edited PIC zzzzzz9.99.
       01 pro-edited PIC z9.99.

       PROCEDURE DIVISION.
           DISPLAY "Hva er din investering?".
           ACCEPT inv.
           DISPLAY "Hva er din avkastning i prosent?".
           ACCEPT avk.
           DISPLAY "Hvor stor er inflasjonen (prosent)?".
           ACCEPT inf.
           COMPUTE rea = inv * (avk - inf) / 100.
           MOVE rea TO rea-edited.
           COMPUTE pro = avk - inf.
           MOVE pro TO pro-edited.
           DISPLAY "Realavkastning: " rea-edited"kr, "pro-edited"%".
           STOP RUN.

