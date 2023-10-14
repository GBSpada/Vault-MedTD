04-04-2023 17:07
Stato: #ideaLez 
Tag: #TecnicheDiProgrammazione 

# Lezione
- Identificare un problema
	- Tirare fuori delle statistiche
- Abbiamo lasciato tutto con i grafi in memoria
	- Rappresentati o con matrici di adiacenza o con le liste
 
- In generale in memoria
	- Nello stack facendo riferimento al nome v faccio riferimento ad un indirizzo di memoria
	- Nell'heap trovo ciò che mi interessa che ha quindi indirizzo nello stack
	- ![[Tec. di prog. - Lezione 6 2023-04-14 15.28.30.excalidraw]]
- In python si ha allocazione dinamica dei dati in memoria
	- ==Definizione a runtime a vettore o a matrice==
- Nei linguaggi come c++ o java o c si definisce una **tipizzazione**
	- Dichiarazione della struttura 
		- **Variabile V ==di tipo A==**
	- Permette di chiedere di allocare uno spazio di ==tipo a== per una ==variabile v==
		- Come se io preparassi dello spazio per delle cassette di frutta prima di comprarle
			- Dichiaro quindi:
				- **Spazio, tipo e variabile***
					- L'indirizzo (puntatore) viene comunque attribuito dinamicamente (tranne in c)

- Definizione di classe **generica**
	- La mia classe è strutturata in due parti
		- Una parte dove ci sono i dati
		- Un'altra dove ci stanno le funzioni
	- Nel caso è come se dicessi a priori qual è la "formina del castelletto" 
		- Ogni qual volta devo fare un castello di sabbia
			- **p1 di classe c**
				- Nella classe c ci stanno le funzioni
					- ==NB: OPERAZIONI DI MANIPOLAZIONE DEI DATI==
	- La domanda è 
		- Come fa la funzione a capire quali sono i dati se ancora non sono stati posti?
			- Tramite **self** in python o **this** in java o c++
		- Questi termini sono necessari per la definizione della classe e consentono di fare riferimento dinamicamente agli elementi che caratterizzano la classe stessa

- Pila
	- Una classe è un contenitore con determinati attributi
	- Devo avere la possibilità di inserire e togliere qualcosa
		- Push 
			- Inserisce un elemento
		- Pop
			- toglie un elemento dall'ultimo che ho inserito
	- Definisco un array di elementi
		- Al suo interno avrò una struttura dati che è in grado di contenere delle informazioni
	- Nonostante in python la memoria è gestita dinamicamente così posso "bypassare il problema"
```python
class Pila:
def _init_(self):
	self.Elementi = []
	def Push(self, Elemento):
		self.Elementi.append(Elemento)
	def Pop(self):
		return self.Elementi.pop()
	def EVuota(self):
		return (self.Elementi == [])
```


- Classe di tipo ==coda o queue==
	- In questo caso push e pop si riferiscono al primo e all'ultimo elemento
		- Non si parla di push e pop ma di **enqueue e dequeue**
	- ![[Tec. di prog. - Lezione 6 2023-04-14 15.55.44.excalidraw]]
	- Step
		- Aggiungere elemento in fondo alla coda
		- Estrarre l'elemento in testa alla coda
		- Leggere l'elemento in testa senza rimuoverlo
		- Conoscerne la dimensione

- Inserzione su albero ordinato
	- Da rivedere

- Possibile implementazione grafo
	- è la struttura dati perfetta per descrivere una serie di processi decisionali
- Modalità di visita di un grafo
	- Visita in ampiezza
		- Prima di abbandonare un nodo tocco i vicini
	- Visita in profondità
		- zamn
		- Toccato un nodo mi sposto il prima possibile

