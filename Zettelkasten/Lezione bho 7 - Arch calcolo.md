	a22-05-2023 15:11
Stato: #ideaLez 
Tag: #ArchitettureDiCalcolo #SistemiOperativi

# Scheduling

- Algoritmo FCFS
- Algoritmo SJF: short job first
	- Due schemi 
		- Nonpreemptive
			- Si fa burstare il processo che ha un tempo di arrivo minore 
			- In seguito si procede allo stesso modo, se sono tutti arrivati si fanno partire quello con tempo di burst minore
		- Preempitve
			- Garantisce il miglior tempo di attesa
			- Se nel bel mezzo di un processo ne arriva uno che ci mette di meno (a livello di tempo di burst) si inserisce quello e poi si termina il processo precedente
- Tempo di burst
	- Si usa una media pesata esponenziale per stimare il suo valore
- Tempo di turn around
	- Differenza tra istante di inizio ed istante di fine
- Scheduling con priorità
	- Problema: starvation
	- Soluzione: aging
- Algoritmo round robin
	- Ogni processo è fissato alla cpu per un tempo fissato
	- Nessun processo **attende** per (N-1)Q tempo
		- Dove N è il numero di processi e Q è il quanto di tempo assegnato
	- Il tempo di attesa è importante  
	- Importante nei processi interattivi con tempi di esecuzione trascurabili
		- non dei processi batch
- Scheduling a code multiple
	- La CPU può dover eseguire una coda di processi batch e una coda di processi interattivi
	- Si possono fare code multiple in round robin con una finale in FCFS
		- Ogni coda ha un quanto specifico
- Multiprocessing
	- La maggior parte delle macchine ha architetture *simmetriche*
		- 16 core tutti uguali
	- Si fa multiprocessing simmetrico
- Scheduling real time
	- Macchine industriali e dispositivi medici
	- Hard
		- Deadline da rispettare
		- Il processo viene accettato con indicazioni di tempo
	- Soft
		- Sistemi a priorità
- Su windows
	- Fa scheduling su thread nativi
	- Fa preemption e priorità dinamica
	- I thread sono divisi in classi
	- Gestione delle code
		- Ognuna è un round robin tranne l'ultima che è FCFS
		- Gli eventi possono spostare thread
			- O termina il quanto di tempo
			- O viene sospeso per una operazione di attesa
	- Principio
		- I processi real time vengono divisi in categorie con 31 priorità massima e 16 priorità minima
		- Il valore può salire o scendere e quindi può essere gestito real time o a classe variabile se sta sotto priorità 16
- Su linux
	- 139 livelli
		- Real-time fino al 99
		- Nice dal 100 al 140
	- Code
		- Array di task attive
			- Nel limite del quanto di tempo
		- Array di task scadute 
			- Oltre il limite dei quanti
	- Grazie alle sue strutture dati sa subito cosa fare ed è O(1) come complessità
	- Ora si para di completely fair scheduler
## Multiprocessori
- Problema: l'inconsistenza
	- Se ho una variabile che si chiama x e due processi fanno operazioni su questa variabile il risultato finale potrebbe non essere incoerente
	- Situazione del produttore consumatore
		- è capace che le operazioni di produzione e consumazione si facciano in maniera asincrona
	- 







---
# References 
[[Architetture e Sist. di calcolo - Slide e lezioni]]
