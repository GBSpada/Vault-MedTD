19-07-2023 22:23
Stato: #ideaLez 
Tag: #ArchitettureDiCalcolo #SistemiOperativi

## Prima generazione
> Assenza di SO o di SO dedicato

- Le macchine usavano relé meccanici ed erano molto lente
- Tutta la programmazione veniva fatta in linguaggio macchina

## Seconda generazione
> SO batch (a lotti) per sistemi mainframe

- Introduzione dell'I/O su nastro o scchede perforate
- Il programmatore era sia utente che operatore
- I programmi erano definiti job 
	- Il computer li eseguiva uno dopo l'altro ma un errore nel bel mezzo dell'esecuzione faceva fallire tutti i job
	- Codice FORTRAN
### In seguito: IBM 
- Le schede venivano registrate su nastro
- I job venivano sequenzializzati automaticamente
- Il SO leggeva da nastro i job li eseguiva e li salvava su un nastro di output
- Job simili (batch) raggruppati con operazioni offline
#### Esecuzione dei programmi: fasi
- Attività di elaborazione: CPU Burst
- Attività di input/output: I/O Burst
	- In questa fase la CPU rimane libera
	- Riuscire a sfruttare la CPU in questi momenti è fondamentale
### Mainframe
- Multiutenza
- Più utenti potevano usare la stessa macchina (monitor residente)

## Terza generazione
> Sistemi operativi
> - [[Multiprogrammazione|Multiprogrammati]] 
> 	- Fanno girare più programmi contemporaneamente
> - Interattivi ([[Time-sharing]])
> 	- L'utente può interagire in tempo reale per ottenere delle risposte
> - Real time
> 	- Divisi in soft e hard
> 	- Hanno la caratteristica di reagire entro tempi ben precisi con vincoli strettissimi

### Differenze fondamentali
- In generale
	- Circuiti integrati garantiscono un migliore rapporto prezzo/prestazioni
	- Più job sono tenuti in memoria nello stesso momento
		- ==L'esecuzione deve essere interrotta e ripresa più volte==
	- Miglior sfruttamento della CPU
		- Nei tempi di attesa dell'I/O si può allocare un'altro job nella CPU
	- Maggiori complicazione nel design del sistema operativo 
		- Sistema deve allocare memoria per più job
		- [[Scheduler]]
		- Allocazione dei dispositivi e routine di I/O
	- Spooling
		- Simultaneità di I/O e attività di CPU
	- Maggiori dimensioni del buffer
- Feature specifiche
	- [[Multiprogrammazione]]
	- [[Time-sharing]]

### Più noti
- MULTICS
- UNIX
## Quarta generazione
- Miniaturizzazione delle componenti e diffusione dei pc al pubblico
- Sistema più diffuso: MS-DOS della microsoft
- 1992 WEB
	- Diverso da internet nato nel 1969
	- I pc riescono a comunicare sulla rete 
	- Primo **sistema operativo di rete**
		- Stack protocollare TCP/IP
		- Attualmente noto come **sistema distribuito**
- Sistemi embedded
	- Detti anche sistemi Iot (internet of things)
	- Computer integrati dentro altri dispositivi





---
# References 
[[Architetture e Sist. di calcolo - Sbobine]]
