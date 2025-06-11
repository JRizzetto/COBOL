      ******************************************************************
      * Author: JEFFERSON RIZZETTO
      * Date: 20/01/2021
      * Porpose: APRESENTA O RESULTADO DA SOMA
      *          DE DOID NUMEROS ALEATORIOS
      * Tectonics: PGEX001
      ******************************************************************
       
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. PGEX001.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION. 
       01 WS-NUMERO-1         PIC 9(003) VALUE ZEROS.
       01 WS-NUMERO-2         PIC 9(003) VALUE ZEROS.
       01 WS-RESULTADO         PIC 9(004) VALUE ZEROS.
       PROCEDURE DIVISION.
            DISPLAY "MOSTRAR O RESULTADO DA SOMA DE DOIS NUMEROS"
            DISPLAY "DIGITE O PRIMEIRO NUMERO: "

            ACCEPT WS-NUMERO-1

            DISPLAY "DIGITE O SEGUNDO NUMERO: "    

            ACCEPT WS-NUMERO-2 

            COMPUTE WS-RESULTADO = WS-NUMERO-1 + WS-NUMERO-2

            DISPLAY "O RESULTADO EH: " WS-RESULTADO

            IF WS-RESULTADO > 10 THEN 
               DISPLAY "VERDADEIRO " WS-RESULTADO " EH MAIOR QUE 10"
            ELSE 
               DISPLAY "FALSO " WS-RESULTADO " EH MENOR QUE 10"
            END-IF.

            STOP RUN.
       END PROGRAM PGEX001.
