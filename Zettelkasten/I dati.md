---
stato: "#ideaL"
tags:
  - "#DataMining"
  - "#DataScience"
---
02-10-2023 10:07

--- 

- Il capitolo discute dei svariati problemi relativi alla natura dei dati

## Tipi di dati
### Intro
>[!example]- Esempio di conversazione sul campo
>Statistico: Hai i dati dei pazienti?
Data Miner: Sì, ho alcuni risultati interessanti, nonostante i problemi con i dati.
Statistico: Ci sono stati problemi con il campo 5 e il campo 4 è stato alterato.
Data Miner: Sì, alcuni pazienti hanno valori mancanti e ci sono ambiguità nel campo 4.
Statistico: Ci sono stati altri problemi, come i campi 2 e 3.
Data Miner: Sì, ma ho trovato un forte legame tra il campo 1 e il campo 5.
Statistico: Ma il campo 1 è solo un numero di identificazione e non ha senso.
Data Miner: Sì, mi dispiace, ma non ho considerato l'ordine dei record.

- I 3 fattori fondamentali di cui tenere conto sono
	- Il tipo di dati
		- In base ad esso possono variare ad esempio
			- Il tipo di attributi
			- Caratteristiche speciali
				- Alcuni dataset possiedono dettagli come serie temporali o relazioni esplicite
		- È il tipo di dati che determina quali strumenti e tecniche sono necessarie
	- La qualità dei dati
	- Gli step di preprocessamento necessari a rendere i dati più adeguati al data mining
#### Analizzare i dati nei termini delle loro relazioni
- Uno degli approcci all'analisi dei dati è quello di trovare relazioni tra "gli oggetti" dei dati ed in seguito eseguire le analisi sfruttando le relazioni piuttosto che gli oggetti stessi.
	- Ad esempio si possono sfruttare indici di similarità e distanza 
### Nel dettaglio
> - Un dataset può essere visto come una collezione di *Data Objects* (o record o point o vector o pattern o event o case o sample o observation o entity)
> - A loro volta questi oggetti sono descritti da una serie di *attributi* (o variabile o caratteristica o field o feature o dimension)
> 	- Questi raccolgono quelle che sono le caratteristiche fondamentali di un oggetto
 
#### Attributi e misurazioni
> - Un attributo è una proprietà o caratteristica di un oggetto
> - Una scala di misurazione è una regola (funzione) che associa un valore numerico o simbolico ad un attributo di un oggetto

##### Il tipo di un attributo
- In un contesto aziendale, il codice identificativo e l'età di un dipendente sono attributi rappresentabili come interi (int nei linguaggi di programmazione)
	- Le proprietà dei numeri interi però non possono essere traslate sugli attributi rappresentabili da essi
		- Non ha senso fare la media dei codici identificativi
		- L'età ha un valore massimo
