1. Eratosthenes implementieren für besseres Verständnis:

Java-Version von Eratosthenes-Sieb und Speicher

import java.util.Arrays;

public class Eratosthenes_Sieb {

    //Sieb-Funktion:
    public static Boolean[] Eratosthenes(int a, int b) {
        if (b <= a) {
            return new Boolean[0]; // Edge case: invalid range
        }

        int n = b - a + 1; // Größe des Arrays
        Boolean[] isPrim = new Boolean[n];

        // Initialisiere alle Einträge als true
        for (int i = 0; i < n; i++) {
            isPrim[i] = true;
        }

        // 0 und 1 sind keine Primzahlen
        if (a <= 0 && 0 <= b) {
            isPrim[0 - a] = false;
        }
        if (a <= 1 && 1 <= b) {
            isPrim[1 - a] = false;
        }

        // Markiere Vielfache als nicht-prim
        for (int i = 2; i * i <= b; i++) {
            // Finde den ersten Vielfachen von i im Intervall [a, b]
            int firstMultiple = Math.max(i * i, ((a + i - 1) / i) * i);
            // finde restliche Vielfache von i im Intervall [a, b]
            for (int j = firstMultiple; j <= b; j += i) {
                isPrim[j - a] = false;
            }
        }

        // isPrim-Array ausgeben (Kontrolle)
        for (int i = 0; i < isPrim.length; i++) {
            System.out.print((i + a) + ": " + isPrim[i] + " ");
        }

        return isPrim;
    }
    //Anm.: in Assembler-Version: true == 00000000 ; false == 00000001;

    // gibt Feld(hier: Integer-Array) mit Primzahlen aus betrachtetem Intervall zurück
    public static int[] Speichern(Boolean[] isPrim) {
        int ergebnis_length = isPrim.length;
        int[] ergebnis = new int[ergebnis_length];
        for (int i = 0; i < ergebnis_length; i++) {
            if (isPrim[i] == true) {
                ergebnis[i] = i;
            }
        }
        System.out.println(Arrays.toString(ergebnis)); //Kontrollausgabe
        return ergebnis;
    }
}

2. Speicheraufbau, siehe Excel-Tabelle