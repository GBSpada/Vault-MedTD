23-07-2023 16:41
Stato: #ideaLez 
Tag: #ArchitettureDiCalcolo #SistemiOperativi

- Dipende dai sistemi operativi
	- Nei sistemi batch si parla di job
	- Nei sistemi [[time-sharing]] si parla di processi utente o task
	- Nei sistemi che supportano il multithreading si parla di [[thread]]
## In generale
> Un processo è un programma in esecuzione o, in alternativa, la sequenza di eventi che avvengono in un elaboratore quando opera sotto il controllo di un particolare programma

### Composizione 
![Processo in memoria](https://i.imgur.com/Py5l58H.png)
#### Testo
- Il codice del programma da eseguire
#### Dati
- Le variabili globali, i dati su cui vengono fatte le elaborazioni
#### Stack
- Dati temporanei generati quando si avvia una routine
	- Parametri per i sottoprogrammi
	- Variabili locali e indirizzo di rientro
	- Record di attivazione
#### Heap
- Grande memoria allocata dinamicamente durante l'esecuzione del task
	- Array, liste, alberi, tabelle hash
#### Program counter e registri della CPU
### Note importanti sulla memoria
- Stack e heap condividono una quota di memoria (non hanno dimensione fissa) e possono eventualmente esaurirla scontrandosi
- Si parla in questo caso di **stack-heap overflow**

## PCB: Process control block
- Struttura dati del kernel che si occupa di memorizzare tutte le informazioni necessarie a gestire i processi
- I dati del pcb sono accessibili esclusivamente al kernel e stanno nella ram
### Contenuto
#### 1. Stato del processo
#### 2. Nome (numero) del processo
#### 3. Contesto del processo
- Program counter e registri della CPU copiati nel PCB e poi nuovamente sulla CPU
- Importantissimo perché qualora arrivassero [[Interrupt]] bisogna effettuare svariati [[Context switch]] e bisogna aggiornare alcune informazioni
#### 4. Informazioni sullo scheduling della CPU
- Priorità, puntatori alle code di scheduling
- Fondamentale anche questo perché le code di scheduling non devono perdere la loro struttura
#### 5. Informazioni sulla gestione della memoria allocata al processo
- Registri base e limite, tabella delle pagine o dei segmenti
#### 6. Informazioni di contabilizzazione delle risorse
- Utente proprietario, tempo di utilizzo della CPU, tempo trascorso dall'inizio dell'esecuzione
#### 7. Informazioni sull'I/O
### Gestione
- Vedi [[Scheduler#Ready queue]]



---
# References 
[[Architetture e Sist. di calcolo - Sbobine]]
