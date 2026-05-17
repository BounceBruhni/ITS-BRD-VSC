; Anlegen eines FELD Primzahlen
; Ablegen der Speicheradresse in einem Register des Feldes Sieb           (STARTADRESSE_SIEB)
; Ablegen der Speicheradresse in einem Register des Feldes Primzahlen     (STARTADRESSE_PRIMZAHLEN)
; Ablegen von 0x2 in einem Register                                       (INDEX_SIEB)
; Ablegen von 0x2 in einem Register                                       (INDEX_PRIMZAHLEN)



; Anlegen eines LOOP Labels SIEB
; Abbruchbedingung   - INDEX_SIEB grösser 32 (Wurzel 1000)?: Verlasse LOOP
; CONTINUE-Bedingung - Ist Speicher an STARTADRESSE_SIEB + (INDEX_SIEB - 2) == 0x00?: Sprung zu "Erhöhung INDEX + 0x1"
; Berechnung nächstes Vielfachen: INDEX_SIEB * INDEX_SIEB                    (VIELFACHES)

; Anlegen eines LOOP Labels VIELFACHE
; Speichern an STARTADRESSE_SIEB + (INDEX_SIEB - 2): 0x01
; Erhöhen von VIELFACHES: VIELFACHES = VIELFACHES + INDEX_SIEB
; Abbruchbedingung: IST VIELFACHES grösser 1000?: Sprung zu "Erhöhung INDEX + 0x1"

; Erhöhung INDEX + 0x1
; Sprung zu LOOP SIEB


...