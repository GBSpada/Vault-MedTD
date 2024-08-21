23-07-2023 02:50
Stato: #ideaLez 
Tag: #ArchitettureDiCalcolo #SistemiOperativi

- Esistono due modelli da seguire per far comunicare i processi
![Comunicazinne tra processi](https://i.imgur.com/q7bnesM.png)
### Memoria condivisa
- Alcuni sistemi operativi definiscono un area di sovrapposizione tra la memoria del processo A e la memoria del processo B
- Non intacca la struttura del kernel e non si passa da system call
- Applicazioni principali
	- Nelle macchine multicore è il modello di riferimento per la comunicazione tra thread
### Scambio di messaggi
- Il processo A sfrutta le system call del kernel per mandare il messaggio al processo B
- Si deve passare per forza dal kernel perché è l'unico processo in grado di accedere alla memoria di altri processi
- Applicazioni principali
	- Nei sistemi di rete distribuiti e per la comunicazione tra processi
## Sincronizzazione: [[Race condition]]
- Problema fondamentale nella comunicazione, in particolare nel caso di una macchina multi core 
- La lettura può essere effettuata da più processi
- La scrittura deve essere gestita in mutua esclusione: un solo processo può scrivere in un determinato momento
- Esistono svariati metodi per sincronizzare
### Problema del produttore e del consumatore
- Non bisogna aggiungere al buffer quando è pieno e non bisogna levare dal buffer quando è vuoto
### Metodi di sincronizzazione
#### Send e receive
#### Semafori
#### Monitor
#### Chiamata di procedure remota
### Istruzioni atomiche
> Se completano la propria esecuzione senza interruzioni
- Importanti nei SO per l'aggiornamento di dati condivisi
- Impediscono all'interleaving di verificarsi
#### Lock mutex
> Lucchetti di mutua esclusione, strumenti nelle [[API]]
- Bloccano e rilasciano atomicamente le istruzioni attraverso le funzioni acquire() e release()
##### Deadlock






---
# References 
[[Architetture e Sist. di calcolo - Sbobine]]
