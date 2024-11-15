27-02-2023 18:11
Stato: #ideaL
Tag: #BasiDiDati 

É un linguaggio procedurale basato su concetti algebrici. É un insieme di operatori che agisce su relazioni producendone altre. Fornisce gli strumenti per costruire espressioni al fine di formulare interrogazioni complesse.

Le *relazioni* sono insiemi di **tuple omogenee** (ovvero definite sugli stessi attributi)                          

**Tipi di operatori**:
- Insiemistici tradizionali (*unione*, *intersezione*, *differenza*, [prodotto])
- Specifici (*ridenominazione*, *selezione*, *proiezione*)
- Operatore *join* (in varie forme)

## Operatori insiemistici tradizionali

**Definizioni formali**:
![operatori insiemistici](https://i.imgur.com/JQ0oAeh.jpg)

**Rappresentazioni grafiche**:
![[5. Algebra relazionale 2023-02-23 19.21.15.excalidraw]]

## Operatori specifici

### 1. Ridenominazione ( $\rho$ )
Talvolta le restrizioni su tuple omogenee possono generare inadeguatezze.

Prese le due relazioni:
![3.2](https://i.imgur.com/NjapQ2i.jpg)

L'unione di queste relazioni ha senso, ma è scorretta. Per questo esiste l'operatore *ridenominazione* che permette di adeguare i nomi degli attributi a seconda delle necessità.

Si procederà a rinominare le due relazioni come:
![3.4](https://i.imgur.com/7q0rj2R.jpg)

### 2. Selezione ( $\sigma$ )
Produce un sottoinsieme delle tuple su tutti gli attributi generando *decomposizioni orizzontali*.
Il risultato contiene le tuple che soddisfano una data *condizione di selezione*

La notazione $\sigma_F(r)$ indicherà la selezione delle tuple sulla relazione *r* per cui *F* è vera.

![3.7](https://i.imgur.com/b1ZZaQ8.jpg)

### 3. Proiezione ( $\pi$ )
Operatore ortogonale alla selezione.
Produce un sottoinsieme di attributi sulle le tuple generato *decomposizioni verticali*.
Il risultato contiene le un sottoinsieme di tuple definite su parte degli attributi.

La notazione $\pi_Y(r)$ indicherà la proiezione di *r* su *Y* (sottoinsieme di *X*)

![3.9](https://i.imgur.com/oFGTk8n.jpg)

*NOTA*: 
- Durante l'operazione le tuple uguali "collassano" in una sola tupla.
- Se *Y* è superchiave non ci saranno tuple uguali.
- Se non ci sono tuple uguali allora *Y* è superchiave (analoga alla precedente)

### 4. Join ( ⋈ )
#### Interni
- Prendi solo le occorrenze delle tuple che presentano almeno un elemento a comune
##### Join naturale
- Se tutte le tuple hanno una delle occorrenze presenti nell'altra tabella
##### Join non completo
- Elimina tutte le tuple che non presentano occorrenze a comune con l'altra tabella
##### Join vuoto
- Cancella tutto
#### Join esterni
##### Sinistro
- Inserisce nella tabella sinistra una colonna appartenente alla colonna destra, ma con elementi corrispondenti alla tabella sinistra
##### Destro
- Stessa cosa ma al contrario
##### Completo
- è un join naturale che inserisce NULL qualora manchino delle occorrenze delle entità
#### Semijoin
##### Sinistro
- Inserisci l* colonn* a comune tra le tabelle e tutte le altre della tabella a sinistra
##### Destro
- Uguale





---
# References 

[[Basi di dati - Slide Irina]]
![[1_Algebra Relazionale.pdf]]