;************************************************
;* Beginn der globalen Daten *
;************************************************
                   AREA MyData, DATA, align = 2
Base

;00000001 steht für nicht prim
;00000000 steht für prim
;sonst müssten wir erst mal in alle felder 00000001 eintragen(wäre ineffizienter)

; reserviere 1000 bytes im Speicher für das Ergebnis in einem Feld
; Speichern der Startadresse des Ergebnis Felds in R0
; Speichern von 0x2 in einem Register R1.
; Weise der Speicheradresse des Feldes 1 Byte mit Nullen zu

; Speichere den Wert R1 in R2

;loop 1
    ; R1 = R1 + R1
    ; Speicheradresse R0 + R1 wird auf 00000001 gesetzt
    ; ist R1 grösser als 1000:
        ;ja: springe zu x
        ;nein: springe zu loop 1

; ERGEBNISFELD anlegen mit DCW gespeichert in R8

; STARTFELDADRESSE gespeichert in R0
; INDEXWERT gespeichert in R1 - wird am Anfang gesetzt auf 0x1
; VIELFACHES gespeichert in R2 - wird am Anfang nicht gesetzt


; SIEB

; LOOP 1 (INDEXSCHLEIFE)
    ; R1 = R1 + 0x1
    ; R2 = R1 * R1
    ; IST INDEX R1 grösser 1000: Springe zu ENDE
    ; IST Speicheradresse R0 + R1 == 0b00000000: Springe zu LOOP 1

    ; LOOP 2 (VIELFACHE)
    ; IST R2 grösser als 1000: Springe zu LOOP 1
    ; R2 = R2 + R1
    ; Speicheradresse STARTFELDADRESSE + R2 = 0b00000001
    ; Springe zu LOOP 2
    



; SPEICHER
; SETZE R9 auf die STARTADRESSE R0 - 0x1

; LOOP 3
; IST R9 == R0 + 1000: SPRINGE zu END
; R9 = R9 + 0x1
; IST R9 == 0b00000001: springe zu LOOP 3
; R10 = R9 - R0
; Speicher R8 & erhöhe R8 um 0x2
; Springe zu LOOP 3






; ENDE
