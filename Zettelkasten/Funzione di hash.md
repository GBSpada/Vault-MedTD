22-07-2023 03:53
Stato: #ideaLez 
Tag: #ArchitettureDiCalcolo #SistemiOperativi

>Una funzione di hashing (o "hash function" in inglese) è una funzione matematica che prende in input dati di dimensioni variabili e restituisce un valore hash di dimensione fissa. L'obiettivo principale di una funzione di hashing è quello di mappare dati di input di lunghezza arbitraria in un valore hash che rappresenta una sorta di "impronta digitale" univoca dei dati originali.

## Tabelle di hashing
- Applicazione fondamentale delle funzioni di hashing
- In caso di hashing imperfetto si possono verificare attribuzioni di un output a più input
	- In questo caso si usano le liste di collisione
### Ricerca di elemento con indice k
- Si calcola la funzione h con parametro k ottenendo la riga in cui andare
	- Se si verifica una collisione si accede alla lista associata

## Hashing perfetto
- Fondamentalmente
	- Se la tua funzione di hashing tara output in un range che va da 0 a 99 e hai valori di input uniformemente distribuiti da 0 a 99 allora la funzione sarà definita perfetta 

## Ruolo nei sistemi operativi: login
### Vecchio metodo
- Nei primordiali computer esisteva un file nel quale venivano memorizzati gli username e password
	- In questo file si effettuava i confronti con l'input dato in fase di login 
	- Il file era gestito dall'amministratore che aveva accesso a tutte le password
### Nuovo metodo
- Oggi si passa attraverso una funzione di hash
	- Questa è ad esempio SHA-1 che genera chiavi a 160 bit
1. l'utente inserisce username e password
2. Viene applicata la funzione di hash all'username generando l'ID
3. Si cerca la password associata all'ID nella tabella di hash e si confronta con quella dell'utente




---
# References 
[[Architetture e Sist. di calcolo - Sbobine]]
