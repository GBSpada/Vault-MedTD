23-05-2023 16:53
Stato: #ideaLez 
Tag: #ArchitettureDiCalcolo #SistemiOperativi


# Sezione critica
- Race condition
	- Più processi accedono e manipolano dati condivisi
- Requisiti per gestire la sezione critica 
	- Mutua esclusione
	- Progresso
		- Solo i processi che vogliono entrare decidono
	- Attesa limitata
## Soluzioni
### Algoritmo 1  di dijkstra
#### Intro
- L'algoritmo che sfrutta la variabile di turn per la sezione critica è una tecnica di sincronizzazione utilizzata per garantire l'accesso esclusivo alla sezione critica da parte di più processi o thread.
- L'algoritmo prevede l'utilizzo di una variabile di turn, che viene inizializzata a 0. Ogni processo o thread che vuole accedere alla sezione critica deve prima acquisire il turno, ovvero aspettare che il valore della variabile di turn sia uguale al proprio identificativo. Quando il turno corrisponde all'identificativo del processo o thread, questo può accedere alla sezione critica e modificare le risorse condivise. Al termine dell'elaborazione, il processo o thread rilascia il turno incrementando il valore della variabile di turn.
#### Step
1. Inizializzazione: si inizializza la variabile di turn a 0.
2. Acquisizione del turno: ogni processo o thread che vuole accedere alla sezione critica deve controllare il valore della variabile di turn. Se il valore della variabile di turn è uguale al proprio identificativo, il processo o thread può accedere alla sezione critica. Altrimenti, il processo o thread deve aspettare che il valore della variabile di turn corrisponda al proprio identificativo
3. Accesso alla sezione critica: una volta acquisito il turno, il processo o thread può accedere alla sezione critica e modificare le risorse condivise.
4. Rilascio del turno: al termine dell'elaborazione, il processo o thread rilascia il turno incrementando il valore della variabile di turn. In questo modo, il turno passa al processo o thread successivo.
5. Ripetizione: i passaggi 2-4 vengono ripetuti fino a quando tutti i processi o thread hanno completato l'elaborazione.





---
# References 
[[Architetture e Sist. di calcolo - Slide e lezioni]]
