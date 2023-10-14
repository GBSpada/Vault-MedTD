21-07-2023 04:07
Stato: #ideaLez 
Tag: #ArchitettureDiCalcolo #SistemiOperativi

> Strumento che permette di gestire gli eventi del SO generati dall'hardware o dal software

## Regola fondamentale
- Mentre il sistema gestisce un'interruzione le altre interruzioni sono disabilitate 
## Vettore dell'interrupt
- Vettore allocato in memoria contenente gli indirizzi della routine da eseguire quando si verifica uno specifico interrupt

## Trap o eccezione
- Interrupt generato via software causato da un errore o da una richiesta dell'utente effettuata tramite una system call
## Gestore degli interrupt
- Nei sistemi [[Time-sharing]] è spesso necessario il passaggio da un processo all'altro e quindi la **gestione degli interrupt**
	- Ad essa è adibito dell'hardware dedicato
	- Il gestore delle interruzioni 
		1. Ne rileva la natura
		2. Salva le informazioni di stato
		3. Invoca la routine di servizio opportuna 
		4. Esegue un'istruzione di ritorno
		5. Ripristina lo stato della CPU


>[!warning] Nota bene :
>I moderni SO sono interrupt driven

---
# References 
[[Architetture e Sist. di calcolo - Sbobine]]
