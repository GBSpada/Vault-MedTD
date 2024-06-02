24-03-2023 14:45
Stato: #ideaLez 
Tag: #TecnicheDiProgrammazione 

# Roba a lezione inutile 
![[Struttura ospedale e costi]]

## Torre di Hanoi
```python
def Torre Hanoi(n, A, B, C):
	if n==1:
		print("Disk 1 from", A, "to", B)
		return
	TorreHanoi(n-1, A, C, B)
	print("Disk", n , "from", A, "to", B)
	TOrreHanoi(n-1, C, B, A)
TorreHanoi(3, 'A', 'B', 'C')
```
- Stampa le istruzioni per spostare i dischi da una torre all'altra

## Ricerca
### Lineare
- Classica
### Binaria o dicotomica
- EZ
- Visita ricorsiva di un albero

## Ordinamento
### Merge sort
## Lifo e fifo

In informatica, LIFO (Last In, First Out) e FIFO (First In, First Out) sono due metodi di gestione della memoria utilizzati per lo stack e l'heap.

Per lo stack, il metodo utilizzato è sempre LIFO. Ciò significa che l'ultimo elemento inserito nello stack è il primo ad essere rimosso. Quando una funzione viene chiamata, le sue variabili vengono inserite nello stack e quando la funzione termina, le variabili vengono rimosse nello stesso ordine inverso in cui sono state inserite.

Per l'heap, invece, il metodo di gestione della memoria può variare a seconda dell'implementazione. In generale, l'allocazione della memoria nello heap può avvenire sia con il metodo LIFO che con il metodo FIFO.

