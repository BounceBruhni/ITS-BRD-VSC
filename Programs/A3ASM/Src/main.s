;************************************************
;* Beginn der globalen Daten *
;************************************************
                   AREA MyData, DATA, align = 2
Base
VariableA          DCW 0x1234
VariableB          DCW 0x4711

VariableC          DCD  0

MeinHalbwortFeld   DCW 0x22 , 0x3e , -52, 78 , 0x27 , 0x45

MeinWortFeld       DCD 0x12345678 , 0x9dca5986
                   DCD -872415232 , 1308622848
                   DCD 0x27000000
                   DCD 0x45000000

MeinTextFeld       DCB "ABab0123",0

                   EXPORT VariableA
                   EXPORT VariableB
                   EXPORT VariableC
                   EXPORT MeinHalbwortFeld
                   EXPORT MeinWortFeld
                   EXPORT MeinTextFeld

;***********************************************
;* Beginn des Programms *
;************************************************
    AREA |.text|, CODE, READONLY, ALIGN = 3
; ----- S t a r t des Hauptprogramms -----
                EXPORT main
                EXTERN initITSboard
main            PROC
                bl    initITSboard                 ; HW Initialisieren

; Laden von Konstanten in Register
                mov   r0,#0x12                      ; Anw-01: Schreibt 0x12 in r0
                mov   r1,#-128                      ; Anw-02: Schreibt -128 als 2er-Komplement in r1
                ldr   r2,=0x12345678                ; Anw-03: Schreibt 0x12345678 in r2

; Zugriff auf Variable
                ldr   r0,=VariableA                 ; Anw-04: schreibt Speicheradresse von VariableA in r0
                                                    ;        (ldr ist Pseudoanweisung, hier entscheidet sich der Assembler für mov)
                ldrh  r1,[r0]                       ; Anw-05: lädt LS-Halbwort aus Adresse aus r0, in r1
                ldr   r2,[r0]                       ; Anw-06: schreibt wort aus Adresse aus r0 in r2 (Wort bzw. 32bit ist default von ldr) 
                str   r2,[r0,#VariableC-VariableA]  ; Anw-07: schreibt Wort aus r2 an: Adresse aus r0 + (VariableC-VariableA * Bytes) 

; Zugriff auf Felder (Speicherzellen)
                ldr   r0,=MeinHalbwortFeld          ; Anw-08: schreibt Adresse von MeinHalbwortFeld in r0
                ldrh  r1,[r0]                       ; Anw-09: schreibt halbwort(ls 16bit) aus Adresse aus r0 in r1
                ldrh  r2,[r0,#2]                    ; Anw-10: verschiebt LSB in Adresse aus r0 um 2 Bytes nach "rechts" und nimmt das dortige ls-Halbwort und schreibt es in r2 
                mov   r3,#10                        ; Anw-11: Schreibt 10 in r3 (Bits ?)
                ldrh  r4,[r0,r3]                    ; Anw-12: Schreibt ls-Halbwort aus Adresse r0 + (r3*Bytes) in r4

                ldrh  r5,[r0,#2]!                   ; Anw-13: Schreibt Halbwort aus Adresse r0 + 2 Bytes(2*8bit) in r5 und erhöht r0 um 2 Bytes.
                ldrh  r6,[r0,#2]!                   ; Anw-14: Schreibt Halbwort aus Adresse r0 + 2 Bytes(2*8bit) in r6 und erhöht r0 um 2 Bytes.
                strh  r6,[r0,#2]!                   ; Anw-15: Schreibt Halbwort aus r6 an um 2 Bytes erhöhte Adresse aus r0 und erhöht Adresse aus r0 um 2 Bytes.

; Addition und Subtraktion von unsigned / signed Integer-Werten
                ldr  r0,=MeinWortFeld               ; Anw-16: schreibt Adresse von MeinWortFeld in r0
                ldr  r1,[r0]                        ; Anw-17: schreibt Wort aus Adresse aus r0 in r1
                ldr  r2,[r0,#4]                     ; Anw-18: schreibt Wort aus Adresse aus r0 + 4 Bytes in r2
                adds r3,r1,r2                       ; Anw-19: Schreibt die Summe von r1 und r2 in r3, setzt die Flags entsprechend (unsigned addition(v-Flag))

                ldr  r4,[r0,#8]                     ; Anw-20: Schreibt Wort aus Adresse aus r0 + 8 Bytes(lsb 8 Bytes später) in r4
                ldr  r5,[r0,#12]                    ; Anw-21: Schreibt Wort aus Adresse aus r0 + 12 Bytes in r5
                subs r6,r4,r5                       ; Anw-22: Schreibt die Differenz von r4 und r5 in r6, setzt die Flags entsprechend (unsigned subtraction(c-Flag))

                ldr  r7,[r0,#16]                    ; Anw-23: Schreibt Wort aus Adresse aus r0 + 16 Bytes in r7
                ldr  r8,[r0,#20]                    ; Anw-24: Schreibt Wort aus Adresse aus r0 + 20 Bytes in r8
                subs r9,r7,r8                       ; Anw-25: Schreibt die Differenz von r7 und r8 in r9)

forever         b   forever                         ; Anw-26
                ENDP
                END
