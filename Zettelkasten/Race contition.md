24-07-2023 08:06
Stato: #ideaLez 
Tag: #ArchitettureDiCalcolo #SistemiOperativi

> Condizione in cui più processi accedono a dati condivisi generando interleaving

- Può avvenire nella cosiddetta sezione critica
## La sezione critica
- Segmento di codice a cui possono accedere più processi
- Le soluzioni a questo problema devono soddisfare dei requisiti
### Requisiti
#### Mutua esclusione
#### Progresso
- Solo i processi che cercano di entrare possono decidere chi entra e devono farlo in un tempo finito
#### Attesa limitata
- Deve esistere un limite nel numero di volte che altri processi sonno autorizzati ad entrare finché uno dei processi che entra non ha terminato
### Algoritmi
#### 1 di dijkstra
- Crei una variabile condivisa chiamata turn
- Vale per due processi e non più
- Se turn è 1 
- Il processo 1 ha accesso e il processo 0 è in waiting
#### 2 di dijkstra
- Inserisce una variabile condivisa per ogni processo detta flag contenente un booleano
- Se la flag è true allora il processo iesimo è pronto ad entrare nella sezione critica
- Due processi vogliono entrare contemporaneamente? deadlock
#### Peterson
- Aggiunge una variabile di turno che fa eseguire un processo solo se ha una flag true e se è il proprio turno
	- No deadlock perché anche con le flag true il turno andrà a uno dei due processi
- Sempre e solo per due processi
#### Fornaio (di lamport)
- Risolve il problema della sezione critica per n processi
- ogni processo riceve un numero
	- il possessore del numero più piccolo entra nella sezione critica
	- I numeri possono essere uguali ma crescenti 
		- Si verifica l'indice per distinguerli






---
# References 
[[Architetture e Sist. di calcolo - Sbobine]]
