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
- Prima di iniziare con gli algoritmi di tipo induttivo rivediamo le prinicpali caratteristiche di quelli visti in precedenza
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


## Introduzione: Algoritmi induttivi
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

#### Struttura generale dell'algoritmo di learning
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

- Come valutare la bontà del predittore e la qualità del processo di apprendimento?
### L'apprendimento statistico
- In questa sezione descriveremo formalmente le variabili e le misure fondamentali per scrivere un algoritmo di apprendimento automatico
#### Contesto 

- Le variabili in ==input== sono

| Variabile | Significato                             |
| --------- | --------------------------------------- |
| X         | Insieme dei dati (attributi)            |
| Y         | Insieme delle etichette                 |
| S         | Insieme di apprendimento (training set) |

- L'algoritmo A
	- Si ==allenerà== sul training set S restituendo un ipotesi $h_S$
		- $h_S=A(S)$
	- In ==output== Restituirà un'ipotesi h tale che ad ogni elemento di X sia associato un label di Y 
		- $h : X \rightarrow Y$
##### Fattori ignoti
- Nell'insieme degli elementi X sarà una **distribuzione di probabilità D** a generare i dati 
- Una **funzione di etichettatura**
	- $f : X \rightarrow Y$ tale che $f(x)= y$ è l'etichetta reale di x
	- Essenzialmente una funzione che etichetta correttamente
##### Misura di successo
- Siccome il nostro algoritmo è stato costruito su un training set potrebbe misclassificare poi quando lo valutiamo sul dominio completo
	- Per misurare l'entità di questi errori definiamo una misura detta **loss/rischio/errore reale/errore di generalizzazione**
	- Questa misura però non è calcolabile poiché non ci è noto il dominio (distribuzione di probabilità) e non ci è nota la funzione f
##### Formula
$$L_{D}(h)=P[h(x) \neq f(x)] $$
#### Empirical risk minimization
- Abbiamo quindi il contesto del problema, come ovviamo però all'impossibilità di calcolare la nostra misura di successo? 
- La soluzione sta nello spostarci ==dal concetto di errore di generalizzazione a quello di errore empirico==

##### Definizione
> Data un'==ipotesi h== ed un ==training set S== (!= dal dominio D) con |S| = m [^1] il *rischio empirico* è dato da $$L_{S}(h)= \frac{|\{x_{i}: h(x_{i})\ne y_i\}|}{m}$$

