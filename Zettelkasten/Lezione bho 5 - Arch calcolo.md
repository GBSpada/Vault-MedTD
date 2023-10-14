12-05-2023 10:58
Stato: #ideaLez 
Tag: #SistemiOperativi
# SO
## Android
# Gestione dei processi
- Sistemi time sharing
	- Processi utenti o task
- Sistemi multithreading
	- Thread
- Job e processo sono cose diverse
## Definizione di processo
- Composto da
	- Sezione di testo
	- Sezione dati
	- Stack
		- Dati temporanei
		- Parametri per i sottoprogrammi
		- Variabili locali, indirizzi di rientro etc etc.
	- Heap
		- Memoria allocabile dinamicamente durante l'esecuzione del programma
		- Strutture dati vengono messe quà durante l'esecuzione
	- Program counter
## Processo allocato inn memoria
L'heap e lo stack crescono ognuno contro l'altro
La memoria quindi genera uno spazio per entrambi e  sia stack che heap "competono" per questo spazio, si può generare uno stack/heap overflow quindi.
## Stato del proesso
- New
- Running
- Waiting
- Ready
- Terminated
>[!warning] Nota bene :
>L'operazione di lettura scrittura si fa tramite una system call

## PCB: processo control block
- Un array, un record, che memorizza le informazioni necessarie e principali per gestire i processi
- Ne esiste uno per ogni processo
- Memorizzati in aree di memoria limitate
- Composto da
	- Stato del processo
	- Numero del processo
	- Program counter
	- Registri 
	- Limiti di memoria
	- Lista di file aperti

## Scheduling dei processi
- Il più usato è time sharing
### Code di scheduling
- Contengono i PCB
- Ready queue
	- Contiene i processi pronti
	- Lista concatenata
### Diagramma di accodamento
- Ci dice fondamentalmente come siamo mesi a livello di code
- Descrive in sintesi tutte le possibili alternative in seguito ad un processo
### Tipi di scheduler
- A lungo termine
	- Seleziona i job
	- Può essere lento
- A breve termine
	- Seleziona robe per la CPU

>[!info] Processi I/O - bound e CPU-bound
> I processi alternano sempre CPU burst e I/O burst
> Questi burst si alternano nel tempo, in base a quanto tempo passa sui vari burst si distinguono processi cpu o i/o bound.
> In base al tipo inoltre cambiano i tipi di scheduling

#### Scheduler a medio termine
- Fa da swapper

### Context switch
- Quando si cambia processo si devono mettere da parte le info nei pcb
- il tempo per cambiare tra un processo è il tempo per fare context switch
	- Non deve essere troppo lungo
- Step
	- Salvare lo stato nel PCB
	- Salva il PCB in RAM
	- Quando vuole riprenderlo deve riprendere tutto dalla ram e mettere in esecuzione di nuovo i processi
- I tempi in cui il programma subisce questi spostamenti è definito tempo di idle 

# Operazioni sui processi

## Creazione
- Ogni processo presenta un **pid**, process id
- Rapporto padre/figlio
	- Basic
		- Un processo può creare altri processi
		- Il processo foglia non genera altri processi
		- Se un processo padre muore lo faranno anche i figli 
	- Condivisione di risorse: 3 casi
		- O condividono tutto, o niente o una parte di risorse
	- Approcci di esecuzione
		- Padre e figli vengono eseguiti in concorrenza
		- Padre attende la terminazione dei processi figli 
	- Indirizzi
		- Figlio duplicato del padre
		- Nel figlio viene caricato un altro programma
	- 







---
# References 
[[Architetture e Sist. di calcolo - Slide e lezioni]]
