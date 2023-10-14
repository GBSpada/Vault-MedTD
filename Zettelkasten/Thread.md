24-07-2023 05:21
Stato: #ideaLez 
Tag: #ArchitettureDiCalcolo #SistemiOperativi

> Unità base d'uso della CPU, comprende un identificatore di thread, un program counter, un insieme di registri ed uno stack

## In generale
- Processi più leggeri, prendono senso solo nel contesto di altri processi
- ==Condividono memoria== fra loro ed il processo a cui appartengono
	- Hanno però program counter (thread counter) e pid (TID) separati
- Risolvono il problema del [[context switch]]
- Si eseguono all'interno delle applicazioni
- A differenza dei processi se muore un thread figlio si killa tutto il processo

## Gestione dei thread
### A livello utente
- Strato separato al di sopra del SO
- Non richiedono interventi diretti del nucleo ma servono librerie
	- POSIX, Windows threads, Java threads
### A livello kernel
- Gestiti dal SO
## Relazioni tra i thread
### Molti a uno
- Modello più semplice
- Si creano tanti thread ad alto livello
	- Vengono poi eseguiti da un unico thread nel kernel
### Uno a uno
- Approccio più intuitivo
- Gestiti dallo scheduler kernel come processi: thread nativi
### Molti a molti
- Modello ibrido
- più o meno thread kernel




---
# References 
[[Architetture e Sist. di calcolo - Sbobine]]