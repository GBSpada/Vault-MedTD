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
	- Dati di registrazioni
	- Dati basati su grafi
	- Dati ordinati
##### Caratteristiche generali dei data set
###### Dimensionalità
###### Scarsità ("sparsity")
###### Risoluzione
## Qualità dei dati
#### Problemi di misurazione e di raccolta dei dati
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