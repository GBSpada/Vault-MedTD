05-03-2023 21:58
Stato: #ideaLez
Tag: #Bioinformatica 

# Introduzione
## Concetto di informatica e codifica dell'informazione
[[Introduzione BDD#^fcdc2a]]
- Codifica dell'informazione
    - Riguarda una rappresentazione dell'informazione in forma di dati utilizzabili
- Fase di costruzione dei dati
    - Non dipende dagli strumenti informatici
## Perché esiste la bioinformatica
Si occupa dell'applicazione di tecniche algoritmiche al fine della rilevazione di anomalie nei dati.

# Dati e analisi
## Nominali
> Non hanno una grandezza numerica
### Categorie
- ==Binari==
    - Acquistano due valori possibili
        - Uomo/donna
        - Si/no
- ==Categorie==
    - Insieme di possibilità
        - Es: Colori
- ==Categorie che non appartengono ad un insieme==
    - Nomi o cognomi
- ==Stringhe==
    - Sequenze di caratteri
    - Si basano sul concetto di **similarità**
- ==Ordinali==
    - Categorie con ordinamento definito tra le quantità
## Numerici
> Dati legati ad un numero, si basano sui concetti di similarità, ordinabilità e distanza

### Due grandi famiglie
- ==Discreti== 
    - Connessi ai numeri interi
- ==Continui==
    - In corrispondenza dei numeri reali
    - Possono ottenere un numero infinito di valori decimali

## Implicazioni nell'analisi dei dati
- Si possono definire
    - Un ==ordinamento==
        - Su dati **ordinali** o nei **discreti**
    - Un intervallo tra due rilevazioni: ==DISTANZA==
        - Su dati **continui** o **discreti**
        - Non sugli ordinali
    - Una ==similarità==
        - Possibile farlo con dati discreti o continui
        - Nel caso delle stringhe
            - Si tratta di distanze
                - *Fonetiche
                - *Sintattiche*
        - ==Uguaglianza e differenza==
            - Sugli altri tipi di dati in cui la similarità non avrebbe senso
- Le analisi possibili sono diverse sulla base del tipo di dati preso in considerazione
    - ==Conteggio==
        - **Nominali binari**
            - Esempio
                - Quale tra le due popolazioni è la più rappresentata
        - **Categorie**
            - Esempio
                - Posso contare quante persone hanno gli occhi marroni o azzurri
        - **Ordinali**
            - Si può fare anche l'==ordinamento==
            - Esempio
                - Trading in crescita
        - **Discreti**
            - A differenza dei nominali si possono prendere sia i singoli valori che dei raggruppamenti
    - ==Conteggio per raggruppamento==
        - Valori **continui**
        - Esempio
            - Quante persone alte tra 1.60m e 1.65m

# Librerie e funzioni

## Librerie
```python
import numpy as np 
import scipy as sc 
import scipy.stats 
import pandas as pd pandas

import matplotlib # libreria per fare grafici.
import matplotlib.pyplot as plt
```
## Funzioni sul dataframe
```python
df = pd 
df = pd.read # Per leggere dei dati
df = pd.read_excel() # per leggere dei dati direttamente da excel.
df = pd.read_csv("")  # per leggere dei dati direttaemtne da csv.

df.columns  # stampa l'elenco delle colonne (le intestazioni). 
df.dtypes # stampa il tipo di dati. i numeri decimali con la virgola nel calcolatore sono presenti a precisione singola (float) e a precisione doppia (double; dipende dal numero di cifre decimali che riescono a calcolare).

df["nome"] oppure df.nome  # per accedere ad una colonna (in questo caso colonna "nome"), se c'è uno spazio all’interno del nome della colonna la II versione è possibile utilizzarla. 
df[["nome","cognome"]] # per accedere a due colonne.

df.Voto  # mostra l'elenco di quella colonna "voto".
df.Voto.count() # calcola il numero di righe di quella determinata colonna.
df.Voto[df.Voto>24].count() # per contare un range (per esempio studenti che hanno preso più di 24). df.Voto[df.Voto>24] dà le righe dei valori > di 24.
df[["Nome","Voto"]][df.Voto>24] # stampa le colonne di Nome e dei Voti>24.

# RIGHE
df.iloc[37] # per prendere una riga (in questo caso prendo riga 37)
df["Voto"].iloc[37] # stampa il voto presto dalla persona in riga 37. 

df["Colore Occhi"].nunique() # dà il numero di elementi univoci (quanti colori di occhi sono presenti in tabella). 
df["Colore Occhi"].unique() # dà l'elenco degli elementi univoci; l'ordine di stampe e per ordine di comparizione nella tabella.
df["Colore Occhi"].mode() # valore più frequente, ossia la moda

df["Colore Occhi"][df["Colore Occhi"] = = "Marrone"].count() 
#oppure 
df[df["Colore Occhi"]= ="Marrone"].count() # indica quante persone hanno occhi marroni. 
df["Colore Occhi"]= ="Marrone" 
# per ogni riga viene la variabile booleana. In informatica, per convenzione, True è 1 e False è 0, quindi se sommo gli elementi del vettore ho di nuovo il numero di elementi totali. 
sum(df["Colore Occhi"]= ="Marrone") # conta l'occorrenza del dato.
df["Colore Occhi"].value_counts() # mi dà valore per valore (count mi dà il conteggio intero).
df.Voto[df["Colore Occhi"]= ="Marrone"].value_counts() # prende il voto delle persone con gli occhi marroni.
```



---
# References
[[Bioinformatica - Sbobine e slide]]