##### I differenti tipi di attributi
- Un modo semplice e utile per specificare il tipo di un attributo è quello di identificare le proprietà dei numeri che corrispondono alle proprietà dell'attributo stesso
###### In base alle proprietà principali
- Considerando distinzione, ordine, addizione, moltiplicazione, identifichiamo 4 tipi di attributi ![](https://i.imgur.com/eTR8QuZ.png)

###### In base alle trasformazioni possibili
![](https://i.imgur.com/oMDZ1ap.png)
###### In base al numero di valori
- Discrete
- Continue
###### Asimmetrici
- Un set di valori ha più importanza di un'altro
- Ad esempio 
	- Su un dataset universitario di uno studente, non si tiene conto di tutti gli esami di ogni corso ma solamente degli esami del corso a cui è iscritto lo studente

#### Tipi di data set
- I gruppi principali sono
	- Dati da registrazioni
	- Dati basati su grafi
	- Dati ordinati
##### Caratteristiche generali dei data set
- Prima di analizzare i tipi di dataset descriviamone le caratteristiche principali
###### Dimensionalità
> Il numero di attributi posseduti dagli oggetti di un data set

- La difficoltà di analisi cresce in maniera sproporzionata proporzionalmente alla dimensionalità: *curse of dimensionality*
- Uno dei focus del processamento dei dati è infatti la **dimensionality reduction**
###### Scarsità ("sparsity")
- Per alcuni dataset (come quelli asimmetrici), molti valori non vanno considerati 
- Questo risulta in una serie di considerazioni dal punto di vista computazionale che possono facilitare di gran lunga il carico analitico o comunque le risorse impiegate
###### Risoluzione
- È spesso possibile ottenere i dati a più livelli di risoluzione
- Le proprietà dei dati possono variare col variare di questi livelli
##### Dati da registrazioni
- I data set di record sono spesso raccolti in
	- File flat
		- CSV, TSV etc
		- In generale formati non strutturati
	- Database relazionali
		- Spesso però non si considerano le informazioni aggiuntive di un database relazionale
###### Dati di transazioni
- Particolare categoria di dati da registrazioni in cui ogni oggetto è composto da una serie di altri elementi
	- Es: scontrino 
- Questo tipo di dati viene anche definito analisi del paniere (Market Basket Analysis)
###### Matrici di dati 
- Se gli oggetti di un dataset hanno tutti la stessa serie di attributi numerici si possono interpretare gli oggetti come dei vettori nello spazio
**Matrice sparsa**
- Matrice di dati asimmetrici
###### Matrice dei termini di documenti
- Si traccia il numero di volte in cui compaiono dei termini in una serie di documenti

##### Dati basati su grafi
- Pagine web, molecole
##### Dati ordinati
> Dati che possiedono attributi con relazioni temporali o spaziali
> - Ad esempio sequenze geniche
###### Dati sequenziali 
- Definiti anche dati temporali
	- Molto semplicemente dati di registrazioni con l'attributo tempo
**Dati di sequenze temporali**
- È fondamentale tenere conto dell'autocorrelazione temporale
	- Misurazioni vicine nel tempo sono spesso molto simili
**Dati spaziali**
- Ad esempio, due punti vicini sulla terra hanno valori simili per la temperatura e le precipitazioni 

## Qualità dei dati
#### Problemi di misurazione e di raccolta dei dati
- La qualità dei dati dipende da come sono stati misurati e raccolti

##### Prerequisiti
- È necessario dare alcune definizioni per comprendere meglio i potenziali errori
	- Come esempio usiamo 5 misurazioni di una massa: 1.015, 0.990, 1.013, 0.986
###### Precisione
> La distanza tra i valori delle misurazioni di una stessa quantità

- Spesso è misurata come deviazione standard nella serie di valori
	- Dall'esempio otteniamo che è 0.013 (da una media di 1.001)
###### Bias
> Una variazione sistematica delle misurazioni

- Misurata come la differenza tra la media dei valori della serie e il valore conosciuto della quantità che si sta misurando
	- Dall'esempio otteniamo che equivale a 0.001
###### Accuratezza
> L'inverso della distanza di misurazione dal vero valore di una quantità misurata

- Strumento fondamentale sono le **cifre significative**
##### I problemi
###### Outliers
- Oggetti ==anomali==
	- Possiedono caratteristiche differenti dalla maggior parte degli altri oggetti del dataset
- A differenza del "rumore" possono essere rilevanti in un'analisi di dati
###### Valori mancanti
- Le cause sono molteplici
- Si può reagire in 3 modi diversi
**Eliminando gli oggetti o gli attributi**
**Stimando i valori mancanti**
**Ignorando i valori mancanti durante l'analisi**
###### Valori inconsistenti
- Ad esempio, una massa negativa
###### Valori duplicati

#### Problemi legati alle applicazioni
- I dati sono di qualità se utili al loro uso inteso
##### Tempestività
- Alcuni tipi di dati "invecchiano" appena vengono collezionati
##### Rilevanza
- I dati disponibili devono contenere le informazioni necessarie all'applicazione
- Costruire un modello senza tutte le informazioni intrinseche ai dati porta ad avere bassa accuratezza
##### Conoscenza dei dati
- Ad esempio, se i dati mancanti vengono indicati con un numero tipo -9999 e non lo sappiamo, l'intera analisi può essere fallace
## Preprocessamento dei dati
- Consiste in una serie di operazioni atte alla selezione di oggetti e di attributi per facilitare l'analisi di chi fa data mining
#### Aggregazione
>Assimilazione di più data objects o attributi 

>[!example] Esempio:
>Abbiamo un registro di tutte le transazioni svolte da una serie di negozi con le date annesse.
>Per aggregare le transazioni si possono raggruppare tutte quelle fatte da un negozio in una data in un unica transazione

##### Considerazioni sul tipo di attributi
- Operazioni del genere su attributi quantitativi richiedono operazioni quali somme o medie statistiche
- Nel caso di attributi qualitativi si usano altri approcci
##### Utilità
- Potenzialmente può essere utile per ridurre le ==dimensioni== di una matrice di dati
	- Possono diminuire
		- Gli attributi
		- I data object per uno o più attributi
- Ridurre il numero di campioni riduce i tempi ed i costi di analisi
	- Questo può rendere possibile l'utilizzo di algoritmi di data mining più costosi
- Può offrire una visione più ad alto livello dei dati
- Il valore assegnato all'aggregato varia di meno di quello dei singoli elementi che lo compongono
#### Campionamento
> Si selezionano, secondo un criterio, solo alcuni campioni
> - Usare dei campioni può essere equivalente ad usare tutto il dataset se i campioni sono rappresentativi
#### Riduzione dimensionale
> Consiste nel ridurre il numero di attributi di un data set combinandoli in nuovi attributi
> ![](https://i.imgur.com/Awa4x9j.png)


- Migliora l'efficienza di numerosi algoritmi di data mining perché
	- Diminuiscono "rumore" e feature irrilevanti
	- Curse of dimensionality


>[!info] The curse of dimensionality
> Fenomeno per il quale i dati diventano significativamente più complessi da analizzare con l'aumentare delle dimensioni
>- Per ciò che concerne
>	- **Classificazione**
> 		- Potrebbero non esserci abbastanza oggetti a cui assegnare delle classi
>	- **Clustering**
>		- La densità e le distanze tra i punti perdono di significato
> 		- Problematico in quanto sono variabili fondamentali nel clustering


 >[!info] Tecniche di algebra lineare 
>- **PCA** - Analisi delle componenti principali
>	- Tecnica che trova nuovi attributi 
>	- Dati da combinazioni lineari tra quelli originali
>		- Ortogonali tra loro
	>	- In grado di descrivere la massima variazione nei dati
>- **SDA** - Decomposizione a singolo valore

#### Selezione di sottoinsiemi di caratteristiche (feature subset selection)
> Selezione di un sottoinsieme delle caratteristiche (attributi) tale da ridurre la quantità di attributi ridondanti o irrilevanti (per il lavoro di data mining preso in considerazione in quel momento)

- Sarà il tipo di analisi a dettare la misura di selezione e la riduzione da applicare al dataset
	- Bisogna comunque portare avanti l'analisi fino a provare l'algoritmo scelto per verificare la validità della selezione
#### Creazione di caratteristiche
- Le metodologie principali sono
	- Estrazione
		- Es: estrazione dei bordi di un'immagine
	- Costruzione
		- Es: rapporto tra massa e volume per ottenere la densità
	- Assegnazione ad un nuovo spazio
		- [[Analisi di fourier]] e wavelet
#### Discretizzazione (1) e binarizzazione (2)
- 1: trasformazione di una variabile da continua a categorica
- 2: trasformazione di una variabile da discreta/continua a binaria

##### Supervisione
- Ci vuole un esempio
	- Abbiamo una variabile continua (età) e vogliamo trovare 3 classi sfruttando la discretizzazione una volta supervisionandola e una volta no
		- Nel caso supervisionato specifichiamo che i 3 gruppi devono essere giovani,adulti e anziani 
		- Nel caso non supervisionato saranno gli algoritmi stessi a cercare pattern nei dati continui
#### Trasformazione di variabili
- In sintesi, applicazione di una funzione a tutte le istanze di un'attributo/variabile
## Misure di similarità e dissimilarità
- Fondamentali, alla base delle tecniche più importanti di data mining
	- Una volta ottenute si può anche evitare di fare riferimento al dataset iniziale
#### Basi
##### "Definizioni"
###### Similarità
- Tra due oggetti
- In genere è un valore tra 0 e 1
###### Dissimilarità
- Frequentemente associata al termine ==distanza==
- Anch'essa tra 0 e 1 o tra 0 e infinito
##### Trasformazioni
- Gli indici di dissimilarità e similarità possono essere convertiti rispettivamente l'uno nell'altro 
	- Se però gli intervalli di riferimento variano (es: \[0,1] e \[1-10]) bisogna effettuare una trasposizione per ottenere il valore corrispettivo nell'altra misura
![](https://i.imgur.com/T2DVnfA.png)

#### Similarità e dissimilarità tra attributi semplici
- Finché si tratta di semplici attributi basta applicare le formule sopra
	- Di attributi nominali non si può dare un grado di similarità quindi solo 1 o 0
	- Di attributi ordinali si fornisce un grado sulla base di una scala
	- Per altri dati si tiene conto di caratteristiche della scala ([[#In base alle trasformazioni possibili]])
- I data objects possiedono molteplici attributi e sono più complessi da gestire
#### Dissimilarità tra data objects
- Abbiamo detto che il termine distanze viene spesso associato al concetto di dissimilarità ma non è del tutto corretto
	- Le distanze sono particolari tipi di dissimilarità
- In genere vengono tracciate in delle matrici in cui mettere a confronto i singoli attributi uno con l'altro
##### Distanza euclidea
$$d(x,y) = \sqrt{\sum_{K=1}^{n}(x_k - y_k)^2}$$
- n è il numero di dimensioni
- k è il numero di attributi degli oggetti x e y
##### Distanza di Minkowski
$$d(x, y) = \left(\sum_{k=1}^{n}|x_k - y_k|^r\right)^{\frac{1}{r}}$$
- Generalizzazione della distanza euclidea dalla quale si possono ottenere anche la distanza di hamming e i chebyshev
- Il parametro r specifica modi differenti di combinare tutte le singole distanze in un unico valore
	- **r = 1**: distanza di Manhattan
		- Come quella di [[Distanza di hamming]]
	- **r = 2**: distanza euclidea
	- **r = 3**: distanza di Chebyshev (o suprema)
		- Massima differenza tra qualsiasi attributo degli oggetti
#### Similarità tra data objects
- Unica differenza con quelle di dissimilarità, non valgono alcune proprietà applicabili alle matrici tra cui la ==disuguaglianza triangolare== (roba di algebra lineare)
#### Esempi di misure di prossimità
- Per dati binari
##### SMC (simple matching coefficient)
##### Coefficiente di Jaccard
##### Similarità del coseno
#### Problemi nel calcolo delle prossimità
#### Selezione della giusta misura di prossimità





---
# Reference: [[Data mining e Bioimmagini - Libri]]