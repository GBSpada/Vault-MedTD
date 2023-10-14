19-07-2023 20:55
Stato: #ideaLez 
Tag: #ArchitettureDiCalcolo #SistemiOperativi

- Sono responsabili di gestire le transizioni tra [[Esecuzione dei processi#Stati d'esecuzione|stati]] e sono di tre tipologie
- Perchè
	- Quando ci sono tanti programmi da eseguire si possono fare due cose
		- Chiudere i programmi che superano il limite di memoria
		- Chiedere al sistema operativo di risolvere li problema facendo ricorso alla [[Memoria virtuale]]

## Tipologie

### A breve termine: CPU scheduler
>Ha il compito di gestire le operazioni successive da eseguire una volta che la CPU è libera

- Seleziona tra i processi pronti quelli che devono essere eseguiti

#### Dispatcher
- Passa il controllo ai processi selezionati dallo scheduler della CPU per la loro esecuzione
- Svolge il [[context switch]], il passaggio al modo utente, il salto all'istruzione da eseguire del programma corrente
#### Criteri
- Utilizzo della CPU
- Throughput
- Tempo di turnaround (completamento)
- Tempo di waiting
- Tempo di risposta
##### Come mai questi?
- Oltre che per massimizzare l'uso della CPU ed i tempi servono anche per ottimizzare i tempi medi e ==minimizzare la varianza del tempo di risposta==
#### Algoritmi e tipi di scheduling
##### First come first served FCFS
- Effetto convoglio
- Può essere con priorità, preemptive e nonpreemptive
###### Starvation
- I processi a bassa priorità potrebbero non essere mai serviti, si risolve con l'aging
##### Round robin
- Ogni processo è assegnat
  o per un tempo prefissato, trascorso quel tempo viene inserito nella **ready queue** (vedi sotto) 
- Maggiore tempo di turnaround ma miglior tempo di risposta
##### SJF
- Il problema è conoscere in anticipo la durata dei processi
- Si stima statisticamente tramite una somma pesata
	- Bisogna tenere conto sia della storia recente che di quella passata tramite valori intermedi di alfa
![SJF formula statistica](https://i.imgur.com/T8CPpvw.png)

#### Schedulazione multiprocessing
- In una macchina con più core la schedulazione si fa con due approcci
##### Asimmetrico
- Solo un processore prende le decisioni relative allo scheduling
##### Simmetrico
- Ciascun processore schedula se stesso selezionando un processo dalla coda comune dei processi pronti o da una coda specifica per se stesso
#### In windows
- Code multiple con feedback basato su priorità dinamica e preemption
##### Sfrutta i thread
- Svolti con prelazione e priorità, considerando il quanto e le [[System call]] bloccanti
- Suddivisi in due classi di priorità che si spandono sue 31 livelli
	- Variabili
	- Real time
##### Foreground e background
- Distingue i processi in queste due categorie assegnando quanti di tempo differenti
#### In linux
- 140 livelli di priorità divisi in real-time e nice
- Due array di priorità
	- Attivo
		- Contiene i task che hanno ancora tempo da usare
	- Scaduto
		- Contiene i task che hanno completato i quanti di tempo assegnati


### A medio termine: swapper
>![Swapper](https://i.imgur.com/2XO3S2k.png)
>Ha il compito di gestire i processi pronti in memoria centrale nei sistemi [[Time-sharing]], rimuove i processi dalla memoria centrale (swap out) per poteri reinserire quando sarà possibile (swap in)

- Migliora l'utilizzo della memoria in caso di alta richiesta

#### Caratteristiche fondamentali
![Code scheduler](https://i.imgur.com/kBbjTxq.png)
- Necessita di code
##### Coda dei processi
- Tutti i nuovi processi nel sistema
##### Ready queue
![Queue header](https://i.imgur.com/OWdYnPU.png)
- Tutti i processi nella memoria centrale pronti per essere eseguiti
- Si memorizza come una serie di liste concatenate
	- Nella queue principale ogni elemento punta al primo ed all'ultimo elemento della lista di PCB
	- Ogni PCB della lista punta al prossimo PCB con il prossimo processo da eseguire
##### Coda del dispositivo
- Insieme dei processi in attesa di usare un dispositivo
### A lungo termine: job scheduler
> Presente solo nei sistemi di tipo batch, seleziona i processi da inserire nella ready queue garantendo la massima efficienza





---
# References 
[[Architetture e Sist. di calcolo - Sbobine]]
