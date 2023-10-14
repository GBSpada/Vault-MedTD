05-05-2023 15:16
Stato: #ideaLez 
Tag: #TecnicheDiProgrammazione 

# Prosieguo grafi
## Chiusura di un grafo (con matrice di adiacenza)
> Se esiste l'arco (i,k) e l'arco (k,j) allora deve esistere anche l'arco (i,j)
```python
def closure(graph):
    n = len(graph) # 
    for i in range(n):
        for j in range(i + 1, n):
            if i != j and not graph[i][j] and not graph[j][i]:
                graph[i][j] = 1
                graph[j][i] = 1
    return graph

# Esempio di utilizzo
	graph = [
    [0, 1, 0, 1],
    [1, 0, 1, 0],
    [0, 1, 0, 0],
    [1, 0, 0, 0]
]

closed_graph = closure(graph)
for row in closed_graph:
    print(row)
 
```

## Visita in ampiezza
```python
def bfs(graph, start_node):
    visited = [False] * len(graph)
    queue = [start_node]
    visited[start_node] = True

    while queue:
        node = queue.pop(0)
        print(node)

        for neighbor in range(len(graph[node])):
            if graph[node][neighbor] and not visited[neighbor]:
                queue.append(neighbor)
                visited[neighbor] = True

# Esempio di utilizzo
graph = [
    [0, 1, 1, 0, 0],
    [1, 0, 0, 1, 0],
    [1, 0, 0, 1, 1],
    [0, 1, 1, 0, 1],
    [0, 0, 1, 1, 0]
]

start_node = 0
bfs(graph, start_node)
 
```

## Visita in profondità
```python
def dfs(graph, start):
    visited = set()  # Insieme per tenere traccia dei nodi visitati
    stack = [start]  # Stack per mantenere i nodi da esplorare

    while stack:
        node = stack.pop()  # Prende l'ultimo nodo dallo stack

        if node not in visited:
            print(node)  # Stampa il nodo visitato
            visited.add(node)  # Aggiunge il nodo visitato all'insieme dei visitati

            # Ottiene i nodi adiacenti al nodo corrente dalla matrice di adiacenza
            neighbors = graph[node]

            # Itera sui nodi adiacenti e li aggiunge allo stack se non sono ancora stati visitati
            for neighbor in range(len(neighbors)):
                if neighbors[neighbor] == 1 and neighbor not in visited:
                    stack.append(neighbor)

# Esempio di utilizzo
graph = [
    [0, 1, 0, 1],
    [1, 0, 1, 0],
    [0, 1, 0, 0],
    [1, 0, 0, 0]
]

dfs(graph, 0) 

```

## Cammini
> Sequenze di archi distinti
### Semplici
> Tutti i nodi sono distinti tranne il primo e l'ultimo che possono eventualmente coincidere (**ciclo**)
### Minimi
> Tali che la sommatoria dei pesi dei pesi degli archi del cammino sia minima




---
# References 
[[Tecniche di programmazione - Lezioni e tirocinio]]
![[Lezion_7.pdf]]