- L'ipotesi definitiva ($h_{S}$) sarà quella con misura di loss minore
$$h_{S}=argmin_{h}L_{S}(h)$$
##### Esempio: le angurie
![](https://i.imgur.com/wExcsyh.png)

###### Informazioni iniziali
- In input abbiamo una distribuzione di probabilità
	- Un insieme X di angurie con due attributi su un range che va da 0 a 1
		- Consistenza
		- Colore 
	- Un insieme Y di label composto da
		- y_1 che corrisponde all'anguria sana
		- y_2 che corrisponde all'anguria marcia
- La funzione f che classifica perfettamente gli elementi in input genera un quadrato di area 1/2 dentro al quale sono presenti soltanto angurie sane
###### ERM [^3]
- Definiamo un ipotesi $h_{S}(x_i)$ tale che 
	- I dati di S siano etichettati come sani
		- $y_{i} \;se \; x_{i}\in S$
	- Marci altrimenti
###### Valutazione dell'errore (==FONDAMENTALE==)
- Sul training set l''ipotesi $h_S$ non sbaglierà mai a classificare
$$L_{S}(h_{S})=0$$
- Sull'intero dominio ==l'ipotesi sbaglierà a classificare metà degli elementi==
	- Questo perché il set di dati è strutturato in maniera tale che metà delle angurie siano sane e metà marce ma ==la nostra ipotesi classifica tutto ciò che è all'interno del set in input come sano==
$$L_{D}(H_{S)}=1/2$$
- Il fenomeno in questione si chiama **overfitting** ed è importantissimo
	- Non generalizziamo bene perché non abbiamo ==vincoli== su h 

### PAC Learning
- Per risolvere i problemi precedenti entra quindi in gioco un framework teorico di appredimento automatico detto PAC learning (*probably approximately correct learning*)
- Questo framework fornisce dei parametri che possono modulare l'apprendimento in amniera tale da garantire un determinato errore di generalizzazione
#### Componenti
- Per evitare l'overfitting stabiliamo dei vincoli sull'ipotesi h generando una macro-**classe di ipotesi H** [^2]
	- Continuando dall'esempio precedente la classe H sarà l'insieme di tutte le ipotesi formate da rettangoli con i lati paralleli agli assi
![](https://i.imgur.com/mWtaxEC.png)

- La formula della ERM [^3] diventerà

$$argmin_{h\in H}L_{S}(h)$$
- I parametri fondamentali per valutare la nostra classe di ipotesi sono 
	- **Accuratezza $\epsilon$**
		- Esprime l'errore massimo che ci aspettiamo di ottenere
			- Ad esempio se il mio dato reale è 8 e io pongo come accuratezza 3 posso escludere tutti i valori minori di 5 e maggiori di 11
		- $L_{D}(H_{S})\le \epsilon$
	- **Confidenza $\delta$**
		- Esprime la percentuale delle volte che mi aspetto di fallire ossia delle volte in cui il mio algoritmo restituirà un predittore che non rispetta quell'errore
		- $P[L_{D}(h_{S}\le \epsilon)]\ge 1-\delta$
			- La percentuale di volte in cui l'errore sul dominio risulta minore dell'accuratezza deve essere maggiore di 1 no al confidenza
			- Essenzialmente do per assodato che si facciano  1-confidenza errori
##### Ipotesi e considerazioni affinché la disequazione della confidenza sia valida
- Esiste un ipotesi appartenente alla classe di ipotesi con loss sull domino D pari a zero: ==Assunzione di realizzabilità==
- Gli esempi del training set non dipendono tra loro: ==Assunzione di indipendenza==
- La classe di ipotesi H è finita (|H| < infinito)
	- Si può ottenere una cardinalità minore di infinito anche per *discretizzazione* ([[I dati#^4eb947]])
- $m\ge \frac{log(\frac{|H|}{\delta})}{\epsilon}$ da questo si evince che la cardinalità del training set deve essere
	- Inversamente proporzionale all'accuratezza ed alla confidenza
	- Direttamente proporzionale alla cardinalità della classe di ipotesi
>[!info]
>Tutte queste ipotesi vertono sul fatto che più si diventa accurati nel classificare nel training setpiù si rischia l'overfitting quando si generalizza sul dominio
#### Agnostic PAC Learning
>[!warning] Situazione di partenza
>- Nella realtà gli elementi di X possono presentare attributi/feature che portano ad una ==classificazione multipla== (l'elemento ha più label/etichette/$y_i$)
>	- Un frutto può essere anche parzialmente sano
>- In questo caso non ci interessa più assegnare un'etichetta ma capire quale sia la probabilità che l'oggetto abbia quell'etichetta rispetto ad un'altra
>	- Crolla quindi l'assunzione di realizzabilità (non esiste una funzione f)

> L'agnostic PAC learning è un problema rilassato del pac learning in cui non esiste più una funzione f ma ci si appoggia al concetto di rischio bayesiano ovvero il minimo errore possibile

- Le differenze sostanziali sono
	- Il fatto che non esista una funzione f
	- Il crollo dell'assunzione di realizzabilità
	- La struttura della distribuzione D 
##### Classificatore Bayesiano
- In questo contesto l'ipotesi con il minimo errore è data da 
$$f_{B}(X)= 1 \, se \, P[y=1|x]\ge 1/2$$
- Se la probabilità che y di x è 1 è maggiore di 1/2 allora il classificatore bayesiano ritorna 1
	- Altrimenti zero

$$P[L_{D}(h_{S)\le}min_{h\in H}L_D(h)+\epsilon] \ge 1-\delta$$


## Predittori Lineari
- Lo statistical learning ci può essere utile per risolvere problemi di classificazione o predizioni lineari
### Intro: il percettrone
- Il percettrone è un algoritmo di classificazione che permette di fare pac learning su dataset separabili linearmente 
- Il primo step per comprenderlo è quello di interpretare l'algoritmo come una simulazione del comportamento di un neurone umano
	- I neuroni che proiettano al neurone in questione corrispondono 
	- alle istanze del **set X di dati in input
	- La forza della sinapsi dendritiche (in input) è espressa come **peso/costo**
	- La somma dei potenziali eccitatori ed inibitori precedenti al monticolo assonico sono paragonabili alla **funzione di linearizzazione**
	- Il potenziale di riposo del neurone equivale al fattore di **bias**
	- Il potenziale d'azione ricorda invece il ruolo della **funzione di attivazione** 
	- Il risultato della funzione di attivazione equivale a sua volta all'output del percettrone cioé all'**etichetta y appartenente al set di label Y** 
![](https://i.imgur.com/KqC8fRH.png)


- L'obiettivo è quello di arrivare, tramite l'apprendimento, ad una **funzione di linearizzazione** che, inserita come argomento della funzione di attivazione, è in grado di generare degli output coerenti con le etichette reali fornite in input nel training set
	- Per ottenere questa funzione dobbiamo modulare il parametro w ed il bias finché non troviamo l'ipotesi corretta
	- ==funzione di ipotesi scritta come somma==
	- Questa somma non è nient'altro che un prodotto scalare tra due vettori che quindi può essere espresso in termini algebrici con le parentesi angolari
- Questa funzione è essenzialmente quella di una retta, a partire da questa assunzione possiamo rappresentare il percettrone su un piano cartesiano in questo modo
	- INserire 


- Inserendo questa ipotesi nella funzinoe di attivazione otteniamo l'output 
	- ==Funzione segno==
- Secondo quale criterio dobbiamo modulare w per ottenere la funzione adeguata?
	- ==Funzione==
	- Il nuovo peso è dato dalla combinazione del peso vecchio ed un termine proporzionale all'errore della predizione: y - h(x)
	- Se la predizione è corretta il peso non cambia 
	- Se la predizione è scorretta ci sono più casi
		- Se y = +1 e h(x) = -1 
			- L'errore di predizione sarà = 2
			- Per compensare dobbiamo incrementare il valore dell'output predetto incrementando i pesi di tutti i collegamenti con input positivo e diminuendo i pesi dei link negativi
		- Se y = -1 e h(x) = +1
			- Il contrario
	- Il numero di iterazioni per convergere verso una equazione corretta deve essere inferiore a ==T==
- RECAP: funzione di loss, ipotesi, algoritmo di apprendimento

### Regressione lineare
- Se il percettrone è il classificatore lineare più semplice, la regressione lineare è il predittore lineare corrispondente
- Immagine
- In questo caso il nostro obiettivo non è quello di assegnare un'etichetta di classe y ma di prevedere quello che è un valore dipendente yin funzione di una variabile dipendente x
	- In questo caso la **struttura dei dati in input**
		- y sarà l'altezza di una persona
		- x sarà il peso di una persona
- Dal punto di vista grafico l'obiettivo è quello di trovare l'equazione della retta che meglio approssima i data point del training set (sempre secondo i paradigmi del pac learning)
- In che termini misuriamo l'errore del nostro regressore?
	- In questo caso l'ipotesi può assumere valori anche molto distanti dall'etichetta reale, per misurarli definiamo la nostra funzione di loss
		- ==loss==
	- Questa loss può essere anche interpretata come una funzione di costo che diminuisce ogni qual volta una modifica di w ci permette di avvicinarci ad un minimo (locale o globale che sia) e cresce in ogni altro caso
- L'apprendimento consisterà quindi nel settare i pesi in maniera tale da minimizzare questa loss
	- Sappiamo che l'operatore matematico che permette di massimizzare più velocemente una funzione è il gradiente
		- Anteponendo il segno meno otteniamo il gradiente negativo e quindi come minimizzare più velocemente la funzione in questione
	- Otteniamo quindi: ==GD==
	- Questa funzione messa a grafico non è nient'altro che un paraboloide
- Un'altro metodo risolutivo che ci permette di ottenere la minima distanza si ottiene trasformando la formula dello scarto quadratico medio in forma algebrica sfruttando il meotdo dei minimi quadrati
	- Per minimizzarla poniamola uguale alla distanza, applichiamo le derivate parziali e poi valutiamo il caso in cui la distanza sia pari a zero
	- Da questo otteniamo, mettendo in evidenza i pesi, l'equazione in ==forma normale== della regressione lineare 

 
### Regressione polinomiale
- Può captare che le caratteristiche del dataset siano tali che non si possano descrivere tramite un regressore lineare
- In questi casi la nostra ipotesi non deve aver la forma di una retta madi un polinomio di grado n del tipo: ==formula==
	- Al parametro w quindi aggiungiamo un iperparametro n che ci permette di minimizzare l'errore empirico
- Per calcolare i pesi dobbiamo sostituire al vettore delle x un vettore di n +1 variabili x -> \[1,x,x^2,x^n] tramite una funzinone phi di x che parametrizza con n
### Regressione logistica
- La regressione logistica è un algoritmo fondamentale per classificare i casi agnostic pac learnable dove crolla l'assunzione di realizzabilità
- Ci serve una funzione che ci permetta di mappare i parametri al di sopra o al di sotto di una soglia di probabilità
	- Utilizziamo la sigmoide che mappa oltre e al di sotto dello 0.5 (50%) ed ha ==equazione==
- Modelliamo quindi i parametri w per massimizzare la probabilità condizionale che la nostra ipotesi ci riconduca alle etichette disponibili
	- ==Formule separate==
	- Possiamo unire il tutto in un'unica formula 
		- ==Formula unita==
	- Per ogni x nel dataset possiamo applicare la funzione di verosimiglianza e quindi la produttoria di tutte le probabilità condizionate
		- ==formula==
	- Poiché però la produttoria è computazionalmente onerosa possiamo applicare le proprietà dei logaritmi e ridurre il tutto a delle somme
		- ==formule con le somma e il log==
- In questo caso dovremmo massimizzare la probabilità descritta precedentemente quindi nell'algoritmo di apprendimento il gradiente può rimanere positivo poiché non cerchiamo più di ridurre un errore ma di massimizzare la probabilità che il risultato della nostra ipotesi combaci con l'etichetta reale
	- ==Algoritmo di apprendimento==


## Support Vector Machines
- Nel task della classificazione siamo sempre partiti con l'obiettivo di generare un separatore capace di classificare correttamente e da questo abbiamo ottenuto modelli molto efficaci quale il percettrone e il regressore logistico
- Modificando la premessa iniziale possiamo ottenere un altro tipo di modelli definiti support vector machines
- L'obiettivo di una support vector machine è quello di identificare un ==iperpiano capace di massimizzare il margine funzionale==
	- Per margine si intende la minima distanza di un punto del training set dall'iperpiano
	- La norma però viene sostituita con il suo quadrato per rendere l'ottimizzazione più semplice
	- Possiamo quindi esprimere questo problema come un'ottimizzazione quadratica con vincoli lineari
		- Questa è risolvibile con gli strumenti che possediamo 
- Può capitare però che rimanendo nella dimensione del training set in input non si possa separare linearmente con questa tecnica
	- In questo caso si possono ammettere misclassificazioni introducendo delle variabili di slack e di costo (equiparabili a confidenza ed accuratezza) 
		- Tramite queste possiamo traslare i vettori di supporto anche oltre il margine
	- Applicando una funzione che associa ad ogni nostra variabile in input una di dimensione superiore tale da che in questa dimensione il set sia separabile possiamo  ottenere una separazione non lineare nella dimensione di partenza 
		- Il problema è che le trasformazioni possono essere onerose dal punto di vista computazionale
		- Per risolvere possiamo sfruttare il kernel trick
			- Essenzialmente non dobbiamo effettuare la trasformazione dei dati perché la funznione di kernel ci permette di calcolare diretamente il prodotto scalre delle trasformazioni dei dati nel nuovo spazio delle feature.
			- La formulazione duale con kernel è un casino quindi si skippa
## Boosting













--- 
# Reference: [[AI e Machine Learning - Lezioni e slide]]

[^1]: Il valore assoluto di un insieme corrisponde alla sua cardinalità cioè al numero di elementi che lo compone
[^2]: La classe di ipotesi non è nient altro che un insieme di ipotesi h che rispettano tutte un determinato vincolo
[^3]: Empirical risk minimization