# Slide 
## Ricorsione
> Si tratta di una tecnica di programmazione basata sulla definizione di metodi e [[Tec. di prog. - Lezione 1#Step1 definire la classe|classi]] (tipi) ricorsivi.

- Fondamentalmente la ricorsione permette di ridurre un problema in sottoproblemi più semplici ma simili a quello originale

### Matematica che ci sta dietro
- La nozione matematica dietro alla ricorsione è l'*induzione*
- In matematica, l'induzione è un principio o un metodo di dimostrazione che viene utilizzato per stabilire la validità di una proprietà per tutti i membri di un insieme. 
- L'induzione si basa sul fatto che se una proprietà è vera per un certo elemento di un insieme e può essere dimostrato che se è vera per un elemento, allora è anche vera per il successivo, allora la proprietà può essere estesa a tutti gli elementi dell'insieme.

### Fattoriale ricorsivo
#### Codice python 
```python
def fattoriale_ric(n): # definiamo una funzione che prenderà una variabile (int) in input
	if n < 0: # Condizione di uscita se l'input non è valido (ci servono numeri positivi)
		return -1 # Per convenzione, potremmo anche stampare un messaggio di errore
	elif n == 0: # Altra condizione limite per la quale non vale la soluzione adottata per il sottoproblema
		return 1
	else:
		risultato = n * fattoriale_ric(n-1)
		return risultato		
```
- Ma step by step come si scrive sta roba?
##### Step 1: identificare il sottoproblema
- Per ciò che concerne il fattoriale sappiamo che si ottiene moltiplicando un numero per il precedente
- Di conseguenza dato un numero **n** il sottoproblema da ripetere ***ricorsivamente*** sarà:
```python
n * n-1 
```
##### Step 2: identificare le condizioni limitanti in cui la soluzione al sottoproblema non risulta "globale"
- In questo caso per n <= 0
```python
if n < 0:
	return -1
if n == 0:
	return 1
```
##### Step 3: richiamare la funzione per ripetere l'istruzione base e mettere da parte il risultato in qualche variabile casomai servisse
```python
else:
	risultato = n * fattoriale_ric(n-1)
	return risultato 
```
#### Record di attivazione
![fattoriale ricorsivo](https://i.imgur.com/wKdJPfE.png)

## Gestione della memoria nell'esecuzione delle funzioni
### Struttura del record di attivazione più nel dettaglio
- Primi accenni: [[Tec. di prog. - Lezione 1#Contenuto del record]]
#### Nel caso della ricorsione
- Si generano una serie di ==**record della stessa dimensione**== contenenti dati locali diversi
- L'area di memoria in cui sono allocati i record viene gestita come una pila (**stack**)
	- LIFO: Last In First Out
		- Come in un cesto di vestiti in cui fondamentalmente le cose che arrivano per ultime vengono lavate per prime
### Allocazione della memoria dei processi: statica vs dinamica
![Memoria allocaata](https://i.imgur.com/taPgr5Q.png)
#### Statica 
- Le variabili vengono allocate in maniera permanente con uno **stack**
- Memoria non riutilizzabile
#### Dinamica
- Variabili allocate dinamicamente mentre il programma è in esecuzione con un **heap** (fila/coda)
- Memoria allocata rilasciabile e riutilizzabile
##### Vantaggi
- Non dobbiamo preoccuparci di quanta memoria serve
- Si può manipolare la struttura dati senza dover allocare altra memoria 
##### Svantaggi
- L'allocazione dinamica implica un consumo maggiore di tempo per il suo completamento
- La memoria allocata deve essere liberata dopo che è stata utilizzata per evitare problemi come perdita di memoria
## Altri codici iterativi e ricorsivi
### Fattoriale iterativo
- Dobbiamo ottenere un numero specifico della serie di numeri fattoriali
```python
def fattoriale_it(f):
    for i in range(1,f):
        f = f*i
    return f    

n = 4
print(fattoriale_it(n)) 
```
#### Passaggi per scrivere il codice
##### Step 1: in cosa consiste il sotto-problema
- Moltiplicare il numero per tutti i suoi precedenti
###### Condizioni limitanti: teoricamente
- Il prodotto deve fermarsi prima dello zero per non annullare tutto
- Il prodotto deve partire o fermarsi al numero di input senza sforare
##### Step 2: capire come vogliamo impostare il ciclo
- In questo caso stiamo usando un for che può scorrere con la funzione range o avanti o dietro, io a piacere decido di scegliere di andare avanti
###### Step 2.1: condizioni limitanti nel ciclo
- La funzione range ci permette di impostare il limiti che nella versione ricorsiva erano espressi con degli if statements
- Ritornando al sotto-problema, in questo caso piuttosto che moltiplicare per i precedenti tornando indietro ==lo moltiplichiamo per tutti i numeri da 1 al numero stesso==: da esso ne emerge che il limite massimo del range sarà **f**
- Il limite minimo sarà **1** in maniera tale da non includere lo **zero**
	- Considerando che 1 non incide sul risultato del prodotto ci si può risparmiare un passaggio mettendo 2 al posto di 1 nel range
##### Step 3: inserire il sotto-problema nel contesto del ciclo
- Basta tradurre in python il secondo punto dello step 2.1
	- Il numero stesso è la variabile f
	- I numeri precedenti si ottengono ad ogni iterazione del for nella variabile i
- Quindi si moltiplica ad ogni iterazione la variabile f per la variabile i mettendo da parte il valore del prodotto nella variabile f (senza usarne altre)
#### Debug
| variabili/iterazioni |   t0   |   t1  |  t2   |
| ---------- | ---- | --- | --- |
| i          | 1    | 2   | 3   |
| f          | == n | 8   | 24  |
| n          | 4    | 4   | 24  |

### Fibonacci ricorsiva
```python
def fibonacci(n): # definisco una funzione per ottenere un numero della serie
    if n <= 1: # dichiaro il caso limite e di uscita
        return n
    else:
       return fibonacci(n-1) + fibonacci(n-2) # esprimo la ricorsività del problema ricorsivo
       
print(fibonacci(4)) 
```
#### Passaggi per scrivere il codice
##### Step 0: piccola aggiunta mia
- immaginate che il codice che richiama la funzione faccia partire una sorta di treno che fa delle operazioni lungo la via o comunque un effetto domino su una serie di numeri
- In questo caso l'effetto domino è doppio perché dobbiamo scorrere "con due treni", uno che si ferma ad ogni fermata e raccoglie i numeri di ordine (n-1) e l'altro che si ferma ogni 2 e raccoglie il secondo elemento della somma per sommarli di volta  in volta 
##### Step 1: comprendere il sotto-problema
- La serie di Fibonacci richiede che ogni numero sia la somma dei precedenti due
- n sarà quindi la somma di n-1 e n-2
	- **Problema da risolvere**
##### Step 2: definire le condizioni limite
- In questo caso n minore o uguale a 1 
##### Step 3: ripetere il problema
- L'if clause ci permette di lavorare nel range corretto di conseguenza richiamiamo la funzione per scorrere verso sinistra fino all'**n** che ci interessa (sarà il terzo numero)
```python
 return fibonacci(n-1) + fibonacci(n-2) 
```
- Scomponiamo rapidamente le due call ricorsive della funzione
	- La prima ci permette di ottenere passo passo il primo numero delle coppie che sommeremo 
	- La seconda ci permette di ottenere passo passo il secondo numero delle coppie che sommeremo
### Fibonacci iterativo
```python
def fibonacci(n):
    l = [0,1] # inizializzo una lista
    for i in range(2, n): # inizializzo un ciclo che percorrerà il range delle somme
        s = l[i-1] + l[i-2] # salvo li valore del numero della serie di fibonacci nella variabile s
        l.append(s) # lo inserisco in una lista l
    return l     # ritorno la lista l 
    
num = 5 
print(fibonacci(num)) # richiamo la funzione e printo la lista ottenuta
```
- In questo caso otteniamo una lista con i primi 5 numeri della serie di Fibonacci

### Torre di Hanoi

![Torre di hanoi](https://i.imgur.com/OffLKv4.png)
- Il problema consiste nel trasportare i dischi in maniera tale che nessun disco possa avere sopra di se dischi più grandi
```python
def spostaDisco(disco, da, a, appoggio):
    if disco == 1:
        print("Sposta il disco", disco, "da", da, "a", a)
    else:
        spostaDisco(disco - 1, da, appoggio, a)  # Passo 3a
        print("Sposta il disco", disco, "da", da, "a", a)  # Passo 3b
        spostaDisco(disco - 1, appoggio, a, da)  # Passo 3c

spostaDisco(3, "A", "B", "C")  # Passo 4

```
#### Debug
![[Pasted image 20230616000650.png|600]]
##### Passo 1
Il disco è uguale a 3, quindi eseguiamo la ricorsione. (linea 5 di codice)
##### Passo 2
Chiamiamo la funzione "spostaDisco" con i parametri: disco = 2, da = A, a = C, appoggio = B. (linea 5)
##### Passo 3a
Chiamiamo la funzione "spostaDisco" con i parametri: disco = 1, da = A, a = B, appoggio = C. (linea 5)
##### Passo 3b
Il disco è uguale a 1, quindi stampiamo "Sposta il disco 1 da A a B" e terminiamo la funzione. (linea 6)
##### Passo 3c
Non c'è alcuna chiamata a "spostaDisco" in questa fase. (torna indietro dalla ricorsione e passa da 3 a 2)
###### Passo 3b
Con il valore 2 stampiamo "Sposta il disco 2 da A a C".  
###### Passo 3c
Chiamiamo la funzione "spostaDisco" con i parametri: disco = 1, da = B, a = C, appoggio = A.
###### Passo 3b
Il disco è uguale a 1, quindi stampiamo "Sposta il disco 1 da B a C" e terminiamo la funzione.
###### Passo 3a
Chiamiamo la funzione "spostaDisco" con i parametri: disco = 2, da = C, a = B, appoggio = A.
###### Passo 3b
Stampiamo "Sposta il disco 3 da C a B".
###### Passo 3c
Chiamiamo la funzione "spostaDisco" con i parametri: disco = 1, da = A, a = B, appoggio = C.
###### Passo 3b
Il disco è uguale a 1, quindi stampiamo "Sposta il disco 1 da A a B" e terminiamo la funzione.
###### Passo 3c
Non c'è alcuna chiamata a "spostaDisco" in questa fase.
###### Passo 3b
Stampiamo "Sposta il disco 2 da C a B".
##### Passo 5: Ora abbiamo spostato correttamente i dischi dalla Torre di Hanoi.
#### Passaggi per scrivere il codice
##### Scomporre il problema nel sotto problema
- Per poter spostare i dischi da una torre ad un'altra bisogna innanzitutto levarli da una torre
- Serve quindi una funzione che prenda in input quattro parametri per poter descrivere l'operazione:
	- Il disco da spostare
	- Il paletto di provenienza
	- Il paletto di arrivo
	- Il paletto di appoggio
##### Riconoscere il caso base/limite
- Quando il disco in questione è solamente 1 può essere spostato liberamente e sarà printata una sola istruzione
```python
if n==1:
		print("Disk 1 from", A, "to", B)
		return 
```
##### Ricorsione del sottoproblema
Segui i passaggi seguenti:
1. Sposta i dischi più piccoli (numero - 1) dal paletto di partenza al paletto di appoggio, utilizzando il paletto di destinazione come appoggio. 
2. Sposta il disco più grande (numero) dal paletto di partenza al paletto di destinazione. 
3. Sposta i dischi più piccoli (numero - 1) dal paletto di appoggio al paletto di destinazione, utilizzando il paletto di partenza come appoggio.
4. Chiama la funzione "spostaDisco" passando i valori iniziali corrispondenti al numero dei dischi (3), al paletto di partenza (A), al paletto di destinazione (C) e al paletto di appoggio (B).
5. Esegui l'algoritmo e verifica se i dischi vengono spostati correttamente dalla Torre di Hanoi.

### Somma degli elementi di un vettore
#### Iterativa
```python
def Sum(A): 
	s = 0 # inizializzo la variabile dove salverò il valore della somma
	n = len(A) # inizializzo una variabile per salvare la lunghezza del vett
	for i in range(n): # inizializzo un ciclo per scorrere lungo gli indici del vettore
		s = s + A[i] # aggiunga alla somma periodicamente in numeri di indice i nel vettore
	return s
V = [0,1,2,4]
print(Sum(V))
```
#### Ricorsiva
```python
def SumRec1(A,k): # in input prendo una lista A e un valore k che sarà fino a dove dichiarerò il punto dal quale voglio fare partire la somma (posso modificarlo e iniziare dal terzo numero ad esempio)
	if k >= len(V):
		return 1
	else:
		return A[k] + SumRec1(A,k+1)
V = [0,1,2,4]
print(SumRec1(V,0) # decido cosa sommare, in questo caso i numeri che vanno dal primo all'ultimo quindi fondamentalmente tutti
```
### Somma degli elementi di due vettori
#### Iterativa
```python
def sumVectIt(V,Z):
    if len(V) != len(Z): # condizione limite
        return "Liste di lunghezza diversa"
    else:
        T = [] # lista che conterrà la somma
        for i in range(len(V)):
            T.append(V[i] + Z[i]) # aggiungi a T le somme indice per indice
        print(T)
        
sumVectIt([1,2,3,4,5], [5,4,3,2,1]) 
```
#### Ricorsiva
```python
def SumVectRec(A,B,k): # 3 input, le due liste e la lunghezza di una delle due
	if k < 0: # condizione di uscita dalla ricorsione
		return []
	else: 
		C = SumVectRec(A,B,k-1) # ricorsione e scorrimento verso la condizione di uscita
		C.append(A[k]+B[k]) # sottoproblema da ripetere ad ogni ricorsione
	return C
	
U = [5,2,1,4]
V = [0,1,2,4]
print(SumVectRec(U,V,len(U)-1))  # si poteva utilizzare anche l'altra lista, le lunghezze sono uguali
```

## Algoritmi di ricerca
- Per cercare un elemento in una struttura dati si usano degli algoritmi in grado di semplificare di gran lunga le operazioni ed i calcoli  
### Ricerca lineare/sequenziale
- Per trovare qualche elemento in un array si scorre letteralmente in una direzione fin quando non si trova l'elemento in questione
```python
def ricercaLin(l, k): # k è l'elemento da cercare, l è la lista
	i = 0
	while l[i] != k:
		i += 1
	if l[i] == k:
		print("L'elemento è stato trovato in posizione ", i)
 ricercaLin([1,3,6,5,1,8], 3)
```
### Ricerca binaria/dicotomica
- Funziona suddividendo ripetutamente l'insieme a metà e confrontando l'elemento cercato con l'elemento nel punto medio.
- Possibile solo in una sequenza ordinata crescente
#### Iterativa
```python
def binaria(lista, k): # prendo in input il numero da cercare e la lista
	left=0 # inizializzo la variabile che rappresenterà il numero più a sinistra
	right=len(lista)-1 # inizializzo la variabile che rappresenerà il numero più a destra
	while(left <= right) : # nel caso in cui l'indice del numero a sinistra sia minore o uguale di quello a destra
		center=(left+right)/2 # definire come numero centrale quello che avrà un indice esattamente a metà tra il numero più a destra e quello più a sinistra
		if k<lista[center]: # se l'input da cercare sarà minore del numero centrale
			right=center-1 # aggiorna il valore del numero più a destra eliminando completamente dalla ricerca tutto ciò che si trova a destra del 
		elif k>lista[center]: # se il numero da ricercare è maggiore del numero centrale si fa il contrario
			left=center+1 # si "elimina/omette" dalla ricerca tutta la parte della lista a sinistra del valore centrale aggiornando la posizione del valore più a sinistra
		else:
			return center
	return -1 
```
#### Ricorsiva
```python
	def binariaric(lista, k, left=0, right=None): # in questo caso bisogna dare da input l'indice del valore più a sinistra e poi si può specificare in quale sezione si vuole cercare tramite l'argomento right che se non viene specificato viene inizializzato a None garantendo effettivament che la ricerca venga fatta per tutta la lnghezza della lista di input
	if right==None: right=len(lista) # questo è il caso standard di ricerca nella lunghezza totale della lista
	center=(left + right)/2 # ritorna il valore centrale della lista
	if left>right: # gestisce il caso di uscita casomai la lista non fosse ordinata
		return -1
	if k<lista[center]: # ingresso nella ricorsione, primo caso: se il numero è più piccolo del centrale si omette la ricerca per tutti quei valori a destra del centrale
		return binariaric(lista, k, left, center-1) # per omettere basta infatti aggiornare i parametri di ricerca della funzione
	elif k>lista[center]: # stessa cosa ma viceversa
		return binariaric(lista, k, center+1,right) 
	else:
		return center
```

## Algoritmi di ordinamento
### Selection sort
#### Funzionamento 
- Divide la sequenza in input in
	- Una sottosequenza ordinata
	- Una sottosequenza non ordinata
- Di volta in volta l'algoritmo seleziona il numero minore nella sottosequenza non ordinata e lo sposta in quella ordinata
- ![Selection sort](https://i.imgur.com/l74LK0K.png)
#### Codice
```python
def selection_sort(lista): # in input prende solamente una lista
	n = len(lista) # salva nella variabile n la lungehzzza della lista
	for i in range(n): # fa scorrere il primo for per tutta la lunghezza della lista
		minimo = lista[i] # primo valore di minimo coinciderà con l'elemento in posizione i-esima
		trovato = False # inizializzo una variabile di guardia per poter uscire dal secondo ciclo
		for j in range(i+1,n): # inizializza il secondo for che scorrerà le cifre successive a quelle del primo for 
			if lista[j] < minimo: # trova il minimo corrente tra i valori successivi all'elemento in posizione i-esima
				trovato = True # aggiorna la variabile di guardia
				minimo = lista[j] # sostituisce il valore di minimo
				indice_trovato = j # salva il valore dell'indice in una variabile da riutilizzare in seguito
		if trovato: # se "trovato" è True, nuovo valore di minimo individuato e si esegue scambio
			occ = lista[i] # salva in una variabile occ l'elemento 
			lista[i] = lista[indice_trovato]
			lista[indice_trovato] = occ
	return lista
	
# lista di prova
l=[5,3,4,1,2,-1,6,-9,0]
print(selection_sort(l))
# output:
[-9, -1, 0, 1, 2, 3, 4, 5, 6] 
```
### Bubble sort
#### Definizione
- Confronta a coppie successive, trovando via via il numero più grande invertendolo con quello alla sua destra
![Bubble sort](https://i.imgur.com/6LUj51U.png)
#### Codice
```python
def bubble_sort(lista):
	n = len(lista) # salvo la lunghezza della lista in una variabile
	for i in range(n-1): # ciclo for per confrontare le coppie di valori, il range arriva fino al penultimo elemento n 
		for j in range(n-1-i): 
			if lista[j] > lista[j+1]:
				occ = lista[j+1] # variabile temporanea usata invertire le posizioni della coppia di valori confrontata
				lista[j+1] = lista[j] # sostituisci il primo valore al secondo 
				lista[j] = occ # sostituisci il primo valore
	return lista
# lista di prova
l=[5,3,4,1,2,-1,6,-9,0]
print(bubble_sort(l))
# output:
[-9, -1, 0, 1, 2, 3, 4, 5, 6]
```
### Insertion sort
#### Definizione
- Scorriamo due sottoliste con dei cicli for che definiremo ordinata e non ordinata
- Ad ogni iterazione il primo elemento della sottolista non ordinata viene inserito nella sottolista ordinata
#### Codice
```python
def insertion_sort(lista):
	n = len(lista) 
	for i in range(1,n): # effettua n-1 iterazioni a partire dal secondo elemento della lista (scorre dal secondo elemento fino al penultimo)
		valore = lista[i] # valore da inserire perché ritenuto minore salvato nella variabile "valore"
		j = i-1 # si inizia una variabile corrispondente all'indice del numero precedente a quello nell'attuale iterazione del primo ciclo 
		while j >= 0 and valore < lista[j]: # dichiaro le condizioni di ingresso nel ciclo: finché stiamo scorrendo numeri con indice maggiore di zero e l'elemento attuale ddella seconda iterazione è maggiore di quello attuale
			lista[j+1] = lista[j] # spostiamo verso destra l'elemento maggiore di quello con indice j
			j -= 1 # scorriamo la lista torniamo indietro con l'indice
			lista[j+1] = valore # sostituiamo il valore
	return lista

# lista di prova
l=[5,4,3,6,-9,0]
print(insertion_sort(l))
# output:
[-9, 0, 3, 4, 5, 6]
```
### Merge sort
#### Disegno
![Merge sort](https://i.imgur.com/LSiLB3z.png)
#### Codice
```python
def merge_sort(elements): # definsco una funzione che prende in input una lista non ordinata per operare prima uno splitting in sottoliste, poi un merging, che confronti queste sottoliste progressivamente ordinandole

    #splitting
    if len(elements)>1:   # questa condizione fa sì che ogni ultima sottolista creata sia di lunghezza 1
        mid= len(elements)//2 # viene individuato il punto centrale della lista in input
        left=elements[:mid] # è individuata una sottolista sinistra della lista in input
        right = elements[mid:] # è individuata una sottolista destra della lista in input
        merge_sort(left) # è richiamata ricorsivamente la funzione per la sottolista di sinistra e poi per quella di destra
        merge_sort(right) # così facendo il programma proseguirà interrompendosi di volta in volta a questo livello fino ad aver ottenuto una lista di lunghezza uno
        # prosegue poi con le successive istruzioni e, una volta eseguite queste, prosegue con le varie funzioni innestate seguendo il modello ricorsivo

      #merging
        a = b = c = 0 # sono impostate tre variabili di valore iniziale zero che fungeranno da indici nel confronto delle sottoliste (a=sottolista di sx; b=sottolista di dx; c=lista principale che è stata divisa nelle due sottoliste(c a sua volta può essere una sottolista))
        while a < len(left) and b<len(right): # a e b saranno indici rispettivamente della sottolista sinistra e della sottolista destra, è quindi imposto che abbiano valore minore della lunghezza delle rispettive sottoliste
            if left[a] < right[b]: # se il valore in posizione a della sottolista di sinistra è minore di quello in posizione b della sottolista destra
                elements[c]=left[a] # si sostituisce il valore in esame a quello nella posizione in esame della lista principale (in questo caso la prima)
                a+=1 # si scorre la sottolista il cui valore è stato spostato, per confrontare il successivo valore della sottolista di sinistra con lo stesso valore fin'ora preso in esame della lista di destra
            else: # in caso il valore della sottolista di destra sia uguale o più piccolo di quello della sottolista di sinistra
                elements[c] = right [b] # si sostituisce nella lista principale (come sopra)
                b+=1 # in questo caso si scorre l'indice della lista di destra, non quello di sinistra
            c+=1 # ad ogni iterazione in ogni caso scorre il valore della lista principale che viene sostituito con il valore minimo trovato (in tal modo percorro ad ciclo di while la lista principale, inserendo in maniera crescente i valori minimi)
        while a < len(left): # siccome con il while precedente, una volta raggiunta la lunghezza della sottolista confrontata(in questo caso dx), rimane fuori l'ultimo elemento (o elementi) della sottolista di sx
            elements[c]=left[a] # questo viene aggiunto alla posizione (o posizioni) rimanenti della lista principale, in quanto risulterà il maggiore (o maggiori)
            a+=1
            c+=1
        while b<len(right): #stessa cosa ma nel caso in cui rimangano elementi della sottolista di dx
            elements[c]=right[b]
            b+=1
            c+=1
    return elements # è restituita una lista ordinata (che nel caso delle ricorsioni (merge_sort(left) o merge_sort(right)) sarà data in input, come left o right dalla funzione che è stata appena eseguita alla funzione che la richiama)

E=[5,8,2,6,9,1,-1,3,0]
print(merge_sort(E)) 
```
#### Commento con disegno
##### Step 1: 
### Quick sort
#### Immagine
![Quick sort](https://i.imgur.com/XH6SS35.png)
#### Codice
```python
# commentando questo codice sarà indiicato che determinate variabili assumano determinati valori, questo perchè solo in tal caso il codice funzionerebbe e sarebbe valido

def partition(numbers, p, r): # si definisce una funzione che prenda in input una lista, un indice di inizio (0) e uno di fine (ultima posizione della lista)
  pivot = numbers[r] # si definisce un valore di riferimento(pivot), in questo caso l'ultimo valore della lista, che sarà confrontato con ogni elemento di essa e attorno a cui saranno costruite due sottoliste, una di valori minori (a sx), una di valori maggiori (a dx)
  i = p-1 # si imposta un indice i, che scorrerà la lista, con valore -1
  for j in range(p,r): # un indice j scorrera ogni posizione della lista
    if numbers[j] <= pivot: # verificando che il valore nella posizione j-esima della lista sia inferiore o uguale al valore di riferimento
      i+= 1 # in tal caso si incrementerà l'indice i (che così sarà anche contatore dei valori minori del valore di riferimento)(ad i viene inizialmente assegnato il valore -1, così, al primo elemento minore del riferimento incontrato scorrendo la lista, il nuovo valore di i sarà 0 e quindi l'elemento sarà spostato in prima posizione e via dicendo)
      numbers[i], numbers[j] = numbers[j], numbers[i] # si procede poi a scambiare il valore minore del pivot con il valore in posizione i-esima
  numbers[i+1], numbers[r] = numbers[r], numbers[i+1] # infine, dopo il ciclo, è scambiato il valore di riferimento con il primo valore ad esso superiore, che si trova subito dopo il valore in posizione i-esima
  return i+1 # viene restituita la lunghezza della sottolista di valori minori o uguali al pivot
def quicksort(numbers,p,r): #si definisce una funzione che prende in input una lista, un indice di inizio e uno di fine
  if p<r: #questa condizione è un controllo che i dati in input siano appropriati e che blocca la ricorsione quando si arriva ad una sottolista di lunghezza 2
    q=partition(numbers,p,r) # è richiamata la funzione sopra
    quicksort(numbers, p, q-1) # con un metodo ricorsivo per ogni sottolista sono ripetuti tutti i passaggi precedenti (la sottolista di valori minori al pivot andrà dal primo elemento all'ultimo prima del pivot)
    quicksort(numbers, q+1, r) # (la sottolista di valori maggior al pivot andrà dal primo valore dopo il pivot alla fine; ogni volta il pivot resta fuori dalle sottoliste)
```
#### Commento con disegno
##### Step 1: 
![Lista di partenza quicksort](https://i.imgur.com/JwxlE5g.png)





# References
[[Tecniche di programmazione - Lezioni e tirocinio]]
![[Lezione 3 _Ricorsione ed esempi.pptx.pdf]]