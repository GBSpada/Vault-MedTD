---
stato: "#ideaLez"
tags:
  - AI
  - MachineLearning
  - DataScience
---
18-05-2024 18:50

--- 
>[!info] 
>Nelle sezioni seguenti vedremo come approcciarci al problema della ricerca in maniera intelligente. Si parte con la definizione di agente razionale per poi porre negli stessi termini sia la ricerca non informata che quella euristica

## Agenti razionali

### Agire razionalmente: gli agenti 

- Come detto nell'introduzione dobbiamo muoverci verso la ==risoluzione di un problema in maniera== intelligente, ==razionale==, ma come facciamo se ==il computer== è una macchina di per sé ==non intelligente==?
- Cerchiamo innanzitutto di ==astrarre== dall'implementazione "computazionale"
	- Noi abbiamo innanzitutto un **ambiente** nel quale identifichiamo un ==problema==
	- Per risolvere questo problema ci serve qualcosa che ==percepisca== l'ambiente e che ==agisca== su di esso: **un agente**

> Un agente è qualunque cosa che percepisce il suo ambiente mediante ==sensori== e agisce sull'ambiente mediante ==attuatori==

- Tra le percezioni e le azioni intercorre una stretta relazione esplicitata dal *==programma==* (se si tratta di una percezione) e/o dalla *==funzione==* (se si tratta dell'intera sequenza)
- Possiamo raccogliere le ==coppie sequenza/azione== in una tabella che quindi può descrivere ogni aspetto dell'agente

| Sequenza                             | Azione |
| ------------------------------------ | ------ |
| (input sensore1, input sensore2)     | x      |
| (diverso input s1, diverso input s2) | y      |
| ...                                  | ...    |


> [!warning] Nota bene:
> La scelta di un'azione compiuta dall'agente dipende esclusivamente dalla *sequenza di percezioni* [^2]



#### Agenti razionali

- Poiché noi vogliamo che le azioni siano finalizzate al conseguimento di un obiettivo gli agenti di cui abbiamo bisogno sono ==intelligenti==


>[!quote]
>L'intelligenza computazionale è lo studio della progettazione degli ==agenti intelligenti==
>- Poole et al 1998


- Il principio cardine intorno al quale costruire questo tipo di agenti è che essi debbano compiere *azioni razionali* [^1] 
	- Per intelligenza infatti noi ci riferiamo alla razionalità e prescindiamo da quello che è invece il comportamento umano, più complesso

- I ==fattori== su cui valutiamo la ==razionalità== dell'agente sono però 4
	- La sequenza delle percezioni (dipende dai ==sensori==)
	- Le azioni effettuabili (dipende dagli ==attuatori==)
	- Una misura di ==performance== dell'azione stessa
	- La ==conoscenza dell'ambiente==
- Questi fattori racchiudono quindi tutti gli aspetti da specificare per progettare un agente razionale e vengono chiamati *Task Environment*
>[!example]- Esempio: Taxi a guida autonoma
>- Performance
>	- Sicurezza
>	- Velocità
>	- Rispetto del codice stradale
>	- Profitto
>- Ambiente
>	- Strade
>	- Traffico
>	- Pedoni
>- Atturatori
>	- Volante
>	- Accellratore
>	- Freni
>	- Luci
>- Sensori
>	- Videocamere
>	- Tachimetro
>	- GPS
>	- Sensori del motore

```python
class Problem(object):
    """The abstract class for a formal problem. A new domain subclasses this,
    overriding `actions` and `results`, and perhaps other methods.
    The default heuristic is 0 and the default action cost is 1 for all states.
    When yiou create an instance of a subclass, specify `initial`, and `goal` states
    (or give an `is_goal` method) and perhaps other keyword args for the subclass."""

    def __init__(self, initial=None, goal=None, **kwds):
        self.__dict__.update(initial=initial, goal=goal, **kwds)

    def actions(self, state):        raise NotImplementedError
    def result(self, state, action): raise NotImplementedError
    def is_goal(self, state):        return state == self.goal
    def action_cost(self, s, a, s1): return 1
    def h(self, node):               return 0

    def __str__(self):
        return '{}({!r}, {!r})'.format(
            type(self).__name__, self.initial, self.goal)
```
### Programmi ed agenti: tipologie
- Quando progettiamo un'agente vogliamo che il suo programma tenga conto di un numero di informazioni piccolo rispetto alla tabella di tutte le percezioni 
- Da questa necessità emergono i seguenti approcci 
#### Simple reflex agents
- Questo tipo di agente seleziona le azioni solamente in base alla percezione corrente
- Le azioni da eseguire vengono scelte sulla base di una serie di *regole condizione-azione* [^3]

>[!info]- Approfondimento: Riflessi di Braintenberg
>Queste regole di condizione-azione sono assimilabili ai riflessi dei veicoli di Braitenberg. Questi veicoli, teorizzati dall'omonimo neuroscienziato italiano, sono stati teorizzati per mettere in evidenza come da una somma di comportamenti semplici possa essere emergerne uno complesso come la paura. Si tratta essenzialmente di robot con tutta una serie di sensori e di attuatori per l'appunto
```mermaid
graph TD
    subgraph Agente
        Sensore
        RegoleCondizioneAzione
        Attuatore
    end
    
    subgraph Ambiente
        A[Ambiente]
    end
    
    A --> Sensore
    Sensore --> RegoleCondizioneAzione
    RegoleCondizioneAzione --> Attuatore
    Attuatore --> A
```

#### Model-based agents

![](https://i.imgur.com/zovCMAb.png)
- Alle condizioni descritte in precedenza bisogna aggiungere ulteriori informazioni
	- ==Stato interno==
		- L'agente possiede uno stato interno che dipende dalle proprie percezioni
	- ==Modello dell'ambiente== 
		- L'agente ha un'idea dell'ambiente e delle sue evoluzioni
	- ==Conseguenze delle proprie azioni sull'ambiente==
		- Self explainatory

#### Goal-based agents
![](https://i.imgur.com/sVqkjbj.png)

- Questi agenti prendono decisioni in base ad un ==obiettivo== coinvolgendo anche considerazioni sul futuro (prima si faceva implicitamente)
- Essenzialmente le regole di condizione-azione valutano anche il raggiungimento di un obiettivo 
	- La decisione sull'azione da intraprendere viene effettuata sulla base di 
		- Come è cambierebbe l'ambiente effettuando quella determinata azione
		- Se questa azione permette di raggiungere l'obiettivo

#### Utility-based reflex agent
![](https://i.imgur.com/sVqkjbj.png)

- Questi agenti prendono decisioni in base ad un ==obiettivo== coinvolgendo anche considerazioni sul futuro (prima si faceva implicitamente)
- Essenzialmente le regole di condizione-azione valutano anche il raggiungimento di un obiettivo 
	- La decisione sull'azione da intraprendere viene effettuata sulla base di 
		- Come è cambierebbe l'ambiente effettuando quella determinata azione
		- Se questa azione permette di raggiungere l'obiettivo

- In questo caso l'agente ==non sceglie in maniera binaria== (se ha raggiuntoo meno un obiettivo) ma si appoggia ad una ==misura di performance interna==: l'*utilità*

### Applicazioni
#### Ricerca
> Il problema della ricerca consiste nell'identificazione di una sequenza di azioni per poter raggiungere il proprio obiettivo

###### Progettazione
- Abbiamo detto che per progettare un agente ci servono 4 fattori, per identificarli innanzitutto formuliamo il problema
	- Dobbiamo raggiungere un luogo Y a partire da un posto X: **stato iniziale e stato goal**
	- Abbiamo una serie di città raggiungibili: **azioni che cambiano lo stato**
	- Ogni transizione ha una sua funzione di costo : **misura di performance**
	- L'**ambiente** è 
		- Osservabile
			- L'agente conosce sempre lo stato corrente
		- Discreto
			- Le azioni disponibili non sono infinite
		- Noto
			- Abbiamo una mappa accurata quindi conosciamo le conseguenze della nostra azione
		- Deterministico
			- Ad ogni azione corrisponde un risultato preciso
##### Implementazione: Romania
- Stati: maggiori città rumene
	- Stato iniziale: Arad
	- Stato goal: Bucharest
- Azioni: Guidare da una città all'altra
- Costo: Distanza in km

#### Aspirapolvere
#### Puzzle 8
#### 8 regine
## Ricerca non informata
- Per rappresentare e risolvere computazionalmente il problema della ricerca dobbiamo traslare quello che abbiamo appena detto nel lingo di ==algoritmi e strutture dati==
### Le strutture dati 
#### Grafo
- La rappresentazione di tutti gli stati possibili viene fatta con un grafo [^5]
	- In questo caso non si parla di nodi ma di stati
	- Gli ==archi== corrispondono alle ==transizioni di stato==
#### Albero
- Per tenere traccia dell'esplorazione del grafo usiamo un **albero di ricerca**
	- In questo caso dobbiamo muoverci verso la risoluzione del problema quindi ==oltre allo stato== ci servono ==ulteriori informazioni== sull'esplorazione del problema
		- Ogni nodo dell'albero dovrà avere quindi più attributi ([[Tec. di prog. - Lezione 1#OOP in python]])
			- ==Stato==: stato identificato da n [^4]
				- Due diversi nodi possono avere lo stesso stato
			- ==Genitore==: nodo che ha generato n
			- ==Azione==: l'azione che ha generato n
			- ==Costo del cammino==: il costo g(n) del cammino dall'origine fino a n
	- Terminologia
		- Lo ==stato iniziale== rappresenta la **radice**
		- Ogni ==diramazione== è data da **azioni** e stati sucecssivi
		- Lo ==stato corrente== è detto **nodo padre**
		- I ==nodi senza figli== sono **nodi foglia**
			- Quelli in attesa di essere espansi sono raccolti nell'insieme frontiera (F)
#### Strutture accessorie
- Sono necessarie **strutture accessorie** per tenere conto dei **nodi visitati (E)** e della **frontiera (F)**
	- Distinguiamo gli algoritmi di ricerca sulla base della struttura dati adoperata  per la frontiera (heap,stack etc) 
	- Per evitare la ridondanza teniamo traccia degli stati vistitati in una lista E

### Misure di performance
#### In generale
- Dobbiamo innanzitutto valutare
	- **Completezza** 
		- Se esiste una soluzione, l'algoritmo riesce a trovarla?
	- **Ottimalità**
		- La soluzione trovata è di costo minimo?
	- **Complessità**
		- La dividiamo in 
			- Temporale
				- Numero di nodi generati
			- Spaziale
				- Massimo numero di nodi nella frontiera
#### Variabili
- **Fattore di ramificazione: b**
	- Numero massimo di successori posseduti da uno stato
- **Profondità dello spazio di ricerca: d**
	- Minima profondità di un nodo goal

### Algoritmi
>[!warning] Nota bene: Passaggi comuni
>- Inizializza la frontiera con la radice 
>	- $F = {s0}$
>- Inizializza l'insieme dei nodi esplorati
>	- $E = \emptyset$
>- Condizioni di uscita
>	- Se F è vuota restituisci fail
>		- Essenzialmente se non ci sono nodi di espandere hai finito no?
>	- Se s_n è goal restituiscilo con il cammino in E
>- Se s_n non compare in E espandi n aggiungendo i suoi figli a F
>- Aggiungi n ad E

#### Ricerca in ampiezza
#### Ricerca a costo uniforme
#### Ricerca in profondità
#### Ricerca a profondità limitata
#### Iterative deepening
#### Ricerca bidirezionale

## Ricerca informata o euristica
### Approccio generale
> Sfruttiamo la ==conoscenza specifica del problema== per raggiungere più rapidamente il **goal**

- L'implementazione è essenzialmente identica a quella della ricerca a costo uniforme
	- In quel caso avevamo una ==coda di priorità== data dal costo effettivo della transizione da uno stato ad un altro
	- La differenza sta nel fatto che la ricerca euristica fa leva su una *funzione di valutazione f(n)*[^6] 
		- Spesso questa funzione risulta composita e la componente fondamentale è una *funzione euristica h(n)* ([[Euristica]]) 
#### Proprietà
##### Ammissibilità
>Una funzione euristica h si dice ammissibile se per ogni nodo n, ==h(n) è minore o uguale dell'costo effettivo per raggiungere il goal==
##### Consistenza
> Una funzione euristica h si dice consistente se per ogni nodo n e ogni suo successore n' tramite un'azione a, si ha che 
> $$h(n)\le c(n,a,n') + h(n')$$
> - La stima della distanza da n al goal è minore della somma tra
> 	- La stima della distanza dal nodo successivo al goal
> 	- Il costo effettivo per raggiungere il nodo successivo

>[!info]- Proposizione: se h è consistente, allora h è ammissibile
>![](https://i.imgur.com/I2JsEjk.jpeg)

### Algoritmo greedy (vedi problema Romania)
![](https://i.imgur.com/yx3rnv1.png)
- Assegniamo ad ogni nodo (in realtà ad ogni transizione di stato) una funzione euristica: $$f(n)=h(n) = distanza \, in \, linea \, d'aria \, di \, n \, da \, Bucharest$$
	- In rosso vediamo il cammino ottimale
	- In nero il cammino seguendo l'algoritmo greedy
- I valori sui cammini corrispondono ai costi effettivi della transizione di stato
#### Caratteristiche
- La soluzione trovata non è necessariamente la migliore, nell'esempio infatti il cammino ottimale e quello percorso sono diversi
	- ==L'algoritmo greedy non è ottimo==
- Nel caso peggiore il costo è identico al depth first: $O(b^m)$

### Algoritmo A*
- Gli algoritmi euristici dipendono fortemente dalla loro funzione di valutazione
- Per migliorare la performance rispetto al precedente approccio modifichiamo quindi f(n)
	- Alla stima h(n) aggiungiamo il costo per raggiungere quel determinato nodo g(n)


>La funzione di valutazione dell'algoritmo A* è data dalla ==somma del costo per raggiungere un determinato nodo con la stima della distanza del suddetto nodo dal goal==
>$$f(n)=g(n)+h(n)$$

![](https://i.imgur.com/R3ZXTjB.jpeg)

#### Ottimalità di A*
> Se h è consistente allora A* è ottimale

##### Dimostrazione
1. Se h(n) è consistente allora f(n) è non decrescente su ogni cammino
	- Essenzialmente l'inclusione del ==costo effettivo per raggiungere il nodo successivo (c(n,a,n'))== all'interno della formula fa si che il ==costo aumenti rispetto alla stima== che invece omette le caratteristiche reali del problema 
$$f(n')= g(n')+h(n')=g(n)+c(n,a,n')+h(n')\ge g(n)+h(n)=f(n)$$
2. Ogni volta che A* selezione un nodo n, il cammino ottimo per n è già stato trovato
	- Sinceramente bho
#### Curve di livello
- Durante l'espansione possiamo valutare come i nodi aggiunti possano essere racchiusi in curve di livello concentriche 
![](https://i.imgur.com/B2GSVLy.png)

#### Costo
> Sia C* il costo della soluzione ottima
> - A* espande tutti i nodi n tali che f(n) > C* 
> 	- f(n) < f(n') 
> - A* può espandere nodi tali che f(n) = C*
> - A* non espande nodi n tali che f(n)>C*
> 	- Stessa cosa del primo punto

### Puzzle-8

|     | 1   | 2   |
| --- | --- | --- |
| 3   | 4   | 5   |
| 6   | 7   | 8   |

#### Euristiche
- In questo caso troviamo due euristiche
	- h1: numero di caselle in posizione scorretta
	- h2: somma delle distanza di ogni casella dalla posizione corrente alla posizione goal
##### h1
| 7   | 2   | 4   |
| --- | --- | --- |
| 5   |     | 6   |
| 8   | 3   | 1   |
$$h1 = 8$$
- Si tratta di un'euristica che ci fa fare delle valutazioni binarie: gli unici due stati sono posizione corretta e posizione scorretta
##### h2
- Stessa tabella di h1
$$h2 = 3+1+2+2+2+3+3+2=18$$
- In questo caso l'euristica ci fa fare una valutazione che può avere 4 valori
	- 3: distanza massima in caselle dalla posizione corretta (stato goal)
	- 2
	- 1
	- 0: numero sulla posizione corretta
- Essenzialmente una [[I dati#Distanza di Minkowski|distanza di manhattan]]
#### Caratteristiche
- Entrambe le euristiche sono ammissibili
- h2 domina su h1
	- $h_{2}(n)\ge h_{1}(n)$
	- Se dovessimo visualizzare la dominanza in termini di visita del grafo potremmo dire che A\*(h2) espande meno nodi di A*(h1)
	- Le euristiche con i valori più alti sono da preferire




### Problemi rilassati
- Le precedenti ==euristiche== possono essere viste come ==soluzioni di problemi semplificati==
	- Rispetto alla risoluzione classica del puzzle-8 infatti avevamo ==meno restrizioni sulle azioni possibili==
- Se dovessimo generare il grafo di un problema rilassato esso sarebbe un *super-grafo* di quello del problema originale

> - Ogni soluzione ottima nel problema originale è una soluzione nel problema rilassato
> - Il costo di una soluzione ottima del problema rilassato è un euristica ammissibile e consistente del problema originale

## Ricerca con avversario







[^1]: Un'azione è definita razionale se massimizza il raggiungimento di un obiettivo sulla base delle informazioni disponibili

[^2]: La sequenza di percezioni è la storia completa di tutto quello che l'agente ha percepito

[^3]: Come dice il nome si tratta di regola che associano a delle condizioni (percezioni) un'azione specifica

[^4]: Per stato si intende una configurazione unica del problema in un certo punto del processo di risoluzione

[^5]: Un grafo è una struttura matematica utilizzata per modellare relazioni tra coppie di oggetti costituita da due insieme, uno dei vertici (nodi) e uno degli archi (spigoli)

[^6]: Funzione che assegna un valore ad ogni nodo e rappresenta una stima del costo minimo per arrivare al goal da n





--- 
# Reference: [[AI e Machine Learning - Lezioni e slide]]
