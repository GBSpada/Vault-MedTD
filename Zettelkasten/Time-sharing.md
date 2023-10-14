21-07-2023 03:01
Stato: #ideaLez 
Tag: #ArchitettureDiCalcolo #SistemiOperativi

> Computazione interattiva, l'utente interagisce con un interfaccia tramite quale fornisce comandi che producono visivamente un risultato in modo immediato

- Il tempo di risposta (non di completamento) deve essere il più breve possibile
- In caso di richieste multiple l'interattività è garantita dalla divisione del tempo di cpu in tanti intervalli Q occupati ciascuno da un programma
	- Modulando la lunghezza di questo time slice si può accedere con più efficienza al programma stesso MA non deve essere troppo corto perché c'è un tempo di swap tra i programmi
	- Si può sempre ricorrere alle priorità


---
# References 
[[Architetture e Sist. di calcolo - Sbobine]]
