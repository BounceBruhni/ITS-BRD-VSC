    ldr     R0,=VariableA   ; Anw01: Speicher-Referenz von VariableA wird in R0 gespeichert.
    ldrb    R2,[R0]         ; Anw02: LSB, des Inhalts, welcher an der Speicheradresse R0 steht, wird in R2 gespeichert (0xef).
    ldrb    R3,[R0,#1]      ; Anw03: 2tes Byte, welches an Adresse aus R0 steht, wird in R3 gespeichert. #1 = AnzahlVerschiebungen 
    lsl     R2, #8          ; Anw04: Left-shift. Alle Bits um 8 Stellen nach links. Wenn Zielbit außerhalb von Speichbereich: beim LSB fortfahren.
    orr     R2, R3          ; Anw05: xor zwischen Bits aus R2 und R3. Ergebnis in R2 abgelegt. 
    strh    R2,[R0]         ; Anw06: Nimmt Least Significant Halbwort aus R2 (1. 2 Bytes) und speichert sie an Adresse aus R0.