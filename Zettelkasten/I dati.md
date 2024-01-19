---
stato: "#ideaL"
tags:
  - "#DataMining"
  - "#DataScience"
---
### 02-10-2023 10:07

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
> - Un dataset può essere visto come una collezione di "Data Objects" (o record o point o vector o pattern o event o case o sample o observation o entity)
> - A loro volta questi oggetti sono descritti da una serie di attributi (o variabile o caratteristica o field o feature o dimension)
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
###### Valori mancanti
###### Valori inconsistenti
###### Valori duplicati

#### Problemi legati alle applicazioni
## Preprocessamento dei dati
#### Aggregazione
#### Campionamento
#### Riduzione dimensionale
#### Selezione di sottoinsiemi di caratteristiche
#### Creazione di caratteristiche
#### Discretizzazione e binarizzazione
#### Trasformazione di variabili
## Misure di similarità e dissimilarità
#### Basi
#### Similarità e dissimilarità tra attributi semplici
#### Dissimilarità tra data objects
#### Similarità tra data objects
#### Esempi di misure di prossimità
#### Problemi nel calcolo delle prossimità
#### Selezione della giusta misura di prossimità





---
# Reference: [[Data mining e Bioimmagini - Libri]]