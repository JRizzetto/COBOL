      ******************************************************************
      * Author: JEFFERSON RIZZETTO
      * Date: 11/06/2025
      * Porpose: APRENDER COBOL  
      * Tectonics: cobc
      ******************************************************************
       
       IDENTIFICATION DIVISION. 
       PROGRAM-ID. A005-UNSTRING.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION. 
       77 WS-POINTER                       PIC 9(02) VALUE ZEROS.
       77 WS-CONTADOR-1                    PIC 9(02) VALUES ZEROS.
       77 WS-CONTADOR-2                    PIC 9(02) VALUES ZEROS.
       77 WS-CONTADOR-3                    PIC 9(02) VALUES ZEROS.
       77 WS-TOT-CAMPOS                    PIC 9(02) VALUES ZEROS.
       77 WS-NOME-COMPLETO                 PIC X(60) VALUES SPACES.
       77 WS-PRIMEIRO-NOME                 PIC X(20) VALUES SPACES.
       77 WS-MEIO-NOME                     PIC X(20) VALUES SPACES.
       77 WS-ULTIMO-NOME                   PIC X(20) VALUES SPACES.
       PROCEDURE DIVISION.
           
           INITIALISE                      WS-POINTER
                                           WS-CONTADOR-1
                                           WS-CONTADOR-2
                                           WS-CONTADOR-3
                                           WS-PRIMEIRO-NOME
                                           WS-MEIO-NOME
                                           WS-ULTIMO-NOME

            MOVE "ANA MARIA BRAGA"         TO WS-NOME-COMPLETO

            UNSTRING WS-NOME-COMPLETO
                     DELIMITED BY SPACES
                     INTO WS-PRIMEIRO-NOME
                          WS-MEIO-NOME
                          WS-ULTIMO-NOME
            END-UNSTRING.

            DISPLAY "PRIMEIRO NOME: "WS-PRIMEIRO-NOME
            DISPLAY "NOME DO MEIO.: "WS-MEIO-NOME
            DISPLAY "ULTIMO NOME..:"WS-ULTIMO-NOME
      ******************************************************************
      *        EXEMPLO 2 DO COMANDO UNSTRING
      ******************************************************************
           INITIALISE                      WS-POINTER
                                           WS-CONTADOR-1
                                           WS-CONTADOR-2
                                           WS-CONTADOR-3
                                           WS-TOT-CAMPOS
                                           WS-PRIMEIRO-NOME
                                           WS-MEIO-NOME
                                           WS-ULTIMO-NOME

            MOVE "ANA MARIA BRAGA"         TO WS-NOME-COMPLETO
            MOVE 1                         TO WS-POINTER

            UNSTRING WS-NOME-COMPLETO
                     DELIMITED BY SPACES
                     INTO WS-PRIMEIRO-NOME
                          WS-MEIO-NOME
                          WS-ULTIMO-NOME
                     WITH POINTER WS-POINTER
                     TALLYING IN WS-TOT-CAMPOS
            END-UNSTRING.

            DISPLAY "PRIMEIRO NOME: "WS-PRIMEIRO-NOME
            DISPLAY "NOME DO MEIO.: "WS-MEIO-NOME
            DISPLAY "ULTIMO NOME..: "WS-ULTIMO-NOME
            DISPLAY "WS-POINTER...: "WS-POINTER
            DISPLAY "WS-TOT-CAMPOS: "WS-TOT-CAMPOS
            .

      ******************************************************************
      *        EXEMPLO 3 DO COMANDO UNSTRING
      ******************************************************************
           INITIALISE                      WS-POINTER
                                           WS-CONTADOR-1
                                           WS-CONTADOR-2
                                           WS-CONTADOR-3
                                           WS-TOT-CAMPOS
                                           WS-PRIMEIRO-NOME
                                           WS-MEIO-NOME
                                           WS-ULTIMO-NOME

            MOVE "ANA*MARIA;BRAGA"         TO WS-NOME-COMPLETO
            MOVE 1                         TO WS-POINTER

            UNSTRING WS-NOME-COMPLETO
                     DELIMITED BY "*" OR ";"
                     INTO WS-PRIMEIRO-NOME
                          WS-MEIO-NOME
                          WS-ULTIMO-NOME
                     WITH POINTER WS-POINTER
                     TALLYING IN WS-TOT-CAMPOS
            END-UNSTRING.

            DISPLAY "PRIMEIRO NOME: "WS-PRIMEIRO-NOME
            DISPLAY "NOME DO MEIO.: "WS-MEIO-NOME
            DISPLAY "ULTIMO NOME..: "WS-ULTIMO-NOME
            DISPLAY "WS-POINTER...: "WS-POINTER
            DISPLAY "WS-TOT-CAMPOS: "WS-TOT-CAMPOS
            .

      ******************************************************************
      *        EXEMPLO 4 DO COMANDO UNSTRING
      ******************************************************************
           INITIALISE                      WS-POINTER
                                           WS-CONTADOR-1
                                           WS-CONTADOR-2
                                           WS-CONTADOR-3
                                           WS-TOT-CAMPOS
                                           WS-PRIMEIRO-NOME
                                           WS-MEIO-NOME
                                           WS-ULTIMO-NOME

            MOVE "ANA*MARIA;BRAGA*"         TO WS-NOME-COMPLETO
            MOVE 1                         TO WS-POINTER

            UNSTRING WS-NOME-COMPLETO
                     DELIMITED BY "*" OR ";"
                     INTO WS-PRIMEIRO-NOME COUNT IN WS-CONTADOR-1
                          WS-MEIO-NOME     COUNT IN WS-CONTADOR-2  
                          WS-ULTIMO-NOME   COUNT IN WS-CONTADOR-3
                     WITH POINTER WS-POINTER
                     TALLYING IN WS-TOT-CAMPOS
            END-UNSTRING.

            DISPLAY "PRIMEIRO NOME: "WS-PRIMEIRO-NOME
            DISPLAY "NOME DO MEIO.: "WS-MEIO-NOME
            DISPLAY "ULTIMO NOME..: "WS-ULTIMO-NOME
            DISPLAY "WS-POINTER...: "WS-POINTER
            DISPLAY "WS-TOT-CAMPOS: "WS-TOT-CAMPOS
            DISPLAY "WS-CONTADOR-1: "WS-CONTADOR-1
            DISPLAY "WS-CONTADOR-2: "WS-CONTADOR-2
            DISPLAY "WS-CONTADOR-3: "WS-CONTADOR-3
            .

      ******************************************************************
      *        EXEMPLO 4 DO COMANDO UNSTRING
      ******************************************************************
           INITIALISE                      WS-POINTER
                                           WS-CONTADOR-1
                                           WS-CONTADOR-2
                                           WS-CONTADOR-3
                                           WS-TOT-CAMPOS
                                           WS-PRIMEIRO-NOME
                                           WS-MEIO-NOME
                                           WS-ULTIMO-NOME

            MOVE "ANA*MARIA;;;;BRAGA*"         TO WS-NOME-COMPLETO
            MOVE 1                         TO WS-POINTER

            UNSTRING WS-NOME-COMPLETO
                     DELIMITED BY '*' OR ALL ';'
                     INTO WS-PRIMEIRO-NOME COUNT IN WS-CONTADOR-1
                          WS-MEIO-NOME     COUNT IN WS-CONTADOR-2  
                          WS-ULTIMO-NOME   COUNT IN WS-CONTADOR-3
                     WITH POINTER WS-POINTER
                     TALLYING IN WS-TOT-CAMPOS
            END-UNSTRING.

            DISPLAY "PRIMEIRO NOME: "WS-PRIMEIRO-NOME
            DISPLAY "NOME DO MEIO.: "WS-MEIO-NOME
            DISPLAY "ULTIMO NOME..: "WS-ULTIMO-NOME
            DISPLAY "WS-POINTER...: "WS-POINTER
            DISPLAY "WS-TOT-CAMPOS: "WS-TOT-CAMPOS
            DISPLAY "WS-CONTADOR-1: "WS-CONTADOR-1
            DISPLAY "WS-CONTADOR-2: "WS-CONTADOR-2
            DISPLAY "WS-CONTADOR-3: "WS-CONTADOR-3
            .

            STOP RUN.
       END PROGRAM A005-UNSTRING.