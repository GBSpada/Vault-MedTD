06-03-2023 16:10
Stato: #ideaLez
Tag: #Bioinformatica 

# Intro sequenze
- Tipologie di dati molto diffuse in biologie e che presentano alcuni problemi nella loro analisi
- Rappresentano tantissime caratteristiche biologiche
    - geni, genomi, proteine
- Definite in un *alfabeto* 
    - Nucleotidi
        - ACGT
    - Amminoacidi
        - 20 
# Allineamento di sequenze
- Problemi classici
    - Capire se una determinata sequenza sia uguale o simile a qualche sequenza già codificata
## Algoritmi
### Distanza di Hamming - Sostituzione
- Funziona ad ==allineamento diretto==
    - Le stringhe vengono messe una sotto l'altra e posizione per posizione si osserva se sono uguali o meno
#### Esempio
 | 
--- | ---- | -- | - | - | 
A | G | T | C | A
A | C | G | T | C
A | - | - | - | -

- **Similarità** = 1/5 oppure **Dissimilarità o Distanza** = 4/5
#### Costo
> n caratteri ----> costo = n
### Distanza di Levenshtein - Sost, Ins, Del
- Consente inserimenti, cancellazioni e sostituzioni

#### Esempio

![Distanza di levenshtein 1](https://i.imgur.com/9yzlJ78.png)
- Simboli
    - \- = togliere
    - | = lasciare
- In questo caso due operazioni totali
    - Distanza di Levenshtein = 2
#### Algoritmo
![Algoritmo levenshtein](https://i.imgur.com/SyE0yxI.png)
- Programmazione dinamica
- Se le due lettere coincidono
    - Nella cella di intersezione si mette il numero della cella diagonalmente collegata
```python
Se S1[i] = S2 [j] 
    D[i,j] <- D[i-1,j-1]
```
- Se le due lettere non coincidono
    - Si prende il numero più piccolo delle 3 celle contigue
        - Sx, in alto e in diagonale
    - Si aggiunge 1 a quel numero
```python
Se S1[i] =/= S2[j] 
    D[i,j] <- min(D[i,j-1],D[i-1,j])+1 
```
##### Costo
- n^2

#### Percorso
![Levenshtein percorso](https://i.imgur.com/juzAeB7.png)

### Distanza Damereau/levenshtein - Scambio
- Le sostituzioni vengono considerate a costo 1
- In alcuni casi gli interventi sono più sostanziali
    - Si calcola allora anche il peso di costruzione della matrice per la sostituzione
        - Matrici *PAM*
            - Viene visto con quale probabilità avvengono determinate sostituzioni
                - Sostituzioni molto probabili = costo poco elevato
        - Matrici *BLOSUM*
            - Utilizza una banca dati più ricca della precedente
            - Le proteine vengono raccolte per blocchi e sulla base di questi viene valutata la probabilità di sostituzione
            - Viene assegnato il valore **BLOSUM62**
#### Esempio 1 
A**GT**CA
A**TG**CA
- Un semplice scambio
#### Esempio 2 e operazioni
- Non ordinati
    - A  GATCA
    - ACGCTC
- Semi-Ordinati
    - Sequenze
        - A**C**G==A==TCA
        - ACG==C==TC**A**
    - Operazioni
        - **C e A** riempiono dei gap grazie ad operazioni di:
            - *Indel* : inserimenti e cancellazioni
            - Distinte sulla base della loro lunghezza
                - **Errori di trascrizione**
                    - Da 1 a 5 basi
                - **Inserimento**
                    - fino a 30kbp
                - **Ricombinazione genetica**
                    - 30kbp
        - ==A e C== sono dei *missmatch*
            - Mutazioni di sequenza

 
### Allineamento globale e locale
> I seguenti algoritmi esatti ritornano il giusto allineamento globale o locale ma sono così precisi da avere un costo computazionale troppo elevato
#### Sequenze di esempio
ABCDEFGHIL 
DGL

#### Allineamento globale
![Allineamento globale](https://i.imgur.com/avYJ9fd.png)

- Allineamento ideale
    - Minimizza la distanza
- Disperde però l'allineamento
- Algoritmo di **NEEDLEMAN - WUNSH"**

#### Allineamento locale
![Allineamento locale](https://i.imgur.com/HO98Tbr.png)

- Allineamento compattato ma commette 9 errori
- Algoritmo di **SMITH - WATERMAN**
- Cerca di aprire meno gap possibili spezzettando poco la stringa
# Codice
## Libreria
```python
pip3 install biopython # un pacchetto scritto per gestire dati di tipo bio
import Bio
import Bio.Seq # consente di gestire sequenze
```
## Operazioni su sequenze
```python
my_seq = Bio.Seq.Seq("ACGGTAC") 
my_seq # definisce una sequenza composta dai caratteri tra parentesi 
my_seq.find("AC") # restituisce 0, in quanto esiste a partire dalla posizione 0
my_seq.find("GT") # restituisce 3
my_seq.find("TG") #restituisce -1, vuol dire che la sequenza non c'è 
my_seq.count("A") # conta quante A ci sono nella sequenza
my_seq.count("GG") # restituisce 1, perchè la terza G sarebbe sovrapposta 
my_seq.count_overlap("GG") # restituisce 2, perchè conta anche la sovrapposizione 
my_seq.complement() # costruisce la stringa complemento
my_seq.reverse_complement() # restituisce la stringa prima invertita e poi complementare 
my_seq.transcribe() # effettua la trascrizione da DNA a RNA
my_seq.back_transcribe() # effettua trascrizione inversa, porta al DNA iniziale 

my_seq.translate() # effettua la traduzione, la traduce in proteine, in sequenze aminoacidiche.
Seq('TVFV*ERSVP') # si usa l'asterisco per indicare i codoni di stop dopo la traduzione
my_seq.translate(to_stop = True) # Al codone si fermerà

s1 = Bio.Seq.Seq('ACGCT') 
s2 = Bio.Seq.Seq('ACCGC') 
import Bio.pairwise2 
# Permette di trovare l'algoritmo di allineamento
Bio.pairwise2.align.globalxx(s1,s2) 
# Restituisce una lista con i possibili allineamenti ottimi stampando come vengono allineate le due sequenze s1 e s2. Lo score indica l'indice di similarità.



```




# References
[[Bioinformatica - Sbobine e slide]]