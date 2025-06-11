      ******************************************************************
      * Author: 
      * Date: 
      * Porpose: 
      *          
      * Tectonics: cobc
      ******************************************************************
       
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. A004-VARIAVEIS.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION. 
       01 WS-FUNCIONARIO.
          03 WS-NOME-FUNC                      PIC A(20) VALUE SPACES.
          03 WS-TEL-FUNC                       PIC X(09) VALUE SPACES.
          03 WS-ENDER-FUNC                     PIC X(45) VALUE SPACES.
          03 FILLER REDEFINES WS-ENDER-FUNC.
                05 WS-RUA-FUNC                 PIC X(20).
                05 WS-NUMERO-FUNC              PIC 9(05).
                05 WS-PTO-REF-FUNC             PIC X(20).
          03 WS-SALA-FUNC                      PIC 9(04)V99.
       77 WS-AUX-SALARIO                       PIC Z.ZZ9,99.

       PROCEDURE DIVISION.
            MOVE "JEFFERSON RIZZETTO  9999-9999 RUA DAS PALMEIRAS  15" &
                 "   ESQUINA DA PIZZA    354112"
            TO WS-FUNCIONARIO

            MOVE WS-SALA-FUNC                  TO WS-AUX-SALARIO.

            DISPLAY "NOME: "WS-NOME-FUNC
            DISPLAY "TELEFONE: "WS-TEL-FUNC
            DISPLAY "RUA: "WS-RUA-FUNC
            DISPLAY "NUMERO: "WS-NUMERO-FUNC
            DISPLAY "REFERENCIA: "WS-PTO-REF-FUNC
            DISPLAY "SALARIO: "WS-AUX-SALARIO
           

            STOP RUN.
       END PROGRAM A004-VARIAVEIS.
