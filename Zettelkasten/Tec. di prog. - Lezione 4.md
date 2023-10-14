31-03-2023 14:42
Stato: #ideaLez 
Tag: #TecnicheDiProgrammazione 
# Schifo a lez
Complessità
- Si misura in termini di numeri di ==passi== dei calcolatori
- Si calcola indipendentemente dall'input
	- Si parla di scalabilità dell'algoritmo
==Algoritmo medio più efficiente==

![[Tec. di prog. - Lezione 4 2023-03-31 15.11.49.excalidraw]]

## Librerie
### Macrodivisione
#### Statiche
#### Dinamiche
D un set di nomi di funzioni e stabilisce in fase iniziale la definizione
Il nome della funzione e le variabili
Quando io compilo e la lib è dinamica se il nome della funz è presente il codice va avant ma quando io traduco il print deve essere associato ad un indirizzo dove c'è la prima istruzione associata alla print
Se la lib è dinamica anziché  prendere le 1' istruzione e montarle memorizzo solo la prima istruzione consistente ad un altro indirizzo
Prima di eseguirla chiedo per piacere se può essere caricata in memoria la lista di istruzioni
**A runtime**
##### Vantaggi
Posso levare le procedure di sicurezza ed assegnarle ad una libreria apposta
La libreria quindi si può aggiornare
### Casi particolari
#### NeuroKit 2
- Segnali non MRI che danno informazioni sul cervello
## Algoritmi
### Somma elementi di un vettore
#### Iterativa
```python
def Sum(A):
	s = 0
	n = len(A)
	for i in range(n):
		s = s + A[i]
	return s
V = [0,1,2,4]
print(Sum(V))
```
##### Nello stack
![[Funzione somma in memoria]]
![Nello Taver](https://i.imgur.com/RQLtJnP.png)






---
#### Ricorsiva
```python
def SumRec1(V,k):
	if k >= len(V):
		return 0
	else:
		return A[k] + SumRec1(V,k+1)
V = [0,1,2,4]
print(SumRec1(V,0))
```
![[Tec. di prog. - Lezione 4 2023-03-31 16.04.35.excalidraw]]

### Ricerca
#### Ricerca lineare
na strunzat
#### Ricerca binaria
Possibile solo se l'array è ordinato
```python
def binario(lista,k,left,right):
	if right==None: right=len(lista)
	bhjsbdjkafsbdffjksnajlkgjdnddoò
```
### Ordinamento
#### Selection sort
> Selection sort è un algoritmo di ordinamento che seleziona iterativamente l'elemento più piccolo dalla lista non ordinata e lo sposta alla sua posizione corretta nella lista ordinata. 

![MENDEL|200](https://i.imgur.com/XPWL8gw.pngg)

#### Bubble sort
![michael buble|500](https://i.imgur.com/NaSNQdb.jpg)
#### Merge sort
![marge simpson|200](https://i.imgur.com/T32IjVY.png)
#### Quick sort


# Grafi
## Nodo
> Costituito da una informazione e degli indirizzi a cui punta
### Definizione di record nelle strutture di memoria dinamiche
La definizione è intrinsecamente ricorsiva





# References 
[[Tecniche di programmazione - Lezioni e tirocinio]]
