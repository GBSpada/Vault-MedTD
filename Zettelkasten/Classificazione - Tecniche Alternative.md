---
stato: "#ideaL"
tags:
  - "#DataMining"
  - "#DataScience"
---
02-10-2023 10:07

--- 

## Classificatori basati su regole
- Un classificatore basato su regole è una tecnica per classificare istanze tramite una serie di regole logiche "if...then" 
- Le regole sono espresse in forma disgiuntiva $R = (r_1 \lor r_2 \lor ... r_k)$
>[!example] Esempio:
>Dal [[Classificazione - Concetti Base, Alberi decisionali, Modelli valutativi#^984587|dataset dei vertebrati]] si possono estrapolare numerose regole diverse, un esempio sono queste 5:
>$r_1: (Gives Birth = no) \lor (Aerial Creature = yes) \rightarrow Birds$
>$r_2: (Gives\ Birth = no) \land (Aquatic\ Creature = yes) \rightarrow Fishes$
>$r_{3}: (Gives\ Birth = yes) \land (Body\ Temperature = warm-blooded) \rightarrow Mammals$
>$r_{4}: (Gives\ Birth = no) \land (Aerial\ Creature = no) \rightarrow Reptiles$
>$r_5: (Aquatic\ Creature = semi) \rightarrow Amphibians$
- Generalizzando
$$r_i : (Condition) \rightarrow y_i$$
Dove la parte sinistra, detta regola antecedente, equivale a:
$$Condition_i = (A_1\; op\; v_1) \lor (A_2\; op \;2) \lor \; . . .\; (A_k\; op \;v_k)$$
> Una regola r copre un'istanza x se i valori di x soddisfano l'antecedente di r

>[!info] Misure della qualità di una regola di classificazione
>- In queste misure 
>	- $|A|$ è il numero di istanze che soddisfano la regola antecedente
>	- $|A\,\bigcap\,y|$ è il numero di istanze che soddisfano sia la regola antecedente che la conseguente
>	- $|D|$ è il numero totale di istanze
>- Accuratezza
>	- $\frac{|A|}{|D|}$
>- Copertura
>	- $\frac{|A,\bigcap \,y|}{|A|}$
### Come funzionano i classificatore rule based
- Questo tipo di classificatore classifica un istanza di test basandosi sulla regola che viene attivata dall'istanza stessa

- Seguendo sempre l'esempio dei vertebrati ![](https://i.imgur.com/s3zTMfl.png)
	- La tartaruga rispetta le regole 4 e 5
		- Ci sono delle contraddizioni che vanno risolte
	- IL lemure invece attiva solo la regola 3 e quindi è classificabile come mammifero
	- Lo squalo canopesce invece non ne rispetta neanche una
- Da questi esempi possiamo evincere delle proprietà importanti di questi classificatori
>[!warning] Proprietà fondamentali:
>Le regole devono essere mutualmente esclusive
>Le regole devono essere esaustive
- Queste 3 regole rispettano le proprietà ![](https://i.imgur.com/lsE01Be.png)
	- In particolare queste regole sono ==ordinate== in quanto seguono un'ordine decrescente di priorità 
		- Una serie di regole ordinate può essere anche chiamata lista di decisione

### Schemi di ordinamento delle regole
- Le regole possono essere ordinate basandosi sulle regole o sulle classi ![](https://i.imgur.com/TEUdLCh.png)
#### Ordinamento basato sulle regole stesse
- Questo approccio ordina le regole tramite una misura di qualità
- Il problema è che così facendo le regole associate ad alcune classi potrebbero essere di difficile interpretazione
	- Ad esempio, la quarta regola, quella sugli anfibi, dice che se un vertebrato non ha piume o non può volare ed è a sangue freddo e semi acquatico allora è un anfibio
		- Va da se che (già sai) questa regola è un po' complessa però essa emerge dalla necessità di controllare le regole in ordine: non si possono bypassare le prime tre regole
	- In sintesi, le ultime regole sono le più dispendiose da verificare
#### Ordinamento basato sulle classi
- In questo approccio si cercano di appaiare le regole che appartengono alle stesse classi 
- Metodo più usato
### Come costruire un classificatore basato su regole
- Esistono due tipi di metodi principali per estrarre regole di classificazione
	- Metodi diretti
		- Estraggono regole di classificazione direttamente dai dati
	- Metodi indiretti
		- Estraggono regole di classificazione da altri modelli quali alberi decisionali o reti neurali
- Valutazione delle regole
	- Accuratezza
		- Non tiene però in conto della copertura della regola
			- Una regola che copre 50 esempi positivi e 5 negativi è meglio di una che ne copre 2 positivi e nessuno negativo
	- Rapporto di probabilità
		- $LR = \sum_{i=1}^{n} \ln \left( \frac{P(x_i|H_1)}{P(x_i|H_0)} \right) ]$
		- Non serve sapere la formula, comunque si tratta di una distribuzione tipo chi-quadro che permette di tenere conto anche della copertura di ogni regola

>[!info] Come si dividono le strategie per far emergere regole di classificazione?
>- Dal generale allo specifico
>	- ![](https://i.imgur.com/Ph3hsPD.png)
>	- Si crea una regola antecedente (qualsiasi) e le si associano mano mano altri *congiunti* (elementi della regola)
>- Dallo specifico al generale
>	- ![](https://i.imgur.com/x5fuUlx.png)
>	- Si parte da un caso specifico e lo si generalizza rimuovendo i congiunti fino a coprire ogni caso


### Metodi diretti di estrazione delle regole

>[!info] Definizione utile: pruning/potatura
>Operazione che consiste nel rimuovere un congiunto dalle regole o un nodo da un albero decisionale o comunque di alleggerire un algoritmo

#### Copertura sequenziale
![](https://i.imgur.com/3Qw6Rcz.png)

- Uno degli algoritmi utilizzati è l'==algoritmo di copertura sequenziale== (simil pgss)
	- Le regole vengono generate in maniera greedy tramite misure di valutazione
		- Essenzialmente l'algoritmo estrae delle regole una classe alla volta per tutte le classi disponibili 
	- Il ==criterio di decisione== dipende da una serie di fattori
		- Costo computazionale della classificazione errata
		- Frazione delle istanze appartenenti alla classe 
- Criterio di stop
	- Quando il gain non è significativo si ferma
#### Learn-One-Rule
- La funzione learn one rule cerca di estrarre una regola di classificazione capace di gestire tutti i casi positivi nel dataset di apprendimento
- Anche questa è una funzione Greedy 
	- Genera una regola r è continua a rifinirla fino al raggiungimento di un determinato criterio di stop

#### Algoritmo RIPPER
- Utile per dataset con distribuzioni sbilanciate e pieni di ==rumore==
##### Funzionamento
- L'algoritmo seleziona la ==classe di maggioranza== e impara le regole per identificare la ==classe di minoranza== 
	- I termini maggioranza e minoranza vanno associati alle frequenze di apparizione della classe nel dataset
- Se il problema non è binario ma multi-classe l'algoritmo cerca ad ogni iterazione una nuova classe di maggioranza e una nuova classe di minoranza
##### Fattori chiave
- Si basa sulla copertura sequenziale
- Ogni volta che genera una nuova regola la pota sulla base della performance 
	- La metrica usata per valutare questa performance è (p-n)/(p+n) dove p e n sono i valori positivi (di maggioranza) e negativi (di minoranza)

### Metodi indiretti di estrazione delle regole
#### A partire da un albero decisionale
- Ad ogni percorso radice-foglia corrisponderà una regola
![](https://i.imgur.com/nOS5uBs.png)

>[!warning] Nota BENE:
>OGNI VOLTA CHE Q È SI LA REGOLA PREVEDE UNA CLASSE + QUINDI POSSIAMO SEMPLIFICARE ALCUNE REGOLE IN:
>$r2: (Q = Yes) \rightarrow +$
>$r3: (P = Yes) \land (R = No) \rightarrow +$
##### Algoritmo C.4-5 rules
- In sintesi, estrapola delle regole da un albero potando di volta in volta nel momento in cui riesce a trovare una variante più efficiente
### Caratteristiche dei classificatori basati su regole
- L'espressività di questi classificatori è quasi identica a quella degli alberi decisionali
	- Varia solo nel momento in cui si possono
## Classificatori nearest-neighbor
>Se cammina come un'oca, starnazza come un'oca, probabilmente è un oca

- Le metodologie precedenti sono dette ==eager learners== in quanto prendono delle decisioni appena i dati sono disponibili
- Alcuni metodi invece, detti ==lazy learners==, classificano solo nel momento in cui gli attributi di un test sono identici a quelli degli esempi di apprendimento
	- Questo approccio non è molto flessibile, per migliorarlo sono stati sviluppati i metodi ==nearest neighbor==

>![](https://i.imgur.com/n7IOoa9.png) Un classificatore nearest-neighbor definisce data point ogni valore d'esempio in uno spazio d-dimensionale dove d è il numero di attributi
> > Dato un ==valore di test== z si va a calcolare la ==prossimità== al resto dei data point nella serie di apprendimento
> > - Nella lista dei k punti più vicini si va a cercare la classe di maggioranza e la si assegna al test 



### Algoritmo
##### Distanze
1. Si deve ottenere la lista dei vicini
###### Linear scan
###### Diagramma di Voronoi e triangolazione di Delaunay
##### Assegnazione delle classi

2. Si applica questa formula per identificare la classe $$classe = y' = \arg\max_{v} \left( \sum_{x_i,y_i\in D_z}^{n} w_i \cdot I(v\,=\,y_i) \right)$$
	- w è una misura atta ad attribuire ad ogni vicino un peso che dipende dalla sua distanza
		- $w_i = 1/d(x',x_i)^2$
	- $y_i$ è l'etichetta di classe di uno dei vicini
	- v è un'etichetta di classe
	- I è una funzione che indica se l'argomento tra parentesi è vero, con valore 1, o falso, con valore 0




### Caratteristiche dei classificatori nearest-neighbor
- Non richiedono la costruzione di modelli ma non sono rapidi come gli eager learners una volta che hanno il loro modello
- Suscettibili al rumore, bisogna trovare il giusto valore di k
- Generano soluzioni locali e non globali
## Classificatori Bayesiani
- In molti casi la relazione tra la serie di attributi e la variabile di classe non è deterministica: ==l'etichetta di classe non può essere assegnata con certezza anche se il set di attributi è identico a quello di apprendimento==

>[!example] Esempio: stile di vita
>I parametri di cui tenere conto sono così tanti che non possiamo estrapolare corrispondenze dirette tra singoli elementi (fumo,alcool,dieta) e specifici stati di salute

- I classificatori Bayesiani permettono di postulare relazioni di tipo probabilistico tra la variabile di classe e il set di attributi

### Teorema di Bayes
>[!info]- Domanda esempio dalla quale nasce il problema
>- Considera una partita di calcio tra due squadre: 0 e 1
>- La squadra 0 vince il 65% delle volte
>	- Il 30% delle volte nel campo della squadra I
>- La squadra 1, il 75% delle volte in cui vince, gioca nel proprio campo

#### Preliminari: probabilità congiunta
> Date due variabili casuali A e B la loro probabilità congiunta $P(X=x,Y=y)$ sarà la probabilità che Y assuma il valore y nel momento in cui X assume il valore x

##### Probabilità condizionata
- Le probabilità interagiscono nel seguente modo
$$P(X, Y) = P(Y | X) \cdot P(X) = P(X | Y) \cdot P(Y)$$
#### Formula 

$$P(X|Y) = \frac{{P(Y|X) \cdot P(X)}}{{P(Y)}}$$
##### Applicata al problema precedente
- X sarà la variabile che associamo al team che ospita
- Y sarà la variabile da associare al vincitore della partita

| -                                                         | formula |
| --------------------------------------------------------- | ------- |
| Probabilità che vinca la squadra 0                        | P(Y=0) =0,65        |
| Probabilità che vinca la squadra 1                        | 1-P(Y=0)=0.35        |
| Probabilità che la squadra 1 giochi a casa quando vince | P(X=1\|y=1)=0.75        |
| Probabilità che la squadra 1 giochi a casa quando perde                                                          | P(X=1\|Y=0)=0.3        |

- Vogliamo conoscere la probabilità che la squadra 1 vinca la partita in cui ospita la squadra 0
	- ![](https://i.imgur.com/rPEBR1L.png)
>[!warning] Nota bene:
>Mettiamo la Y prima della X perché vogliamo sapere le probabilità di vittoria nel caso in cui ospiti e non viceversa

### Applicazioni del teorema di Bayes alla classificazione
$$P(Y|X) = \frac{{P(X|Y) \cdot P(Y)}}{{P(X)}}$$
- Con X indichiamo il set di attributi e con Y la variabile di classe
- Durante la fase di apprendimento dobbiamo ottenere tutte le ==probabilità a posteriori P(Y|X)== associate ai dati
- P(X) per diversi valori di Y è costante e si può ignorare 
	- Bisogna calcolare essenzialmente la probabilità P(X|Y)
>[!example]- Esempio:
> Sull'esempio usato per [[Classificazione - Concetti Base, Alberi decisionali, Modelli valutativi#Algoritmo di Hunt|Hunt]]
> - Le due Y sono:
> 	- Yes
>	- No

### Classificatore novello
- Il primo strumento per calcolare la probabilità si basa sull'assunzione che per gli attributi viga una **indipendenza funzionale**
$$P(Y|X) = \frac{P(Y)\prod_{i=1}^{d}{P(X_i|)Y}}{P(X)}$$
>[!info] Indipendenza funzionale
> Dati tre set di variabili casuali X, Y e Z si può dire che X sia in uno stato di indipendenza funzionale da Y se $P(X|Y,Z) = P(X|Z)$

#### Meccanismo 
- Invece di calcolare la probabilità condizionata della classe per intero la si calcola per i singoli attributi assumendo che siano in una condizione di indipendenza funzionale tra di loro
#### Per attributi continui
- Più complicato, ci sono 2 opzioni
	- Si discretizza ogni attributo e si rimpiazza con l'etichetta assegnata al range ottenuto con la discretizzazione
	- Si associa all'attributo una funzione di densità (gaussiana) e ne si stimano i parametri partendo dal set di apprendimento
### Bayesian belief network
> Fornisce una rappresentazione grafica delle relazioni probabilistiche in un set di variabili casuali


![](https://i.imgur.com/FQeBsvU.png)


## Reti neurali artificiali
- Analogamente alla struttura del cervello umano, una ANN (artificial neural network) è composta da un'assemblaggio di nodi e collegamenti diretti.
- In questa sezione si analizzano una serie di modelli partendo dal più semplice: il percettrone

>[!info] Definizione utile: iperpiano
>In AI, un iperpiano è uno spazio multidimensionale che divide lo spazio di input in due regioni separate. In particolare, in uno spazio bidimensionale (ad esempio, un piano cartesiano), un iperpiano è una linea che divide il piano in due parti. In uno spazio tridimensionale, un iperpiano è un piano che divide lo spazio in due parti.
>![](https://i.imgur.com/fd1QODp.png)


### Percettrone 
> - Un percettrone è un modello costituito da due tipi di nodi: nodi di input e un nodo di output.
> 	- Ogni nodo di input 
> 		- è collegato al nodo di output tramite un arco pesato che emula la forza delle sinapsi
> 		- si occupa semplicemente di trasmettere il valore che riceve
> 	- Il nodo di output
> 		- è uno strumento matematico che
> 			- Calcola una somma pesata
> 			- Sottrae un fattore di bias
> 			- Produce un output dipendente dal segno della somma risultante


> - **Addestrare** un percettrone significa modulare i pesi degli archi affinché corrispondano alle relazioni tra le variabili di input e quella di output nei dati sottostanti

#### Esempio
![](https://i.imgur.com/KqC8fRH.png)
- Il diagramma mostra un data set basato su 3 variabili booleane e una variabile di output

- Per calcolare il valore di Y![](https://i.imgur.com/TpeYfPf.png)
	- Esegue una somma pesata dei suoi input
	- Sottrae un fattore di bias **t**
	- Esamina il segno del risultato

#### Formula

![](https://i.imgur.com/hzOAzBo.png)
- $w$ sono i pesi degli archi
- $x_d$ sono i valori degli attributi in input
- La ==funzione segno== da in output
	- +1 se l'argomento è positivo
	- -1 se l'argomento è negativo
##### Formula ridotta
$y' = segno(\sum_{i=0}^{n}{w_i x_i})$

#### Fase di apprendimento
- I parametri di peso sono regolati finché gli output del percettrone sono coerenti con gli output corretti degli esempi di apprendimento![](https://i.imgur.com/Q1Cx9NZ.png)
	- Il peso $w^{(k)}$ è il parametro associato al collegamento i-esimo alla k-esima iterazione 
	- $\lambda$ è il rateo di apprendimento
		- Un parametro tra 0 e 1
		- Utilizzabile per modulare l'intensità degli aggiustamenti fatti per ogni iterazione
			- Se uguale a 0 il vecchio peso contribuirà con maggior entità al nuovo peso
	- $X_{ij}$ è la il valore del j-esimo attributo dell'esempio di apprendimento $x_i$
##### Errore e casistiche
- Il nuovo peso è dato dalla combinazione del peso vecchio ed un termine proporzionale all'errore della predizione: $y - y'$
	- Se la predizione è corretta il peso non cambia 
	- Se la predizione è scorretta ci sono più casi
		- Se y = +1 e y' = -1 
			- L'errore di predizione sarà = 2
			- Per compensare dobbiamo incrementare il valore dell'output predetto incrementando i pesi di tutti i collegamenti con input positivo e diminuendo i pesi dei link negativi
		- Se y = -1 e y' = +1
			- Il contrario

### Rete neurale artificiale multistrato
- Le vere reti sono molto più complesse di un percettrone
- La differenza di complessità dipende da una serie di fattori
	- Strati intermedi
		- Si interpongono tra i nodi di input e quello di output e sono composti da nodi nascosti
		- In un sistema *feedforward* come il percettrone ogni nodo è connesso soltanto a quelli degli strati successivi
	- Funzioni di attivazione più complesse
		- La funzione segno usata precedentemente è molto semplice, permette di gestire solamente problemi con relazioni lineari
		- Alcune funzioni invece permettono agli strati nascosti e ai nodi di output di produrre valori non lineari nei confronti dei parametri di input
>[!example] Esempio: funzione XOR
>![](https://i.imgur.com/Xc39geQ.png)
>- I dati della funzione XOR non possono essere separati con un percettrone perché usa un solo iperpiano 
>- Si aumenta quindi il livello di complessità aggiungendo uno strato intermedio
> ![](https://i.imgur.com/AWR1SMR.png)
>- I due nodi nascosti possono essere intesi come due percettroni atti a creare gli iperpiani, il nodo di output deve solamente combinarli

#### Apprendimento
- A differenza del caso precedente ci manca conoscenza *a priori* dei valori che vogliamo prevedere
- Vogliamo quindi costruire un modello di apprendimento capace di minimizzare gli errori, in particolare la somma al quadrato
	- $E(w) = \frac{1}{2}\sum_{i=1}{N}(y_i - y'_i)^2$
		- Questa funzione dipende dai pesi (w) perché la classe y' che vogliamo prevedere è una funzione dei pesi assegnati ai nodi
- In genere, poiché l'output della rete non è lineare, le soluzioni trovate in funzione dei pesi non sono globalmente ottimali
	- Servono, in questi casi, gli algoritmi greedy
##### Funzione di discesa del gradiente
$$w_j \leftarrow w_j - \lambda \frac{\theta E}{\theta w_j}$$
- Lambda è il rateo di apprendimento
- Il secondo termine garantisce che il peso incrementi in una direzione che riduca il valore dell'errore
- Il problema è che per i nodi intermedi è difficile valutare, senza sapere l'output, l'apprendimento
	- Per questo è stata ideata la **backpropagation**
		- Nella prima fase in forward mode i pesi ottenuti dall'iterazione precedente sono usati per calcolare il valore in output di cascun nodo
		- Nella fase backwards la formula per aggiornare i pesi è applicata al contrario
		- In poche parole i pesi di k+1 sono aggiornati prima dei pesi di k
### Caratteristiche di una rete neurale artificiale

## Macchine a supporto vettoriali
### Iperpiani a massimo margine
### SVM lineare: caso separabile
### SVM lineare: caso non separabile
### SVM non lineare
### Caratteristiche di una SVM