24-07-2023 03:31
Stato: #ideaLez 
Tag: #ArchitettureDiCalcolo #SistemiOperativi

- Un processo può essere creato non solo dall'utente ma anche da altri processi
	- Come nel caso della [[Shell o interprete dei comandi]]
	- Si descrive questo fenomeno formando un albero dei processi
- Considerando che tutti i processi dipendono dal sistema operativo possiamo tranquillamente creare un albero dei processi che alla radice che un processo init

## In unix
![Albero dei processi unix](https://i.imgur.com/BP3b1ar.png)
- Il processo init da vita a molti altri processi tra cui
### Figli di init
#### Kthreadd
- Genere
#### Sshd
- Processo server che permette ad una macchina remota di collegarsi con una macchina locale 
- Nel caso avvenga questa connessione verrà creato un processo figlio sshd
#### Login
- Genera il processo figlio bash che è quello della [[Shell o interprete dei comandi]]
	- Esso a sua volta crea 
		- ps
			- gestisce il listing dei processi attivi
		- emacs
			- Processo di scrittura attivato nell'editing
### La fork
![fork](https://i.imgur.com/fYlhpYH.png)
- La [[System call]] per creare dei processi in unix è fork()
- A seguito di essa si avrà un processo padre con uno o più processi figli in esecuzione
- Ci sono due comportamenti in sintesi
	- Il padre si pone in attesa della terminazione del figlio
	- Il padre procede nell'esecuzione concorrentemente al figlio (bisogna aggiungere &)
![Fork in unix](https://i.imgur.com/CmfZhAn.png)
### PID: process id
- Viene assegnato ad ogni processo sulla base di criteri del SO




---
# References 
[[Architetture e Sist. di calcolo - Sbobine]]