# Slide
## Rappresentazione delle strutture dati di python in memoria
### Liste
![Liste in memoria](https://i.imgur.com/4eZx9F0.png)
#### Distribuzione nello stack e nell'heap
- Nello stack saranno inserite le variabili di piccole dimensioni e il puntatore all'indirizzo dell'heap contenente gli elementi della lista

### Matrici
![Matrici in memoria python](https://i.imgur.com/76XM43P.png)
- Ricordiamo che in python le matrici sono liste di liste
#### Distribuzione nello stack e nell'heap
- Nello stack si inserisce semplicemente il puntatore all'indirizzo dell'heap con i puntatori alle liste
## Pila e coda (stack e heap) in python
### Pila
#### Funzionamento
- Si tratta di una struttura dati alla quale possiamo accedere mediante una politica **LIFO** (last in first out)
- Come se fosse un cassetto pieno di vestiti *impilati*, possiamo aggiungere ed eliminare solamente l'elemento "più in alto"
	- Per "più in alto" si intende l'elemento della lista con l'indice maggiore
- In gergo l'aggiunta di un elemento ad uno stack è definita *push*, la delezione invece *pop*
	- Si accede allo stack solamente tramite operazioni di push e pop, in extremis si può fare un'operazione di peek per poter accedere al dato

#### Codice
 - Proviamo a riempire una pila con questi elementi in ordine dal fondo verso la cima: 2, 4, 5  
 - Troviamo inoltre dei metodi per poter accedere agli elementi della pila secondo una politica LIFO
	- metodo .append
	- metodo .pop

```python
pila = [] # ci "appoggiamo" alla struttura dati già esistente in python: la lista

# aggiungiamo elementi allo stack con il metodo append (già presente in python) 
pila.append(4) # aggiungiamo il primo elemento sul fondo dello stack
pila.append(2) # aggiungiamo il secondo elemento posizionandolo subito dopo nello stack
pila.append(5) # stessa storia per l'ultimo elemento

# salviamo nella variabile testa l'ultimo valore
testa = pila.pop() # sfruttiamo il metodo pop che, senza parametri in input, elimina l'ultimo elemento della lista MA lo restituisce nella variabile indicata

TestaSenzaRimuoverla = pila[-1] # in questo caso possiamo ottenere il valore della testa della pila senza rimuoverla e quindi senza alterare la struttura dati
# tieni conto del fatto che teoricamente non potresti cambiare l'indice (-1) perché il peek si può fare solamente sulla testa della pila e non si può vedere sotto ma python te lo permette andando contro però la politica stessa della struttura dati casomai lo facessi

n =len(pila) # lunghezza della pila
```
##### In OOP
```python
class Pila:
	def __init__(self): # inizializziamo un costruttore che permetta agli oggetti e ai metodi di riferirsi ad una lista di elementi che sarà il nostro stack
		self.elementi = []  # il nostro stack
	def Push(self, elemento): # definiamo un metodo push per inserire l'elemento dato in input all'interno dello stack
		self.elementi.append(elemento) # appendi allo stack
	def Pop(self):
		return self.elementi.pop()
	def emptyStack(self):
		return(self.elemeneti == [])

```
### Code
#### Funzionamento
- Si tratta di una struttura dati alla quale possiamo accedere tramite una politica **FIFO** (first in first out)
	- Letteralmente una coda, una fila per una cassa ad esempio
	- La prima persona ad accedere alla cassa è la prima ad andarsene
- Si possono fare 3 operazioni
	- **enqueue**: aggiungere un elemento in fondo alla coda
	- **dequeue**: estrarre l'elemento in testa alla coda
	- **peek**: leggere l'elemento in testa senza rimuoverlo
#### Codice
```python
coda = [] # sfruttiamo sempre le liste in python

# l'aggiunta di elementi non cambia, è identica
coda.append(2) 
coda.append(4)
coda.append(5)

testa = coda.pop(0) # per ottenere il primo valore dobbiamo specificare l'indice nell'argomento della funzione pop, esso corrisponderà al primo elemento aggiunto in ordine cronologico e non all'ultimo come nel caso dell

testaSenzaRimuoverla = coda[0]

n = len(coda) # giusto per salvare la lunghezza in una variabile n
```

## Alberi
#### Definizioni
> Un albero è una struttura dati **gerarchica** che rappresenta una collezione di nodi collegati tra loro attraverso dei collegamenti diretti
- Un albero è composto da un nodo radice e una serie di sotto-alberi, ognuno dei quali è a sua volta un albero.
- La struttura dell'albero è caratterizzata dalla presenza di una gerarchia e da una relazione di parentela tra i nodi. 
##### Nodo
Un nodo è un elemento fondamentale di un albero e contiene un valore o un'informazione. Ogni nodo può avere zero o più nodi figli, ad eccezione del nodo radice.
###### Nodo radice
Il nodo radice è il nodo superiore dell'albero e non ha un nodo padre. È il punto di partenza dell'albero.
###### Nodi figli
I nodi figli sono i nodi direttamente collegati a un nodo padre. Ogni nodo può avere zero o più nodi figli
###### Foglia
Una foglia è un nodo che non ha nodi figli. Si trova alla fine di ogni ramo dell'albero.
##### Percorsi
Un percorso in un albero è una sequenza di nodi che collega un nodo a un altro nodo seguendo i collegamenti del padre-figlio. Ogni percorso è unico all'interno dell'albero.

### Struttura dati
- A noi serve un'albero formato da tanti nodi
- Questi nodi rispettano il criterio che alla loro sinistra avranno sempre un valore minore, alla loro destra ne avranno sempre uno maggiore
	- radice.valore < radice.destra e viceversa	
### Inserzione
#### Come funziona
- Inseriamo un nodo con un determinato valore
	- Mano mano che aggiungiamo valori controlleremo che questi rispettano i criteri dati
	- if valore < radice.valore 
		- if radice.sinistro is None
			- radice.sinistro = valore
	- If valore > radice valore
		- if radice.destro is None
			- radice.destro = valore
		- else richiama la funzione ricorsiva ponendo come tua radice il valore radice.destro e come valore da analizzare sempre lo stesso
### Delezione
#### Come funziona
##### Ricerca del valore da cancellare
- All'inizio dobbiamo cercare il valore da cancellare per ricerca binaria
	- Se valore < radice o al contrario
	- Una volta che valore non è né minore né maggiore perché è uguale entriamo nelle condizioni di cancellazione visto che è stato trovato
##### 2 Casi di cancellazione
###### Il nodo è foglia o ha un figlio
- In un caso il nodo è foglia e si cancella
	- if radice.destra and radice.sinistra is None
		- radice = None
- Nell'altro il nodo ha un figlio il cui valore sostituirà quello del padre
	- if radice.destra or radice.sinistra is not None fai uno swap con una variabile di scambio
	- In realtà questo step contiene la delezione del  nodo radice quindi non serve separare le macrocasistiche (figlio o foglia) perché nel caso figlio, quando a sinistra o a destra trova il valore null ci sarà A PRESCINDERE la delezione del valore radice

###### Il nodo ha due figli
- Se il nodo ha due figli dobbiamo sostituirlo con il numero che gli è più vicino nei due sottoalberi, in particolare cerchiamo il successore più grande nell'albero di sinistra ed il predecessore più piccolo nell'albero di destra
-  ![stato 1](https://i.imgur.com/d2scr7s.png)
- ![stato 2](https://i.imgur.com/KSRnMem.png)
###### Accediamo all'albero di sinistra (o a destra è la stessa cosa)
- Dobbiamo innanzitutto fare ricerca binaria e cercare il valore più grande
	- Accediamo al nodo radice dell'albero di sinistra (18) e poi scorriamo a destra fin quando non abbiamo trovato il valore più grande
- Definiamo quindi una funzione ricerca minimo ricorsiva che ritornerà quel valore 
	- Trovato quel valore cancelliamo il valore della radice dell'albero di sinistra, mettiamo il valore appena ritornato dalla funzione in una variabile temporanea e cancelliamo il nodo che lo conteneva

### Codice per tutto
```python
class Nodo:
    def __init__(self,valore):
        self.valore = valore
        self.sinistro = None
        self.destro = None  

class Tree:
    def __init__(self):
        self.radice = None
    def inserimento(radice, valore):
        if valore < radice.valore:  # Se il valore da inserire è minore del valore del Nodo corrente, inseriscilo nel sottoalbero Ho
            if radice.sinistro is None: # Se il sottoalbero sinistro è vuoto, crea un nuovo Nodo e lo rende il sottoalbero sinistro del Nodo corrente
                radice.sinistro = Nodo(valore)
            else: # Se il sottoalbero sinistro non è vuoto
                Tree.inserimento(radice.sinistro, valore) #richiama ricorsivamente la funzione Tree.inserimento sul sottoalbero sinistro finche non arriva ad un sottoalbero vuoto
        elif valore > radice.valore: # Se il valore da inserire è maggiore o uguale al valore del Nodo corrente, inseriscilo nel sottoalbero destro            
            if radice.destro is None:  # Lo stesso principio di cui sopra viene applicato per il sottoalbero destro
                radice.destro = Nodo(valore)
            else:
                Tree.inserimento(radice.destro, valore)
        else: print("il valore è già presente")
    def ricerca_massimo(radLeft):
        while radLeft.sinistro is not None:
            ricerca_massimo(radLeft.destro)
        if radLeft.sinistro is None: 
            return radLeft.valore
    def delezione(radice, valore):
        if radice is None:
            return "L'albero è vuoto"
        if valore < radice.valore:
            radice.sinistro = Tree.delezione(radice.sinistro, valore)
        elif valore > radice.valore: # Se il valore da cancellare è maggiore del valore del Nodo corrente, cerca nel sottoalbero destro
            radice.destro = Tree.delezione(radice.destro, valore) # stesso discorso
        else: # nel caso in cui il valore sia uguale è stato trovato e si possono gestire le casistiche

            # Caso 1: Il Nodo è foglia o ha un solo figlio
            if radice.sinistro is None:
                temp = radice.destro
                radice = None
                return radice
            elif radice.destro is None:
                temp = radice.sinistro
                radice = None
                return radice
            # Caso 2: Il nodo da cancellare ha due figli
            temp = ricerca_massimo(radice.sinistro)
            radice.valore = temp.valore
            radice.destro = Tree.delezione(radice.destro, temp.valore)
        return radice  

def print_albero(radice, spazio=""):
    if radice is None:  # Se l'albero è vuoto, termina la ricorsione
        print ("ricorsione terminata") 
    # Stampa il sottoalbero destro
    print_albero(radice.destro, spazio + "   ")
    # Stampa il valore del Nodo corrente

    print(spazio + "|__" + str(radice.valore))

    # Stampa il sottoalbero sinistro
    print_albero(radice.sinistro, spazio + "   ")

radice = Nodo(50)
Tree.inserimento(radice, 30)
Tree.inserimento(radice, 70)
Tree.inserimento(radice, 20)
Tree.inserimento(radice, 40)
Tree.inserimento(radice, 60)
Tree.inserimento(radice, 80)

Tree.delezione(radice, 20)

print("Stampa approssimativa dell'albero:")
print_albero(radice) 
```

## Grafi
> Formalmente, un grafo G può essere definito come una coppia ordinata (V, E), dove V è un insieme finito di nodi e E è un insieme di coppie ordinate di nodi, chiamate archi. Gli archi possono essere diretti o non diretti, a seconda che abbiano una direzione o meno.

- Distinguiamo
	- Sulla base del criterio di connessione in
		- Grafi non orientati
		- Grafi orientati
	- Sulla base del valore assegnato agli archi
		- Grafi pesati
		- Grafi non pesati
- Problemi tipo
	- Calcolo dei cammini minimi
- Può essere rappresentato in memoria in tanti modi diversi
### Rappresentazioni
#### Rappresentazione con matrice di adiacenza
> Si usa una matrice nxn in cui l'elemento b(i,j) = 1 se (i,j) risulta essere un arco esistente nell'insieme degli archi, altrimenti b(i,j) = 0
> In memoria si occuperà n^2 spazio
##### Tipologie principali
###### Grafo non orientato
![Matrice di adiacenza](https://i.imgur.com/I259t7s.png)
###### Grafo orientato
![Grafo orientato matrice adiac](https://i.imgur.com/E5qNtw8.png)
###### Grafo pesato
![Grafo pesato matrice adiacenza](https://i.imgur.com/4Rl4KYe.png)
##### Implicazioni
- Canonicamente è quadratica nel numero di nodi
- Simmetrica 
	- Si possono quindi memorizzare i dati solamente sopra la diagonale per risparmiare metà dello spazio
#### Rappresentazione con liste di adiacenza
##### Tipologie principali
###### Grafo non orientato
![Grafo non orientato liste di adiacenza](https://i.imgur.com/L7W4EOs.png)
- Si rappresenta un grafo con un vettore di liste
- Ogni lista rappresenterà un vertice del grafo
	- In ognuna di queste liste sarà contenuto il "puntatore" al valore di tutti quei vertici per cui esiste un arco 
###### Grafo orientato
![Grafo orientato](https://i.imgur.com/CGKUq8t.png)
- Cambiano semplicemente i puntatori e quindi la dimensione delle liste che sarà E e non 2 E (E è l'insieme degli archi)
###### Grafo pesato
![Grafo pesato liste di adiacenza](https://i.imgur.com/XtcufhU.png)
- Si inserisce un valore nelle liste per la pesature
### Algoritmi di visita
> Permettono di esaminare i nodi e gli archi in modo sistematico
- Distinguiamo due principali tipi di visite
#### Visita in profondità
- Es: diagnostica fino all'estremo path
- Si cercano nodi non ancora visitati tra i nodi collegati a quello visitato più di recente
- Ci si appoggia ad una struttura dati che permette di marcare i nodi per evitare di rivisitare troppe volte gli stessi
#### Visita in ampiezza
- Es: caso di contagi e analisi dei contatti positivi nei cittadini
- I vertici vengono marcati quando vengono incontrati la prima volta e si cerca di esplorare immediatamente tutti i vertici raggiungibili da s
- Fa uso di una coda come struttura dati accessoria





---
# References 
[[Tecniche di programmazione - Lezioni e tirocinio]]
![[Lezione_5_6_struttureDati_liste_code_stack_alberi_grafi.pdf]]