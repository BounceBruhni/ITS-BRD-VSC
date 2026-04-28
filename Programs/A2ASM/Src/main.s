;******************** (C) COPYRIGHT HAW-Hamburg ********************************
;* File Name          : main.s
;* Author             : Martin Becke    
;* Version            : V1.0
;* Date               : 01.06.2021
;* Description        : This is a simple main to demonstrate data transfer
;                     : and manipulation.
;                     : 
;
;*******************************************************************************
    EXTERN initITSboard ; Helper to organize the setup of the board

    EXPORT main         ; we need this for the linker - In this context it set the entry point,too

ConstByteA  EQU 0xaffe ;setzt ConstByteA dem Wert 0xaffe gleich
    
;* We need some data to work on
    AREA DATA, DATA, align=2    
VariableA   DCW 0xbeef ; word, reserves 32bit for VariableA
VariableB   DCW 0x1234 ; word, reserves 32bit for VariableB
VariableC DCW 0xaffe ;Hilfsvariable

;* We need minimal memory setup of InRootSection placed in Code Section 
    AREA  |.text|, CODE, READONLY, ALIGN = 3    
    ALIGN   
main
    BL initITSboard             ; needed by the board to setup
;* swap memory - Is there another, at least optimized approach?
    ldr     R0,=VariableA   ; Anw01: lädt Speicheradresse von VariableA in R0, d.h. Referenz zu VariableA wird in R0 gespeichert.
    ldrb    R2,[R0]         ; Anw02:  lädt ein Byte des Wertes (von "rechts", d.h. ab dem niedrigsten Stellenwert (Least Significant Byte LSB)), der an der in R0 gespeicherten Adresse zu finden ist, in R2.
    ldrb    R3,[R0,#1]      ; Anw03: Das 2 Byte des Inhalts welcher in der Speicheradresse aus R0 steht, wird in R2 gespeichert. 
                            ;       #1 gibt Anzahl der Verschiebungen um Größe der Einheit an(hier: 1 Byte)
    lsl     R2, #8          ; Anw04: left-shift-operation wird durchgeführt. Alle Bits werden um #8 Stellen nach links verschoben. 
                            ;        Falls Zielbit nicht in Speichergröße liegt, wird die Verschiebung an der Position des LSB fortgeführt. 
                            ;        Es gilt: Zielposition = (Position + Verschiebung) mod speichergroeße
    orr     R2, R3          ; Anw05  xor-Operation, die den Inhalt von R2 und R3 entsprechend vergleicht. Ergebnis wird in R2 gespeichert.
    strh    R2,[R0]         ; Anw06 Speichert das least Significant halbwort des Wertes, welcher an der Speicheradresse aus R0 gespeichert ist, in R2.
    
;* const in var
    mov     R5,#ConstByteA  ; Anw07: bewegt den hex-Wert für den ConstByteA äquivalent ist, in 
    strh    R5,[R0]         ; Anw08: speichert r5 ein halbwort des Inhaltes, der Adresse aus R0, ab dem LSB.
    
;* Change value from x1234 to x4321
    ldr     R1,=VariableB   ; Anw09
    ldrh    R6,[R1]         ; Anw0A
    mov     R7, #0x30ED     ; Anw0B
    add     R6, R6, R7      ; Anw0C
    strh    R6,[R1]         ; Anw0D
    b .                     ; Anw0E
    
    ALIGN
    END

