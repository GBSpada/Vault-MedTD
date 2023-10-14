21-07-2023 04:08
Stato: #ideaLez 
Tag: #ArchitettureDiCalcolo #SistemiOperativi

> Invocazione effettuata al sistema operativo da ogni funzione di alto livello quando questa deve interagire con l'hardware 


- Sono necessarie affinché l'utente non faccia danni (scrivere su un file che è già in uso da un altro programma etc etc)
- L'unico programma che agisce sull'hardware senza dover generare una system call è il kernel (oltre ad alcuni dispositivi)
- Spesso non vengono invocate direttamente ma ci si appoggia a delle [[API]]
	- Si tratta in questo caso di librerie più ad alto livello delle system call
	- Si usa fondamentalmente **POSIX** come standard mondiale per definire in modo uniforme i comandi indipendentemente dall'interfaccia
- Vengono eseguite continuamente e per ognuna viene generato un [[Interrupt]] di conseguenza il so viene detto interrupt driven

### Categorie
- Controllo dei processi
- Gestione dei file
- Gestione dell'I/O
- Informazioni sul sistema
- Comunicazioni

### Passaggio dei parametri alle call
- Come tutte le funzioni le syscall richiedono dei parametri
- Tre metodi per passarglieli
#### Nei registri
- Più semplice ma occupa molti registri
#### In un blocco di memoria con indirizzo al blocco nel registro
#### Push dei parametri nello stack
- Il SO recupera i parametri con un pop



---
# References 
[[Architetture e Sist. di calcolo - Sbobine]]
