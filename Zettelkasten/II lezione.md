a06-03-2023 01:50
Stato: #ideaLez
Tag: #Bioinformatica 

# Rappresentazione grafica dei dati
```python
plt.pie(df["Colore Occhi"].value_counts()) # grafico a torta
plt.show() # fa apparire il grafico
import matplotlib # libreria per plot matematici
import matplotlib.pyplot as plt
```

- I grafici sono fondamentali
    - In fase di **analisi**
        - Permettono una visione generale di come sono fatte le variabili disponibili
    - In fase di **presentazione**
        - Per discutere con un'eventuale platea le caratteristiche desunte dai dati
## Operazioni sui grafici
```python
# Per aggiungere la legenda dei colori, dopo = si può specificare un colore
plt.pie(df["Colore Occhi"].value_counts(),labels=) 

# Le chiavi, i nomi delle categorie dei conteggi
plt.pie(df["Colore Occhi"].value_counts().keys())

# Grafico a torta completo con i nomi associati ad ogni valore
plt.pie(df["Colore Occhi"].value_counts(),labels = df["Colore Occhi"].value_counts().keys())

plt.pie(df.Sesso.value_counts(), labels = df.Sesso.value_counts().keys())

```

# Funzioni statistiche
## Media
```python
df.Altezza.mean() 
''' Ritorna un valore appartenente al dominio che è reale '''

df.Voto.mean()
''' Non è detto che ritorni un valore appartenente al dominio visto che i voti all'uni sono interi '''

df = pd.read_csv("dsfull.csv")
df.mean() 
''' Media colonna per colonna '''
```
## Misure di dispersione e posizione
- Necessarie per capire rispetto alla media quanto si disperdono i dati
### Varianza
- Media aritmetica dei quadrati degli scarti dei valori dalla loro media
```python
voti.var() 
```
### Deviazione standard
- è un indice di quanto i numeri si distanzino dalla media aritmetica
###  Quartili
 - Indici di posizione
 - Dividono l'insieme dei dati in quattro intervalli di uguale numerosità
```python
voti.quantile([0.25,0.5,0.75]) # tra le quadre inserire i valori in cui dividere i dati
```
#### Distanza interquartile
- Differenza tra primo e terzo quartile
- Misura di dispersione




# Grafici per il calcolo delle distribuzioni
## Istogrammi
```python
plt.hist(voti.v1)
plt.show()

plt.hist(voti) # senza specificare la divisione, ci saranno 10 intervalli

plt.hist(df.Altezza, bins=20) # 20 intervalli: i bins

plt.his(voti.v4, bins=[18,19,20,21,22,23,24,25,26,27,28,29,30])
# Specificando i bins volta per volta
```
## Box plot
![Box plot](https://i.ytimg.com/vi/BE8CVGJuftI/maxresdefault.jpg)
- Ampiezza legata a primo e terzo quartile
- Linee intermedie corrispondo alla mediana
```python
plt.bloxplot(voti) 
```
## Diagramma cartesiano
- Senza specificare il tipo di grafico verrà generata una linea per collegare i punti di intersezione

```python
# Grafico puntiforme
plt.plot(df.Altezza,df.Peso,".") 

# Per limitare gli assi si inseriscono degli intervalli
plt.axis([1.40,1.78,40,78]) 

# Trend tra duee variabili
plt.plot(df.Altezza,df.Voto,".")
plt.axis([1.40.178,16,32])
```
### Correlazioni
- Il concetto statistico dietro alle correlazioni
    - [[Indice di correlazione di Pearson]]
- Se la correlazione 
    - Tende a 0
        - Dati non correlati
    - Tende a 1
        - Dati correlati
```python
df.Altezza.corr(df.Peso)
# matrice simmetrica con combinazioni sulla base dell'elenco delle variabili che sono state passate
df[["Altezza", "Peso"]].corr() 
```
#### Limiti della correlazione
- Può essere solo lineare
    - Se è positiva o a stessa direzione
        - Le due variabili seguono lo stesso trend
    - Se è negativa o a direzione diverse
        - I trend sono opposti
- Non ci dice se un valore varia sulla base di due o più valori
    - Lavora sempre in coppia
# Effetti discriminanti
## Prerequisiti per l'esempio
```python
dfes = pd.read_csv("esfond.csv") 
# file con voti di 77 persone in 6 es diversi

dfes.mean() # medie, tutte diverse tra i vari esercizi
```

> [!warning]
> Come si fa a capire se la media di un esercizio è diversa da quella di un altro per casualità o perché c'è una vera e propria correlazione (tipo che un esercizio sia effettivamente più difficile dell'altro)?

## Test di student
> Restituisce una probabilità che indica quale siano le chance che una differenza tra due valori sia casuale

- Non dipende solo dalla differenza tra le media ma anche dal numero di elementi e dalla dispersione della media
### Libreria statistica
```python
import scipy as sc
import scpy,stats
```
### Codice
- a e b 
    - Popolazioni da studiare
- Il valore di output significa che la probabilità che la differenza sia causale è di 0,004 quindi è poco probabile
```python
sc.stats.ttest_ind(a_dfes.E1, b=dfes.Es2).pvalue
'''
OUTPUT
0,00456
'''
```




# References
[[Bioinformatica - Sbobine e slide]]