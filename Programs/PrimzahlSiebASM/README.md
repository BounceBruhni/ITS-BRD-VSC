1. Eratosthenes implementieren für besseres Verständnis:

Java-Version von Eratosthenes-Sieb:

public class Eratosthenes_Sieb {

    //Sieb-Funktion:
    public static Boolean[] Eratosthenes(int a, int b) {
        //boolean-Array-Länge berechnen:
        if (b <= a) {
            return new Boolean[0]; // Edge case: invalid range
        }

        int n = b - a + 1; // Include both a and b in Array

        Boolean[] isPrim = new Boolean[n];

        for (int i = 0; i < n; i++) {
            isPrim[i] = true; //true: i ist Primzahl
        }
        // 0 and 1 are not primes
        if (a <= 0) {
            isPrim[0 - a] = false;
        }
        if (a <= 1) {
            isPrim[1 - a] = false;
            //
            for (int i = 2; i < n; i++) {
                if (isPrim[i] == true) {
                    for (int i_multiply = i * i; i_multiply < n; ++i) {
                        //setzt alle vielfachen von isPrim[i] == false, ab i*i:
                        isPrim[i_multiply] = false;
                    }
                }
            }

        }
        // Print the array
        for (int i = 0; i < n; i++) {
            System.out.print(isPrim[i] + " ");
        }
        return isPrim;
    }
}

2. Speicheraufbau, siehe Excel-Tabelle