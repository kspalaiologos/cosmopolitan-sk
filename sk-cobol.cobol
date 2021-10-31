       PROGRAM-ID. brainfuck.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WORD-TAPE.
         02 m    BINARY-LONG UNSIGNED OCCURS 1048832 TIMES.
       01 p      BINARY-LONG VALUE 256.
       01 v      BINARY-LONG UNSIGNED.
       01 chr    BINARY-LONG GLOBAL.
       01 inpl   PIC X(132) GLOBAL.
       01 goteof PIC 9 GLOBAL.
       01 gotln  PIC 9 GLOBAL.
       PROCEDURE DIVISION.
       MOVE 1 TO m(p)
       ADD 1 TO p
       MOVE 1 TO m(p)
       PERFORM UNTIL m(p) EQUALS ZERO
         SUBTRACT 1 FROM p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
         END-PERFORM
         ADD 1 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 1 TO p
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 9 TO m(p)
           ADD 92 TO p
           ADD 2 TO m(p)
           SUBTRACT 92 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 5 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 5 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 1 TO p
         ADD 9 TO m(p)
         SUBTRACT 3 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 12 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 6 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 6 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 1 TO p
         ADD 12 TO m(p)
         SUBTRACT 3 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 8 TO p
           MOVE 1 TO m(p)
           ADD 1 TO p
           ADD 13 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 1 TO p
         ADD 13 TO m(p)
         SUBTRACT 3 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 3 TO p
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 2 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 8 TO p
           MOVE 0 TO m(p)
           ADD 1 TO p
           ADD 14 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 2 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 2 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 1 TO p
         ADD 14 TO m(p)
         SUBTRACT 3 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 9 TO m(p)
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 3 TO p
             MOVE m(p) TO v
             SUBTRACT 8 FROM p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             ADD 6 TO p
             MOVE 0 TO m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
             SUBTRACT 3 FROM p
           END-PERFORM
           ADD 3 TO p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 13 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 13 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 11 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         ADD 1 TO p
         ADD 10 TO m(p)
         SUBTRACT 3 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 6 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 16 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 14 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 16 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 13 FROM p
           ADD 2 TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 3 TO p
           MOVE v TO m(p)
           ADD 3 TO p
           ADD 3 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*5
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           ADD 5 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 3 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*5
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 3 TO p
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 2 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           ADD 5 TO p
           ADD 3 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*5
           ADD 1 TO m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
           SUBTRACT 2 FROM m(p)
           SUBTRACT 3 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 6 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             MOVE m(p) TO v
             SUBTRACT 4 FROM p
             ADD v TO m(p)
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 4 FROM p
           MOVE m(p) TO v
           ADD 4 TO p
           MOVE v TO m(p)
           SUBTRACT 3 FROM p
           ADD 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             MOVE m(p) TO v
             SUBTRACT 8 FROM p
             ADD v TO m(p)
             ADD 1 TO p
             ADD v TO m(p)
             MOVE m(p) TO v
             ADD 7 TO p
             MOVE v TO m(p)
             SUBTRACT 6 FROM p
             SUBTRACT 1 FROM m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             MOVE 0 TO m(p)
             ADD 3 TO p
           END-PERFORM
           ADD 6 TO p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 8 TO p
           ADD 3 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*5
           ADD 2 TO m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 4 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 4 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 6 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             MOVE m(p) TO v
             SUBTRACT 4 FROM p
             ADD v TO m(p)
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 4 FROM p
           MOVE m(p) TO v
           ADD 4 TO p
           MOVE v TO m(p)
           SUBTRACT 3 FROM p
           ADD 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             MOVE m(p) TO v
             SUBTRACT 8 FROM p
             ADD v TO m(p)
             ADD 1 TO p
             ADD v TO m(p)
             MOVE m(p) TO v
             ADD 7 TO p
             MOVE v TO m(p)
             SUBTRACT 6 FROM p
             SUBTRACT 1 FROM m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             MOVE 0 TO m(p)
             ADD 3 TO p
           END-PERFORM
           ADD 6 TO p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 8 TO p
           ADD 5 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*8
           MOVE m(p) TO chr
           ADD 1 TO chr
           DISPLAY FUNCTION CHAR(chr) WITH NO ADVANCING
           SUBTRACT 2 FROM p
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           MOVE v TO m(p)
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 7 TO p
           MOVE 0 TO m(p)
           ADD 2 TO p
           MOVE 18 TO m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 3 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*6
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 3 TO p
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           SUBTRACT 3 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           ADD 5 TO p
           ADD 3 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*6
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 10 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 10 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 3 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*6
         ADD 1 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 4 TO p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           ADD 4 TO p
           ADD 4 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*5
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 4 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*5
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 3 TO p
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           SUBTRACT 3 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           ADD 5 TO p
           ADD 4 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*5
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 10 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 10 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 4 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*5
         ADD 1 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 8 TO p
           ADD 5 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*8
           ADD 1 TO m(p)
           MOVE m(p) TO chr
           ADD 1 TO chr
           DISPLAY FUNCTION CHAR(chr) WITH NO ADVANCING
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 4 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 10 TO p
           MOVE 0 TO m(p)
           ADD 12 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 14 FROM p
             ADD 1 TO m(p)
             ADD 16 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 19 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 22 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 19 FROM p
             ADD 1 TO m(p)
             ADD 21 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 11 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         ADD 2 TO p
         ADD 3 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*5
         ADD 1 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 8 TO p
           ADD 8 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*10
           ADD 3 TO m(p)
           MOVE m(p) TO chr
           ADD 1 TO chr
           DISPLAY FUNCTION CHAR(chr) WITH NO ADVANCING
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 4 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 10 TO p
           MOVE 0 TO m(p)
           ADD 12 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 14 FROM p
             ADD 1 TO m(p)
             ADD 16 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 19 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 22 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 19 FROM p
             ADD 1 TO m(p)
             ADD 21 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 11 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         ADD 2 TO p
         ADD 3 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*5
         ADD 2 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 8 TO p
           ADD 3 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*5
           MOVE m(p) TO v
           ADD 1 TO p
           COMPUTE m(p) EQUAL v*5
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           MOVE v TO m(p)
           MOVE m(p) TO chr
           ADD 1 TO chr
           DISPLAY FUNCTION CHAR(chr) WITH NO ADVANCING
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 4 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 10 TO p
           MOVE 0 TO m(p)
           ADD 12 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 14 FROM p
             ADD 1 TO m(p)
             ADD 16 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 19 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 22 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 19 FROM p
             ADD 1 TO m(p)
             ADD 21 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 11 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         ADD 1 TO p
         ADD 3 TO m(p)
         SUBTRACT 3 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 8 TO p
           ADD 4 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*5
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 2 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 4 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*5
         ADD 2 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 5 TO p
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           ADD 2 TO p
           ADD 4 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*5
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           ADD 2 TO m(p)
           SUBTRACT 3 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 3 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 2 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 2 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 4 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*5
         ADD 3 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 5 TO p
           ADD 1 TO m(p)
           ADD 4 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 85 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             MOVE 1 TO m(p)
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 89 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 85 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 93 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 10 TO p
             ADD 1 TO m(p)
             ADD 85 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 93 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 10 TO p
           MOVE m(p) TO v
           SUBTRACT 10 FROM p
           MOVE v TO m(p)
           ADD 10 TO p
           MOVE 0 TO m(p)
           ADD 85 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           SUBTRACT 2 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM m(p)
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 93 FROM p
           SUBTRACT 3 FROM m(p)
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 4 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 9 TO p
           MOVE 0 TO m(p)
           ADD 13 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 19 FROM p
             ADD 1 TO m(p)
             ADD 21 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 11 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         ADD 1 TO p
         ADD 5 TO m(p)
         SUBTRACT 3 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 6 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 16 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 14 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 16 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 14 FROM p
           CALL 'getchr'
           IF chr GREATER THAN OR EQUAL TO ZERO THEN
             MOVE chr TO m(p)
           END-IF
           ADD 4 TO p
           ADD 8 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*10
           ADD 3 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 3 FROM p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           ADD v TO m(p)
           ADD 3 TO p
           MOVE 0 TO m(p)
           ADD 2 TO p
           MOVE 0 TO m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           ADD 6 TO p
           MOVE 1 TO m(p)
           SUBTRACT 10 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             MOVE m(p) TO v
             ADD 3 TO p
             SUBTRACT v FROM m(p)
             SUBTRACT 5 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             MOVE 0 TO m(p)
             ADD 10 TO p
             SUBTRACT 1 FROM m(p)
             SUBTRACT 10 FROM p
           END-PERFORM
           SUBTRACT 2 FROM p
           MOVE m(p) TO v
           ADD 5 TO p
           ADD v TO m(p)
           SUBTRACT 3 FROM p
           MOVE v TO m(p)
           ADD 10 TO p
           MOVE m(p) TO v
           SUBTRACT 14 FROM p
           ADD v TO m(p)
           ADD 1 TO p
           ADD v TO m(p)
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 14 TO p
           MOVE v TO m(p)
           SUBTRACT 7 FROM p
           MOVE 11 TO m(p)
           SUBTRACT 5 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             MOVE m(p) TO v
             SUBTRACT 8 FROM p
             MOVE v TO m(p)
             ADD 1 TO p
             ADD v TO m(p)
             MOVE m(p) TO v
             ADD 7 TO p
             MOVE v TO m(p)
             SUBTRACT 6 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             MOVE 0 TO m(p)
             ADD 3 TO p
           END-PERFORM
           ADD 6 TO p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 8 TO p
           ADD 3 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*5
           MOVE m(p) TO v
           ADD 1 TO p
           COMPUTE m(p) EQUAL v*5
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           MOVE v TO m(p)
           MOVE m(p) TO v
           SUBTRACT 3 FROM p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           ADD v TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           MOVE 0 TO m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           ADD 6 TO p
           MOVE 1 TO m(p)
           SUBTRACT 10 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             MOVE m(p) TO v
             ADD 3 TO p
             SUBTRACT v FROM m(p)
             SUBTRACT 5 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             MOVE 0 TO m(p)
             ADD 10 TO p
             SUBTRACT 1 FROM m(p)
             SUBTRACT 10 FROM p
           END-PERFORM
           SUBTRACT 2 FROM p
           MOVE m(p) TO v
           ADD 5 TO p
           ADD v TO m(p)
           SUBTRACT 3 FROM p
           MOVE v TO m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 5 TO p
           MOVE 1 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 7 FROM p
             MOVE m(p) TO v
             SUBTRACT 2 FROM p
             ADD v TO m(p)
             SUBTRACT 3 FROM p
             ADD v TO m(p)
             MOVE m(p) TO v
             ADD 5 TO p
             MOVE v TO m(p)
             SUBTRACT 5 FROM p
             MOVE 0 TO m(p)
             ADD 10 TO p
             ADD 1 TO m(p)
             ADD 1 TO p
           END-PERFORM
           SUBTRACT 1 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM m(p)
             ADD 1 TO p
           END-PERFORM
           ADD 1 TO p
           MOVE m(p) TO v
           SUBTRACT 14 FROM p
           ADD v TO m(p)
           ADD 1 TO p
           ADD v TO m(p)
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 14 TO p
           MOVE v TO m(p)
           SUBTRACT 7 FROM p
           MOVE 11 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             MOVE m(p) TO v
             SUBTRACT 8 FROM p
             MOVE v TO m(p)
             ADD 1 TO p
             ADD v TO m(p)
             MOVE m(p) TO v
             ADD 7 TO p
             MOVE v TO m(p)
             SUBTRACT 6 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             MOVE 0 TO m(p)
             ADD 3 TO p
           END-PERFORM
           ADD 6 TO p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 8 TO p
           ADD 4 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*6
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
           ADD 2 TO m(p)
           SUBTRACT 5 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 3 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 3 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 4 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*6
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 5 TO p
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           MOVE v TO m(p)
           SUBTRACT 2 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 3 TO p
           MOVE v TO m(p)
           ADD 3 TO p
           ADD 4 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*6
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 5 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 5 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 4 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*6
         ADD 1 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 4 TO p
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           MOVE v TO m(p)
           SUBTRACT 1 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           ADD 1 TO p
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           MOVE v TO m(p)
           MOVE m(p) TO v
           ADD 3 TO p
           MOVE v TO m(p)
           ADD 3 TO p
           ADD 4 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*6
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 2 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 2 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 2 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 4 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*6
         ADD 2 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 8 TO p
           ADD 4 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*6
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 8 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 3 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 5 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 5 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 4 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*6
         ADD 3 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 4 TO p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           MOVE v TO m(p)
           SUBTRACT 1 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           ADD 1 TO p
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           MOVE v TO m(p)
           MOVE m(p) TO v
           ADD 3 TO p
           MOVE v TO m(p)
           ADD 3 TO p
           ADD 4 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*7
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 2 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 2 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 4 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*7
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 4 TO p
           SUBTRACT 1 FROM m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           CALL 'getchr'
           IF chr GREATER THAN OR EQUAL TO ZERO THEN
             MOVE chr TO m(p)
           END-IF
           MOVE 0 TO m(p)
           SUBTRACT 4 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 22 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 14 FROM p
             ADD 1 TO m(p)
             ADD 16 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 19 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 22 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 19 FROM p
             ADD 1 TO m(p)
             ADD 21 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 11 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         ADD 1 TO p
         ADD 11 TO m(p)
         SUBTRACT 3 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 8 TO p
           ADD 4 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*7
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 8 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 3 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 3 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 4 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*7
         ADD 1 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 16 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 14 FROM p
             ADD 1 TO m(p)
             ADD 16 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 19 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 22 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 19 FROM p
             ADD 1 TO m(p)
             ADD 21 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 11 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         ADD 1 TO p
         ADD 6 TO m(p)
         SUBTRACT 3 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 17 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 5 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 3 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 5 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 13 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 3 TO p
           MOVE v TO m(p)
           ADD 3 TO p
           ADD 5 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*6
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           ADD 5 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 5 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*6
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 3 TO p
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 2 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 7 TO m(p)
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             MOVE m(p) TO v
             SUBTRACT 4 FROM p
             ADD v TO m(p)
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 4 FROM p
           MOVE m(p) TO v
           ADD 4 TO p
           MOVE v TO m(p)
           SUBTRACT 3 FROM p
           ADD 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             MOVE m(p) TO v
             SUBTRACT 8 FROM p
             ADD v TO m(p)
             ADD 1 TO p
             ADD v TO m(p)
             MOVE m(p) TO v
             ADD 7 TO p
             MOVE v TO m(p)
             SUBTRACT 6 FROM p
             SUBTRACT 1 FROM m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             MOVE 0 TO m(p)
             ADD 3 TO p
           END-PERFORM
           ADD 6 TO p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 4 TO p
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           ADD 4 TO p
           ADD 5 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*6
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 5 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*6
         ADD 1 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 3 TO p
           MOVE m(p) TO v
           ADD 12 TO p
           MOVE v TO m(p)
           SUBTRACT 13 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 7 TO m(p)
           ADD 8 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             MOVE m(p) TO v
             SUBTRACT 15 FROM p
             ADD v TO m(p)
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
             ADD 14 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 15 FROM p
           MOVE m(p) TO v
           ADD 15 TO p
           MOVE v TO m(p)
           SUBTRACT 14 FROM p
           ADD 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             MOVE m(p) TO v
             SUBTRACT 8 FROM p
             ADD v TO m(p)
             ADD 1 TO p
             ADD v TO m(p)
             MOVE m(p) TO v
             ADD 7 TO p
             MOVE v TO m(p)
             SUBTRACT 6 FROM p
             SUBTRACT 1 FROM m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             MOVE 0 TO m(p)
             ADD 3 TO p
           END-PERFORM
           ADD 6 TO p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 15 TO p
           ADD 2 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 9 FROM p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 13 TO p
           MOVE v TO m(p)
           SUBTRACT 7 FROM p
           ADD 5 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*6
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 2 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 5 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*6
         ADD 2 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 3 TO p
           MOVE m(p) TO v
           ADD 13 TO p
           MOVE v TO m(p)
           SUBTRACT 14 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           ADD 13 TO p
           MOVE m(p) TO v
           SUBTRACT 9 FROM p
           ADD 1 TO m(p)
           SUBTRACT v FROM m(p)
           SUBTRACT 5 FROM p
           MOVE v TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 16 TO p
           MOVE 0 TO m(p)
           ADD 2 TO p
           MOVE 0 TO m(p)
           SUBTRACT 9 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             MOVE m(p) TO v
             ADD 9 TO p
             SUBTRACT v FROM m(p)
             SUBTRACT 14 FROM p
             ADD v TO m(p)
             ADD 5 TO p
             MOVE 0 TO m(p)
             ADD 7 TO p
             ADD 1 TO m(p)
             SUBTRACT 7 FROM p
           END-PERFORM
           SUBTRACT 5 FROM p
           MOVE m(p) TO v
           ADD 14 TO p
           ADD v TO m(p)
           SUBTRACT 9 FROM p
           MOVE v TO m(p)
           ADD 7 TO p
           MOVE m(p) TO v
           SUBTRACT 14 FROM p
           ADD v TO m(p)
           ADD 1 TO p
           ADD v TO m(p)
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 14 TO p
           MOVE v TO m(p)
           SUBTRACT 7 FROM p
           MOVE 7 TO m(p)
           SUBTRACT 5 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             MOVE m(p) TO v
             SUBTRACT 8 FROM p
             MOVE v TO m(p)
             ADD 1 TO p
             ADD v TO m(p)
             MOVE m(p) TO v
             ADD 7 TO p
             MOVE v TO m(p)
             SUBTRACT 6 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             MOVE 0 TO m(p)
             ADD 3 TO p
           END-PERFORM
           ADD 6 TO p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 4 TO p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           ADD 4 TO p
           ADD 5 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*6
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 3 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 5 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*6
         ADD 3 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 3 TO p
           MOVE m(p) TO v
           ADD 12 TO p
           MOVE v TO m(p)
           SUBTRACT 13 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           ADD 12 TO p
           MOVE m(p) TO v
           SUBTRACT 10 FROM p
           MOVE v TO m(p)
           SUBTRACT 3 FROM p
           MOVE v TO m(p)
           MOVE m(p) TO v
           ADD 13 TO p
           MOVE v TO m(p)
           SUBTRACT 7 FROM p
           ADD 5 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*6
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 3 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 4 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 2 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 2 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 5 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*6
         ADD 4 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 7 TO p
           ADD 8 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 8 FROM p
           MOVE v TO m(p)
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 1 TO p
         ADD 7 TO m(p)
         SUBTRACT 3 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 5 TO p
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 3 TO p
           MOVE v TO m(p)
           ADD 3 TO p
           ADD 5 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*7
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 5 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*7
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 3 TO p
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 2 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 4 TO m(p)
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             MOVE m(p) TO v
             SUBTRACT 4 FROM p
             ADD v TO m(p)
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 4 FROM p
           MOVE m(p) TO v
           ADD 4 TO p
           MOVE v TO m(p)
           SUBTRACT 3 FROM p
           ADD 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             MOVE m(p) TO v
             SUBTRACT 8 FROM p
             ADD v TO m(p)
             ADD 1 TO p
             ADD v TO m(p)
             MOVE m(p) TO v
             ADD 7 TO p
             MOVE v TO m(p)
             SUBTRACT 6 FROM p
             SUBTRACT 1 FROM m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             MOVE 0 TO m(p)
             ADD 3 TO p
           END-PERFORM
           ADD 6 TO p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 4 TO p
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           ADD 4 TO p
           ADD 5 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*7
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 5 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*7
         ADD 1 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 3 TO p
           MOVE m(p) TO v
           ADD 12 TO p
           MOVE v TO m(p)
           SUBTRACT 13 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 4 TO m(p)
           ADD 8 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             MOVE m(p) TO v
             SUBTRACT 15 FROM p
             ADD v TO m(p)
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
             ADD 14 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 15 FROM p
           MOVE m(p) TO v
           ADD 15 TO p
           MOVE v TO m(p)
           SUBTRACT 14 FROM p
           ADD 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             MOVE m(p) TO v
             SUBTRACT 8 FROM p
             ADD v TO m(p)
             ADD 1 TO p
             ADD v TO m(p)
             MOVE m(p) TO v
             ADD 7 TO p
             MOVE v TO m(p)
             SUBTRACT 6 FROM p
             SUBTRACT 1 FROM m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             MOVE 0 TO m(p)
             ADD 3 TO p
           END-PERFORM
           ADD 6 TO p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 15 TO p
           MOVE m(p) TO v
           SUBTRACT 9 FROM p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 13 TO p
           MOVE v TO m(p)
           SUBTRACT 7 FROM p
           ADD 5 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*7
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 2 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 5 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*7
         ADD 2 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 3 TO p
           MOVE m(p) TO v
           ADD 13 TO p
           MOVE v TO m(p)
           SUBTRACT 14 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 4 TO m(p)
           ADD 9 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             MOVE m(p) TO v
             SUBTRACT 16 FROM p
             ADD v TO m(p)
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
             ADD 15 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 16 FROM p
           MOVE m(p) TO v
           ADD 16 TO p
           MOVE v TO m(p)
           SUBTRACT 15 FROM p
           ADD 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             MOVE m(p) TO v
             SUBTRACT 8 FROM p
             ADD v TO m(p)
             ADD 1 TO p
             ADD v TO m(p)
             MOVE m(p) TO v
             ADD 7 TO p
             MOVE v TO m(p)
             SUBTRACT 6 FROM p
             SUBTRACT 1 FROM m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             MOVE 0 TO m(p)
             ADD 3 TO p
           END-PERFORM
           ADD 6 TO p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 16 TO p
           ADD 2 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 10 FROM p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 14 TO p
           MOVE v TO m(p)
           SUBTRACT 8 FROM p
           ADD 5 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*7
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 3 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 5 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*7
         ADD 3 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 3 TO p
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 2 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 4 TO m(p)
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 3 TO p
             MOVE m(p) TO v
             SUBTRACT 8 FROM p
             ADD v TO m(p)
             ADD 1 TO p
             ADD v TO m(p)
             MOVE m(p) TO v
             ADD 7 TO p
             MOVE v TO m(p)
             SUBTRACT 3 FROM p
             MOVE m(p) TO v
             SUBTRACT 4 FROM p
             MOVE v TO m(p)
             SUBTRACT 2 FROM p
             MOVE 0 TO m(p)
             ADD 6 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 4 FROM p
           MOVE m(p) TO v
           ADD 4 TO p
           MOVE v TO m(p)
           ADD 3 TO p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 5 TO p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 3 TO p
           MOVE v TO m(p)
           ADD 3 TO p
           ADD 5 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*7
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 4 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 5 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*7
         ADD 4 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 3 TO p
           MOVE m(p) TO v
           ADD 14 TO p
           MOVE v TO m(p)
           SUBTRACT 15 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           ADD 2 TO p
           SUBTRACT 1 FROM m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           MOVE v TO m(p)
           MOVE m(p) TO v
           ADD 3 TO p
           MOVE v TO m(p)
           ADD 3 TO p
           ADD 5 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*8
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 5 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*8
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 3 TO p
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 2 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           ADD 1 TO p
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           MOVE v TO m(p)
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           ADD 4 TO p
           ADD 5 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*8
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 5 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*8
         ADD 1 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 3 TO p
           MOVE m(p) TO v
           ADD 12 TO p
           MOVE v TO m(p)
           SUBTRACT 13 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           ADD 1 TO p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           MOVE v TO m(p)
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           ADD 4 TO p
           ADD 6 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*7
           ADD 1 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           ADD 1 TO m(p)
           SUBTRACT 13 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 6 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*7
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 3 TO p
           MOVE m(p) TO v
           ADD 16 TO p
           MOVE v TO m(p)
           SUBTRACT 17 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           ADD 12 TO p
           MOVE m(p) TO v
           SUBTRACT 9 FROM p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           MOVE v TO m(p)
           MOVE m(p) TO v
           ADD 13 TO p
           MOVE v TO m(p)
           SUBTRACT 7 FROM p
           ADD 6 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*7
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 6 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*7
         ADD 1 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 3 TO p
           MOVE m(p) TO v
           ADD 13 TO p
           MOVE v TO m(p)
           SUBTRACT 14 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           ADD 5 TO p
           ADD 6 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*7
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
           MOVE 2 TO m(p)
           SUBTRACT 3 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 2 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 3 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 3 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 6 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*7
         ADD 2 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 5 TO p
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           MOVE v TO m(p)
           ADD 4 TO p
           ADD 6 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*7
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
           MOVE 2 TO m(p)
           SUBTRACT 5 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 3 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 3 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 3 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 6 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*7
         ADD 3 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 4 TO p
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           MOVE v TO m(p)
           SUBTRACT 1 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           ADD 1 TO p
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           MOVE v TO m(p)
           MOVE m(p) TO v
           ADD 3 TO p
           MOVE v TO m(p)
           ADD 3 TO p
           ADD 6 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*7
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 4 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 2 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 2 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 6 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*7
         ADD 4 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 5 TO p
           MOVE m(p) TO v
           SUBTRACT 2 FROM p
           MOVE v TO m(p)
           SUBTRACT 1 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 3 TO p
           MOVE v TO m(p)
           ADD 11 TO p
           MOVE m(p) TO v
           SUBTRACT 10 FROM p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           MOVE v TO m(p)
           MOVE m(p) TO v
           ADD 14 TO p
           MOVE v TO m(p)
           SUBTRACT 8 FROM p
           ADD 6 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*7
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 5 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 2 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 2 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 6 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*7
         ADD 5 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 5 TO p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 2 FROM p
           MOVE v TO m(p)
           SUBTRACT 1 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 3 TO p
           MOVE v TO m(p)
           ADD 12 TO p
           MOVE m(p) TO v
           SUBTRACT 11 FROM p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           MOVE v TO m(p)
           MOVE m(p) TO v
           ADD 15 TO p
           MOVE v TO m(p)
           SUBTRACT 9 FROM p
           ADD 6 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*8
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 2 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 2 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 6 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*8
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 8 TO p
           ADD 6 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*8
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
           MOVE 2 TO m(p)
           SUBTRACT 5 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 3 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 3 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 6 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*8
         ADD 1 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 4 TO p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           MOVE v TO m(p)
           SUBTRACT 1 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           ADD 1 TO p
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           MOVE v TO m(p)
           MOVE m(p) TO v
           ADD 3 TO p
           MOVE v TO m(p)
           ADD 3 TO p
           ADD 6 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*8
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 2 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 2 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 2 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 6 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*8
         ADD 2 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 5 TO p
           MOVE m(p) TO v
           SUBTRACT 2 FROM p
           MOVE v TO m(p)
           SUBTRACT 1 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 3 TO p
           MOVE v TO m(p)
           ADD 14 TO p
           MOVE m(p) TO v
           SUBTRACT 13 FROM p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           MOVE v TO m(p)
           MOVE m(p) TO v
           ADD 17 TO p
           MOVE v TO m(p)
           SUBTRACT 11 FROM p
           ADD 6 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*8
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 4 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 3 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 2 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 2 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 6 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*8
         ADD 3 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 5 TO p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 2 FROM p
           MOVE v TO m(p)
           SUBTRACT 1 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 3 TO p
           MOVE v TO m(p)
           ADD 12 TO p
           MOVE m(p) TO v
           SUBTRACT 11 FROM p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           MOVE v TO m(p)
           MOVE m(p) TO v
           ADD 15 TO p
           MOVE v TO m(p)
           SUBTRACT 9 FROM p
           ADD 3 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*4
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           COMPUTE m(p) EQUAL v*4
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           MOVE v TO m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 2 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 2 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 3 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*4
         ADD 1 TO m(p)
         MOVE m(p) TO v
         ADD 1 TO p
         COMPUTE m(p) EQUAL v*4
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         MOVE v TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 4 TO p
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 3 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           ADD 4 TO p
           ADD 3 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*4
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           COMPUTE m(p) EQUAL v*4
           ADD 1 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           MOVE v TO m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 3 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 2 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 2 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 3 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*4
         ADD 1 TO m(p)
         MOVE m(p) TO v
         ADD 1 TO p
         COMPUTE m(p) EQUAL v*4
         ADD 1 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         MOVE v TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 7 TO p
           ADD 8 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 8 FROM p
           MOVE v TO m(p)
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 1 TO p
         ADD 4 TO m(p)
         SUBTRACT 3 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 5 TO p
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 3 TO p
           MOVE v TO m(p)
           ADD 3 TO p
           ADD 6 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*9
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 6 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*9
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 3 TO p
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 2 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           ADD 1 TO p
           MOVE m(p) TO v
           ADD 7 TO p
           ADD v TO m(p)
           SUBTRACT 4 FROM p
           ADD 2 TO m(p)
           MOVE m(p) TO v
           ADD 3 TO p
           ADD v TO m(p)
           ADD 4 TO p
           MOVE 1 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 12 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 3 FROM p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 1 FROM m(p)
               SUBTRACT 1 FROM p
             END-PERFORM
             ADD 1 TO p
           END-PERFORM
           SUBTRACT 2 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM m(p)
             MOVE m(p) TO v
             SUBTRACT 3 FROM p
             ADD v TO m(p)
             SUBTRACT 3 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 6 TO p
             MOVE 0 TO m(p)
             ADD 4 TO p
             SUBTRACT 1 FROM m(p)
             SUBTRACT 6 FROM p
           END-PERFORM
           ADD 3 TO p
           MOVE m(p) TO v
           SUBTRACT 7 FROM p
           ADD v TO m(p)
           ADD 3 TO p
           MOVE 8 TO m(p)
           ADD 4 TO p
           MOVE 0 TO m(p)
           ADD 2 TO p
           ADD 1 TO m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 6 FROM p
             MOVE m(p) TO v
             SUBTRACT 8 FROM p
             MOVE v TO m(p)
             ADD 1 TO p
             ADD v TO m(p)
             MOVE m(p) TO v
             ADD 7 TO p
             MOVE v TO m(p)
             SUBTRACT 7 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             MOVE 0 TO m(p)
             ADD 15 TO p
             SUBTRACT 1 FROM m(p)
             SUBTRACT 1 FROM p
           END-PERFORM
           SUBTRACT 5 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 5 TO p
           MOVE m(p) TO v
           ADD 10 TO p
           MOVE v TO m(p)
           MOVE m(p) TO v
           SUBTRACT 9 FROM p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 13 TO p
           MOVE v TO m(p)
           SUBTRACT 7 FROM p
           ADD 6 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*9
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 6 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*9
         ADD 1 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 3 TO p
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           SUBTRACT 3 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           ADD 5 TO p
           ADD 7 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*8
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 6 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 6 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 7 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*8
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 15 TO p
           MOVE m(p) TO v
           SUBTRACT 12 FROM p
           MOVE v TO m(p)
           SUBTRACT 1 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 13 TO p
           MOVE v TO m(p)
           SUBTRACT 10 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           MOVE v TO m(p)
           MOVE m(p) TO v
           ADD 3 TO p
           MOVE v TO m(p)
           ADD 3 TO p
           ADD 7 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*8
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 2 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 2 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 7 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*8
         ADD 1 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 15 TO p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 9 FROM p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 13 TO p
           MOVE v TO m(p)
           SUBTRACT 7 FROM p
           ADD 7 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*8
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 2 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 1 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 1 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 7 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*8
         ADD 2 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 3 TO p
           MOVE m(p) TO v
           ADD 2 TO p
           MOVE v TO m(p)
           SUBTRACT 3 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           ADD 5 TO p
           ADD 7 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*8
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           ADD 3 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 6 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 6 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 7 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*8
         ADD 3 TO m(p)
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 15 TO p
           MOVE m(p) TO v
           SUBTRACT 12 FROM p
           MOVE v TO m(p)
           SUBTRACT 1 FROM p
           ADD v TO m(p)
           MOVE m(p) TO v
           ADD 13 TO p
           MOVE v TO m(p)
           SUBTRACT 10 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           MOVE v TO m(p)
           SUBTRACT 4 FROM p
           MOVE v TO m(p)
           MOVE m(p) TO v
           ADD 3 TO p
           MOVE v TO m(p)
           ADD 3 TO p
           ADD 6 TO m(p)
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           COMPUTE m(p) EQUAL m(p)+v*10
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 6 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 9 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 6 TO p
             ADD 1 TO m(p)
             ADD 7 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 11 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 6 TO p
           MOVE m(p) TO v
           SUBTRACT 6 FROM p
           MOVE v TO m(p)
           ADD 6 TO p
           MOVE 0 TO m(p)
           ADD 7 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           MOVE 1 TO m(p)
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 18 FROM p
           ADD 2 TO m(p)
           MOVE m(p) TO v
           ADD 7 TO p
           MOVE v TO m(p)
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 2 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 2 TO p
         ADD 6 TO m(p)
         MOVE m(p) TO v
         SUBTRACT 1 FROM p
         COMPUTE m(p) EQUAL m(p)+v*10
         ADD 1 TO p
         MOVE 0 TO m(p)
         SUBTRACT 4 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           ADD 15 TO p
           SUBTRACT 1 FROM m(p)
           MOVE m(p) TO v
           SUBTRACT 10 FROM p
           MOVE v TO m(p)
           ADD 10 TO p
           MOVE 0 TO m(p)
           SUBTRACT 15 FROM p
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 2 TO p
         END-PERFORM
         ADD 1 TO p
         ADD 8 TO m(p)
         SUBTRACT 3 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 17 TO p
           MOVE 0 TO m(p)
           ADD 5 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 3 FROM p
             ADD 1 TO m(p)
             ADD 5 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 19 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 22 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 19 FROM p
             ADD 1 TO m(p)
             ADD 21 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 11 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         ADD 1 TO p
         ADD 2 TO m(p)
         SUBTRACT 3 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 5 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 10 TO p
             ADD 1 TO m(p)
             ADD 85 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             MOVE 1 TO m(p)
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 93 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 10 TO p
           MOVE m(p) TO v
           SUBTRACT 10 FROM p
           MOVE v TO m(p)
           ADD 10 TO p
           MOVE 0 TO m(p)
           ADD 85 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 90 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 7 TO p
             ADD 1 TO m(p)
             ADD 85 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 90 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 7 TO p
           MOVE m(p) TO v
           SUBTRACT 7 FROM p
           MOVE v TO m(p)
           ADD 7 TO p
           MOVE 0 TO m(p)
           ADD 85 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           SUBTRACT 2 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM m(p)
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 97 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 22 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 19 FROM p
             ADD 1 TO m(p)
             ADD 21 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 11 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         ADD 1 TO p
         ADD 1 TO m(p)
         SUBTRACT 3 FROM p
         IF NOT m(p) EQUALS ZERO THEN
           MOVE m(p) TO v
           ADD 2 TO p
           SUBTRACT v FROM m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 3 FROM p
         END-IF
         MOVE 1 TO m(p)
         ADD 2 TO p
         ADD 1 TO m(p)
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM p
           MOVE m(p) TO v
           ADD 1 TO p
           SUBTRACT 1 FROM m(p)
           ADD v TO m(p)
           ADD 1 TO p
           SUBTRACT v FROM m(p)
           SUBTRACT 2 FROM p
           MOVE 0 TO m(p)
           ADD 2 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM p
             MOVE m(p) TO v
             SUBTRACT 1 FROM p
             ADD v TO m(p)
             ADD 2 TO p
             ADD v TO m(p)
             SUBTRACT 1 FROM p
             MOVE 0 TO m(p)
             SUBTRACT 2 FROM p
             SUBTRACT 1 FROM m(p)
             ADD 3 TO p
             MOVE 0 TO m(p)
           END-PERFORM
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         SUBTRACT 2 FROM p
         MOVE 0 TO m(p)
         ADD 2 TO p
         PERFORM UNTIL m(p) EQUALS ZERO
           SUBTRACT 1 FROM m(p)
           SUBTRACT 2 FROM p
           ADD 1 TO m(p)
           ADD 5 TO p
           MOVE 0 TO m(p)
           ADD 3 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 7 TO p
             ADD 1 TO m(p)
             ADD 85 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             MOVE 1 TO m(p)
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 90 FROM p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           ADD 7 TO p
           MOVE m(p) TO v
           SUBTRACT 7 FROM p
           MOVE v TO m(p)
           ADD 7 TO p
           MOVE 0 TO m(p)
           ADD 85 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 93 FROM p
             ADD 1 TO m(p)
             ADD 95 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
             ADD 1 TO p
             ADD 1 TO m(p)
             SUBTRACT 1 FROM p
           END-PERFORM
           ADD 1 TO p
           MOVE m(p) TO v
           SUBTRACT 1 FROM p
           MOVE v TO m(p)
           ADD 1 TO p
           MOVE 0 TO m(p)
           SUBTRACT 4 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 1 FROM m(p)
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 97 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 1 FROM p
           MOVE 0 TO m(p)
           ADD 22 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             ADD 2 TO p
           END-PERFORM
           SUBTRACT 2 FROM p
           SUBTRACT 1 FROM m(p)
           ADD 1 TO p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 3 FROM p
             PERFORM UNTIL m(p) EQUALS ZERO
               SUBTRACT 2 FROM p
             END-PERFORM
             SUBTRACT 19 FROM p
             ADD 1 TO m(p)
             ADD 21 TO p
             PERFORM UNTIL m(p) EQUALS ZERO
               ADD 2 TO p
             END-PERFORM
             ADD 1 TO p
             SUBTRACT 1 FROM m(p)
           END-PERFORM
           SUBTRACT 3 FROM p
           PERFORM UNTIL m(p) EQUALS ZERO
             SUBTRACT 2 FROM p
           END-PERFORM
           SUBTRACT 11 FROM p
           MOVE 0 TO m(p)
           SUBTRACT 7 FROM p
         END-PERFORM
         SUBTRACT 2 FROM p
         MOVE m(p) TO v
         ADD 2 TO p
         MOVE v TO m(p)
         MOVE m(p) TO v
         SUBTRACT 2 FROM p
         MOVE v TO m(p)
         ADD 2 TO p
         MOVE 0 TO m(p)
         SUBTRACT 1 FROM p
       END-PERFORM
       STOP RUN.

       PROGRAM-ID. getchr.
       PROCEDURE DIVISION.
       MOVE -1 TO chr
       IF goteof EQUALS 1 THEN
         EXIT PROGRAM
       END-IF
       IF gotln EQUALS ZERO THEN
         ACCEPT inpl
         MOVE 1 TO gotln
       END-IF
       IF inpl EQUALS SPACES THEN
         MOVE ZERO TO gotln
         MOVE 10 TO chr
         EXIT PROGRAM
       END-IF
       MOVE FUNCTION ORD(inpl) TO chr
       SUBTRACT 1 FROM chr
       MOVE inpl (2:) TO inpl
       EXIT PROGRAM.

       END PROGRAM getchr.
       END PROGRAM brainfuck.
