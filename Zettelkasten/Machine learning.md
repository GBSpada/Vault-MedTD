---
stato: "#ideaLez"
tags:
  - AI
  - MachineLearning
  - DataScience
---
24-05-2024 17:07

--- 
## Recap
- Prima di iniziare con li algoritmi di tipo induttivo rivediamo le prinicpali caratteristiche di quelli visti in precedenza
### Algoritmi "classici" (deterministici)
- Le decisioni vengono assunte sulla base di una ==sequenza non ambigua di istruzioni==
	- La semantica è determinata e nota a priori (una sola interpretazione possibile)
- Le loro funzionalità sono interamente definite dal loro progettista
- Ogni azione/decisione può essere associata a delle spiegazioni che la giustificano

>[!example]- Esempio: algoritmi di ordinamento di un vettore 
>- vedi [[Tec. di prog. - Lezione 3]]

### Sistemi intelligenti di tipo deduttivo
- Sistemi che sfruttano formalismi logici eseguibili su calcolatore
- Stesse caratteristiche degli algoritmi precedenti
### Algoritmi di ricerca
- Sistemi in cui un ==agente esplora gli stati== del proprio ambiente fino ad arrivare ad uno stato ==goal==
- Il progettista definisce le componenti di base del sistema agente/ambiente
- Gli algoritmi di ricerca nel grafo degli stati permettono all'agente di arrivare al proprio obiettivo
- Il percorso dall'origine al nodo goal rappresenta la soluzione del problema


## Introduzione: Algoritmi deduttivi
### Prerequisiti: l'induzione 
- Per *induzione logica (o empirica)* ci si riferisce ad un tipo di ragionamento che si muove ==da osservazioni specifiche a generalizzazioni più ampie== **CONCETTO FONDAMENTALE**

#### Processo
- **Osservazioni specifiche**
	- Raccogliere dati e fare osservazioni su casi particolari (vedi [[I dati#I problemi]])
- **Formulazione di una Generalizzazione**
	- Proporre una regola o un principio generale basato su queste osservazioni
- **Verifica e Test**
	- Verificare la generalizzazione con ulteriori osservazioni e test
>[!example]- Esempio:
>- Supponiamo di osservare che un gran numero di cigni incontrati fino ad ora sono bianchi
>- Da questa osservazione specifica formuliamo la generalizzazione: ==tuti i cigni sono bianchi==
>	- Naturalmente si tratta di una generalizzazione facilmente falsificabile perché il suo criterio è semplice: se la maggioranza dei cigni è di un colore allora tutti i cigni che incontriamo sono probabilmente di quel colore


### Tipologie principali
#### Algoritmi simbolici
> Gli **algoritmi induttivi simbolici** utilizzano rappresentazioni simboliche esplicite per apprendere e manipolare conoscenze

- Questi algoritmi rappresentano le conoscenze tramite strutture dati quali
	- Regole [[Classificazione - Tecniche Alternative#Classificatori basati su regole]]
	- Logiche
	- Alberi di decisione [[Classificazione - Concetti Base, Alberi decisionali, Modelli valutativi#Induzione di un albero decisionale]]
	- Grafi 
#### Algoritmi subsimbolici
> Gli **algoritmi induttivi subsimbolici** al contrario non utilizzano rappresentazioni simboliche esplicite ma rappresentano le conoscenze in modo distribuito tramite pesi numerici

- Possono rappresentare ==relazioni complesse e non lineari tra le variabili==
- Scarsa interpretabilità: *Modello a scatola nera/black box*
	- È difficile per gli esseri umani aapire come sono state fatte le decisioni
>[!warning] Nota bene:
>Gli algoritmi che vedremo in seguito saranno ==tutti subsimbolici==
## Statistical learning

- In questa sezione analizzeremo le basi teoriche che ci permettono di comprendere il funzionamento degli algoritmi subsimbolici più complessi
- I termini nei quali descriveremo questi processi sono gli stessi di quelli del processo di induzione solo che quì lo sfrutteremo per arrivare all'==apprendimento automatico==

### Intro: machine learning
> **Definizione generale**
> Il machine learning è una ==sottodisciplina dell'intelligenza artificiale== che si concentra sullo sviluppo di algoritmi e tecniche che permettono ai computer di ==apprendere dai dati e di migliorare le proprie prestazioni nel tempo senza essere esplicitamente programmati== per ogni compito specifico.

- Il Machine Learning inteso come ==apprendimento automatico== si pone quindi come obiettivo quello di costruire ==programmi in grado di imparare da esempi==
- Dal punto di vista **applicativo** è particolarmente utile nei contesti in cui si cerca di emulare un comportamento umano per il quale è difficile scrivere un algoritmo

#### Struttura dell'algoritmo di learning
- Le componenti principali dell'algoritmo che sta alla base del machine learning sono
>[!example]- Esempio ==fondamentale== (leggi prima il resto del paragrafo ==algoritmo di learning==): 
>- Supponiamo di dover comprare un frutto al supermercato
>- Ci serve un algoritmo che **classifichi** la frutta in buona e cattiva 
>	- Come dati in input forniamo un **training set** ${(x_1,y_1),...,(x_m,y_m)}$
>		- Con $x_n$ indichiamo gli **attributi** del frutto i
>			- $x_{i}=(x_{i,1}, x_{i,2}...x_{i,n})$
>		- Con $y_i$ indichiamo l'**etichetta** del frutto i che in questo caso codifica buono o cattivo
>	- Qualsiasi sia la sua forma (SVM, rete neurale etc) alla fine assegnerà un'etichetta ad ogni elemento in input sulla base delle informazioni che ottiene nel training set
##### Input
> Un insieme di dati detto *training set* con delle *etichette*
- Quali assunzioni è necessario fare sulla natura dei dati in ingresso?
	- [[I dati#Tipi di dati]]
##### Learner
>L'algoritmo di apprendimento vero e proprio
- Come automatizzare il processo di apprendimento?
##### Output
>Un *predittore*, un algoritmo in grado di predire l'etichetta di nuovi dati

- Come valutare la bontùà del predittore e la qualità del processo di apprendimento?




## Predittori Lineari
## Boosting
## Support Vector Machines












--- 
# Reference: [[AI e Machine Learning - Lezioni e slide]]
