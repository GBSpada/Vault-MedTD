17-03-2023 09:07
Stato: #ideaLez 
Tag: #ArchitettureDiCalcolo 

# Recap
Fondamentalmente ci sono problemi legati alla possibilità di rappresentare tutti i numeri, risolti da particolari tipi di notazioni

# Notazioni bit

- Notazione posizionale
    - Le cifre nel numero assumono un valore diverso a seconda della posizione in cui si trovano
        - Esempio: **notazione decimale**
            - ![Notazione posizionale](https://i.imgur.com/kVNLo62.png)
            - 5798,46
            - l'8 dopo la virgola assume il significato di unità perché moltiplicato per 10^0
            - Il 9 assume il significato di decina e quindi viene moltiplicato per 10^1
    - Vari sistemi
        - Decimale
        - Binario
            - Ogni cifra è detta bit
                - **B**inary dig**it**
        - Ottale
        - Esadecimale
            - Struttura
                - b = 16
                - Cifre da 0 a 9 e caratteri da A a F
            - Si usa nel linguaggio **assembly**
                - Per una questione di
                    - Compattezza
                    - è semplice convertire da binario a esadecimale
                        - vedere esempi successivi
        - **Esempi e conversioni**
            - ![Esempi notazioni posizionali](https://i.imgur.com/rNKwiZ8.png)
            - **Binario-decimale**
                - Per la conversione da binario,ottale etc. a decimale basta sommare
            - **Decimale - binario**
                - **Programma**
                    - ![Schema per programma di conversione dec-binary](https://i.imgur.com/qvPWzpP.png)
                - **Metodo 1: per numeri anche con la virgola**
                    - Si  procede sottraendo al numero da decomporre la più grande potenza di 2 minore del numero da decomporre
                    - Il processo viene applicato ricorsivamente
                    - il risultato binario si ottiene ponendo a uno le cifre corrispondenti alle potenze che sono astate utilizzate nella decomposizione
                        - **Esempio**
                            - ![Conversione da decimale a bianrio](https://i.imgur.com/ytNIxHB.png)
                            - Potenza di 2 più grande allo stesso tempo più piccola di 1492?
                                - 1024 o 2^10
                                - e cosi via
                            - Alla fine
                                - in decima posizione c'è 2^10? 
                                    - Si
                                    - Si segna 1
                                - in nona posizione c'è 2^9?
                                    - No
                                    - si segna zero
                    - **Metodo 2: solo con numeri interi**
                        - ![Metodo 2 conversione decimale binario](https://i.imgur.com/KQTrSVF.png)
                        - Si divide per 2, il resto (0 o 1) farà parte del risultato mentre il quoziente verrà utilizzato come input al passo di ricorsione
            - **Esadecimale - Binario**:
                - Le lettere fondamentalmente hanno un valore numerico
                    - La D ha 16, la A ha 11 etc etc
            - **Binario-ottale**
                - Come tutti i sistemi multipli di due
                - Applicabile anche all'*esadecimale*
                - Una cifra del sistema ottale è rappresentabile da tre cifre del sistema binario
                    - La conversione avviene raggruppando le cifre a 3 a 3 dalla virgola binaria
                - **Esempio**
                    - il gruppo di cifre 001 in binario rappresenta il numero 1
                        - In ottale si scrive direttamente 1
                        - 

- Multipli del bit
    - Il bit è l'unità minima
        - Più ne abbiamo disponibili più aumentano, esponenzialmente le possibili combinazioni
            - https://i.imgur.com/PWGS3f7.png
    - Il byte rappresenta 8 bit
    - Il word è un multiplo del byte
        - Multiplo di 8 nei moderni calcolatori
    - Per manipolare miliardi di bit si adoperano però multipli
        - ![Multipli del bit](https://i.imgur.com/NsxGaLd.png)
        - Notare che tra rispetto ai multipli di 10 c'è una differenza di circa 2%
            - Risparmio hard disk

- Numeri binari negativi
    - **COMPLEMENTO A DUE**
        - **Procedimento**
            - ![Complemento a 2](https://i.imgur.com/7Xc8caW.png)
            - Si ottiene il modulo
            - Si invertono tutti i bit 
                - Complemento a 1
            - Per il complemento a due si somma un bit al risultato
                - **Somma di bit**
                    - ![Somma](https://i.imgur.com/jhFZbpK.png)
                    - Problemi
                        - Overflow
                            - Nel secondo box di somma il risultato è 159
                            - Il problema è che 159 è maggiore di 127 e c'è overflow
                            - Il pc però non ha bisogno di verificare che 159 sia maggiore di 127
                                - **Basta che le ultime due cifre del riporto siano discordanti per avere overflow**
                                - **Al contrario la somma di due numeri di segno discorde non può generare overflow**
                        - Il riporto può generare un bit in più che può essere ignorato a meno 
                            - Nel terzo blocco, ultima cifra a sinistra, si genera un riporto che però non risulta problematico in quanto non genera overflow perché uguale al riporto precedente
            - Il bit più a sinistra viene utilizzato per il segno
        - **Caratteristiche peculiari**
            - Permette di fare una differenza semplicemente con un una negazione in un circuito di somma
            - Permette di avere una sola rappresentazione per lo zero
                - Il che (NOOOOOO) non garantisce di avere lo stesso numero di numeri positivi e negativi
                    - ![dimezzamento intervallo binari positivi](https://i.imgur.com/SZWhIgj.png)
                - Es: 128 negativi e 127 positivi se 0 è assegnato ai numeri negativi
    - **Approccio grandezza e segno**
        - la prima cifra rappresenta il segno
            - ![Grandezza e segno](https://i.imgur.com/YCRgC26.png)
        - 0 = +
        - 1 = -
- Mascherature di bit
    - Una qualsiasi configurazione di un insieme di bit di lunghezza predefinita
    - Ad una sequenza di bit si più associare qualsiasi significato/informazione
    - **Operazioni bitwise**
        - ![Operatori AND e OR bitwise](https://i.imgur.com/qhPjsOc.png)
        - Adoperano questo sistema di mascherature
        - Si basano sull'algebra booleana
            - ![Operatori](https://i.imgur.com/RyY3sLO.png)
        - **OR**
            - Può essere usato per far assumere un valore ad una determinata posizione
            - ![](https://i.imgur.com/6OllMYU.png)
        - **ESERCIZI**
            - ![](https://i.imgur.com/Gd8ZEmg.png)
                - Primo
                    - x = 0 1 1 0 
                    - Creare la maschera che verifichi la presenza dell'1 sulla sequenza X
                        - 1 0 1 0 perché lui mi ha chiesto sulla prima e sulla terza cifra
                    - Fare l'AND
                        - Risultato = 0 0 1 0
                    - Y != da 0 perche 0 0 1 0 = 2
                        - La condizione non è verificata
- **Floating point**
    - Molti problemi di calcolo richiedono valori estremamente vasti e difficili da gestire
        - Un numero come 0, 0003754 ad esempio
            - Se allocassimo dei bit così
                -  0 0 0 0 ,  0 0 0 0
                    - 4 cifre prima e dopo la virgola
                - Ci ritroveremmo con (x per spazio sprecato o valori non rappresentati)
                    - x x x 0 , 0 0 0 3 x x x
        - Un numero di ordine di grandezza 10^-30
            - Ha sicuramente delle cifre più importanti e altre magari imprecise (massa del sole)
    - Si risolve così
        -  ![](https://i.imgur.com/q4mvZlt.png)
        - Esempio
            - ![Esempi float](https://i.imgur.com/VAHcnQI.png)
    - Standard
        - ![Formati float](https://i.imgur.com/xvOaSEW.png)
        - Due possibili formati 
            - Singola precisione
                - ![Float a singola precisione](https://i.imgur.com/BjmvFEf.png)
            - Doppia precisione
                - ![Float a doppia precisione](https://i.imgur.com/Lbd7sbU.png)

# Algebra booleana e porte logiche

> Un particolare tipo di algebra in cui le variabili possono solo avere valori 0 e 1
## Tabella di verità
Una funzione booleana con n variabili di input ha 2^n combinazioni descrivibili con una *tabella di verità* con 2^n righe
![Tabella di verità](https://i.imgur.com/nGZcLrH.png)
### Rappresentazioni sintetiche
#### Solo la colonna dell'output
![](https://i.imgur.com/G5QADOo.png)
- Ordinando le righe dell'input come numeri binari
#### Prima forma canonica
![](https://i.imgur.com/McdIEkL.png)

## Operatori/porte logiche
![Operatori booleani](https://i.imgur.com/RyY3sLO.png)
### Operatori di base
- AND,OR,NOT
- Tutti gli altri operatori si ottengono in funzione di questi
### Porte composte
- Il pallino è il simboli della negazione
- Con NAND e NOR si possono comporre tutti i circuiti possibili



3,1415926535 9879323846 2643383279

---
# References 
[[Architetture e Sist. di calcolo - Slide e lezioni]]
