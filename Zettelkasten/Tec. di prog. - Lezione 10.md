16-06-2023 05:28
Stato: #ideaLez 
Tag: #TecnicheDiProgrammazione 

# Cammini minimi
## Albero dei cammini minimi e floyd warshall
### Definizione
- L'algoritmo di Floyd-Warshall è un algoritmo utilizzato per risolvere il problema del cammino minimo in un grafo pesato (con pesi non negativi), cioè per trovare la distanza minima tra tutte le coppie di nodi in un grafo diretto o non diretto.
- L'algoritmo di Floyd-Warshall sfrutta la programmazione dinamica per calcolare iterativamente le distanze minime tra tutte le coppie di nodi. L'idea chiave è mantenere una matrice di distanze (denominata solitamente `dist`) in cui `dist[i][j]` rappresenta la distanza minima tra il nodo `i` e il nodo `j`.
### Codice
```python
import GraphL as g
def Floyd(G): # La funzione Floyd prende in input un grafo G
  C = g.copyGraph(G) # Crea una copia del grafo G assegnandola alla variabile C. Questo passaggio è necessario perché l'algoritmo di Floyd-Warshall modificherà il grafo.
  for i in g.nodes(C): # Per ogni nodo i nel grafo C
    g.insertEdge(C,i,i,0) # viene inserito un arco da i a se stesso con peso 0 nel grafo C. Questo passaggio garantisce che la distanza da un nodo a se stesso sia 0.
  for k in g.nodes(C):
    for i in g.nodes(C):
      for j in g.nodes(C): # questi tre cicli annidati confrontano ogni nodo del grafo, stabilendo ogni volta un nodo intermedio (k)
        w= g.weight(C,i,k) + g.weight(C,k,j) # verificando quale sia il peso del percorso dal nodo i al nodo j
        if w < g.weight(C,i,j): # in caso tale peso sia inferiore a quello sull'arco che va direttamente da i a j
          g.insertEdge(C,i,j,w) # si aggiorna l'arco da i a j modificandone il peso
  return C # alla fine è restituito il grafo originale con i pesi su ogni arco aggiornati, di modo che rappresentino il costo minore possibile passando per un intermedio 
```

## Dijkstra

### Codice ame
```python
# questo algoritmo è stato creato da chat gpt perchè il prof è nu cuju e non si capisce un cazzo del suo

import heapq 

def dijkstra(graph, start_node): # funzione che prende in input un grafo e un punto di partenza
    distances = {node: float('inf') for node in graph} # viene creato un dizionario che itera ogni elemento del grafo creando una coppia nodo-valore, inizializzando tale valore ad infinito per indicare che non sono ancora stati scoperti percorsi minimi per quei nodi. Man mano che l'algoritmo di Dijkstra viene eseguito e vengono scoperti i percorsi minimi, queste distanze saranno aggiornate con valori più piccoli.
    distances[start_node] = 0 # viene aggiornato il valore accoppiato al nodo di partenza
    queue = [(0, start_node)] # è inizializzata una coda di priorità che contiene solo il nodo di partenza con priorità (distanza) 0. In seguito, durante l'esecuzione dell'algoritmo, gli elementi verranno estratti dalla coda di priorità in base alla loro priorità (distanza minima)
    visited = set() # è inizializzato un set che man mano andrà a tenere traccia di ogni nodo che è stato visitato
    while queue: # è avviato un ciclo che continua finchè ci sono elementi nella coda
        current_distance, current_node = heapq.heappop(queue) # viene estratto il primo elemento della coda e i due valori contenuti nell'elemento della coda, rispettivamente la distanza dallo starting point e il puntatore del nodo corrente
        if current_node in visited: # se il nodo corrente si trova nella lista visited, ergo è già stato visitato
            continue # il ciclo continua, altrimenti si passa alle successive istruzioni
        visited.add(current_node) # viene aggiunto il puntatore del nodo corrente alla lista dei nodi visitati
        for neighbor, weight in graph[current_node]: # si accede ad ogni vicino del nodo corrente e al peso dell'arco che lo connette al nodo corrente (ciò avviene accedendo a graph, che è un dizionario contenente una serie di valori per ogni nodo, compreso vicino e peso, attraverso il puntatore del nodo corrente)
            distance = current_distance + weight # è impostata una variabile di distanza provvisoria che sia la somma della distanza corrente dal primo elemento e il peso del vicino in esame
            if distance < distances[neighbor]: # se tale distanza dovesse risultare minore della distanza registrata nel dizionario delle distanze
                distances[neighbor] = distance # questa sarebbe inserita nel dizionario al suo posto (ovviamente al primo confronto ciò sarà sempre vero in quanto le distanze sono tutte state inizializzate come infinite)
                heapq.heappush(queue, (distance, neighbor)) #  viene inserito in coda il vicino con la nuova distanza
    return distances # quando la coda è vuota è restituito il dizionario con le distanze aggiornate per ogni nodo

# Esempio di utilizzo
# Definizione del grafo come lista di adiacenza

graph = {
    'A': [('B', 5), ('C', 2)],
    'B': [('A', 5), ('D', 1)],
    'C': [('A', 2), ('D', 6)],
    'D': [('B', 1), ('C', 6)]
}

start_node = 'A'
distances = dijkstra(graph, start_node)  
print("Distanze minime dal nodo di partenza:")
for node, distance in distances.items():
    print(f"Nodo: {node}, Distanza: {distance}") 
```



---
### Codice gibbo
- Prima di tutto accedo al grafo e pongo come start uno dei nodi
- Fatto ciò trovo il primo nodo disponibile con il cammino minimo
	- Per fare questo trovo il minimo dei valori che non sia se stesso (grafo\[i]\[j] dove i e j sono uguali) all'interno della riga del nodo preso in esame
	- Salvo questo valore all'interno dell'heap 
- Finchè la coda non è vuota continuo: condizione uscita



## Algoritmi greedy
>è un paradigma algoritmico, dove l'algoritmo cerca una soluzione ammissibile da un punto di vista globale attraverso la scelta della soluzione più appetibile (definita in precedenza dal programmatore) per quel determinato programma a ogni passo locale.








# References 
[[Tecniche di programmazione - Lezioni e tirocinio]]
![[Lezion_10.pdf]]
![[Lezion_11 1.pdf]]