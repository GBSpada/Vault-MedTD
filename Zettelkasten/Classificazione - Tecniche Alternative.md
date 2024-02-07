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
- Con X indichiamo il set di attributi e con Y la variabile di classe
- Durante la fase di apprendimento dobbiamo ottenere tutte le probabilità P(Y|X) associate ai dati
- 
### Classificatore novello
### Rateo di errore di Bayes
## Reti neurali
### Percettrone 
### Rete neurale artificiale multistrato
### Caratteristiche delle reti neurali artificiali
## Macchine a vettori di supporto 










---
# Reference: [[Data mining e Bioimmagini - Libri]]