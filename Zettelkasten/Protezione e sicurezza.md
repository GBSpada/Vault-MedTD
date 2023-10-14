22-07-2023 00:44
Stato: #ideaLez 
Tag: #ArchitettureDiCalcolo #SistemiOperativi

## Protezione hardware
- Esistono quattro approcci principali alla protezione hardware
### Dual mode
- Oltre agli interrupt hardware provenienti dai device si possono generare interrupt di errori generati dal software
	- [[Interrupt#Trap o eccezione]]
	- Processi in loop
	- Processi che tentano di modificare lo spazio di memoria dedicato ad altri processi o al sistema operativo
- Per evitare che determinati errori si ripercuotano troppo a basso livello il sistema permette l'accesso con due modalità
#### Modo utente
- Solo alcune attività sono permesse esclusivamente nella RAM
#### Modo kernel o system o monitor
- Esecuzione svolta per conto del sistema operativo
- Non si possono eseguire istruzioni che possano creare malfunzionamenti
- All'interno di questa modalità vengono **eseguite** (non chiamate) le [[System call]]
### Protezione dell'I/O
- Ogni istruzione I/O è privilegiata ma c'è il rischio che i programmi bypassino il modo utente accedendo come modo kernel
- Per evitare ciò si adoperano le [[System call]]
### Protezione della Memoria
- Occorre proteggere le aree di memoria critiche 
- Per farlo si utilizzano due registri per determinare l'intervallo di valori corretto a cui un programma può accedere
	- Impostati e mantenuti dal SO
- Quando la CPU genera un indirizzo deve controllare che sia maggiore del registro base e minore di base+limit
#### Registro base
- Contiene l'indirizzo iniziale della memoria a cui un programma può accedere
#### Registro limite
- Contiene la dimensione dell'intervallo in cui il programma può agire
### Protezione della CPU
- Affinché un processo non usi indefinitamente la CPU si impostano dei timer decrescenti oltre i quali si skippa o si killa il processo
## Protezione con il multiaccesso
- Se diversi utenti usufruiscono dello stesso elaboratore l'accesso alle risorse deve esser disciplinato
- I concetti principali sono due
### Politiche
- Obiettivi dei controlli 
	- Il file di un utente deve essere reperibile solo da quell'utente
### Meccanismi
- Strumenti per l'applicazione delle politiche
- Possono variare su una stessa politica







---
# References 
[[Architetture e Sist. di calcolo - Sbobine]]
