12-05-2023 15:06
Stato: #ideaLez 
Tag: #TecnicheDiProgrammazione 

# Lezione
- Path minimo
	- La sommatoria dei pesi degli archi è minima
		- Ogni sottocammino è minimo
	- ALGORITMO DI dijckstra
		- Mi consente di trovare il cammino minimo su un grafo pesatoo

Algoritmo di floyd warshall è quello generico
- Quello che copre tutti i punti nel cammino minimo ed è detto **albero dei cammini minimi**
- Si parte dalla matrice di adiacenza
	- <iframe height= 800 width= 100% src="https://en.wikipedia.org/wiki/Floyd%E2%80%93Warshall_algorithm"></iframe>

# Slide
## Programmazione dinamica
- Tecnica bottom up
	- Opposto del divide et impera che è top down come gli algoritmi greedy
		- Significa che in dinamica si parte dal sotto problema senza affrontare subito l'istanza del problema principale
	- Identifica **sottoproblemi** risolvendo da quelli più piccoli verso quelli più grandi
		- Si tiene conto di questi valori di risoluzione dei sottoproblemi in una tabella di facile consultazione
### #### Algoritmo di Kadane per il sottovettore massimale
> Considerato un array A, si calcola la somma di ogni ==sottovettore che termina nell'elemento di indice i di A== e **si confronta** con la stessa somma per il ==sottovettore che termina nell'elemento di indice i+1 di A==; la somma maggiore è il sottovettore di somma massimale

- Si tratta di un algoritmo dinamico in quanto si tiene traccia di alcuni valori quali il massimo locale e quello globale per poter effettuare i vari confronti del caso ed infatti si può costruire una tabella per descriver ei passaggi effettuati dall'algoritmo o accedere ai dati
```python
def maxsum(A): # si definisce una funzione che, prendendo un vettore in input, trovi il suo sottovettore con somma massimale
  maxSoFar = 0 # variabile che registri il valore somma massimo trovato globalmente
  start = end = 0 # punti di inizio e di fine del sottovettore di somma massima
  last = 0 # punto di inizio del sottovettore che si sta scansionando (il suo punto di fine sarà l'indice i)
  for i in range(0, len(A)): # con un ciclo di for si percorre ogni posizione del vettore in input
    maxHere = maxHere + A[i] # si aggiunge ogni elemento scansionato alla variabile che ne registra la somma
    if maxHere <= 0: # se il valore somma del sottovettore raggiunge lo zero o valori negativi viene scartato
      maxHere = 0
      last = i + 1 # e si imposta come prossimo punto di inizio del sottovettore da scansionare la posizione successiva
    elif maxHere > maxSoFar: # se invece il valore somma del sottovettore scansionato risulta superiore al valore di somma massimo trovato fino a questo punto
      maxSoFar = maxHere  # il suo valore diventa il nuovo valore massimo
      start, end = last, i # si registrano il suo punto di inizio e il suo punto di fini
  return(start, end) # che vengono restituiti dalla funzione 
```




---
# References 
[[Tecniche di programmazione - Lezioni e tirocinio]]
![[Lezione_8_9_Dinamica.pdf]]