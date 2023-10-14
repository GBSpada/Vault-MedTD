17-07-2023 02:32
Stato: #ideaLez 
Tag: #ArchitettureDiCalcolo #SistemiOperativi

> Fetch o caricamento: l'acquisizione dalla memoria di un'istruzione dal programma
> Decode o decodifica: identificazione del tipo di operazione da eseguire
> Execute o esecuzione: effettuazione delle operazioni corrispondenti aall'istruzione

>[!example]- Esempio introduttivo
> - Devo dire alla ram cosa voglio scrivere e dove lo voglio scrivere
> - Innanzitutto dico alla ram che devo scrivere tramite il bus di controllo 
> - Se voglio scrivere il valore 10 nella cella 1 metterò 
> 	-  1 nel [[Memory Address Register]] 
> 	- 10 nel [[Memory Data Register]]

## STEP
1. CPU mette il valore di [[Program counter]] nel [[Memory Address Register]] e seleziona lettura tramite il bus di controllo
2. La memoria accede al [[MAR]] e reperita l'istruzione nella RAM la scrive su [[MDR]] attraverso il **bus dati**
3. La CPU copia sull'[[Instruction register]] il valore del [[Memory Data Register]] 
4. L'istruzione passa alla alu
5. Terminata l'esecuzione la CPU copia il valore prodotto dall'[[ALU]] sul registro di output; nel caso in cui sia prevista scrittura
	- La CPU mette l'indirizzo della cella di destinazione sul [[MAR]], il risultato su [[MDR]] e attiva la lettura tramite il bus di controllo
	- La memoria accede al [[MAR]] e a [[MDR]], reperisce il valore in MDR e lo scrive nella cella indicata dal [[MAR]]
6. Si ritorna al punto 1

### Esempio 1: add a caso
- Prendiamo due registri, di cui uno è il program counter
	- Il program counter avrà come valore 20h (h è un esadecimale)
	- IL registro avrà come valore 04h
- Il program counter quindi punta all'indirizzo 20h, il valore di 20h verrà inserito nell'instruction register in lettura incrementando il program counter
- La sequenza viene decodificata in ADD\[64h]
	- Si somma il valore dell'indirizzo 64h al valore attuale nel registro e poi viene scritto sull'indirizzo 64h (per salvare il risultato) 
### Esempio 2: add con indirizzi
- Sommare i valori a,b,c e salvare il nuovo valore nel registro di A
- Le istruzioni sono contenute negli indirizzi dal 789 al 794 della RAM
	- Per semplificare si escludono [[Memory Address Register]] e [[Memory Data Register]]
- I dati sono contenuti nelle celle 4000, 4004 e 4008
#### Esecuzione istruzione 0789
1. Nel [[program counter]] si inserisce il numero 0789 che rimanda alla cella 0789 della RAM **in lettura** 
2. Viene inserita l'istruzione della cella 0789 nell'[[instruction register]] 
	- L'istruzione è load R02 4000, cioè carica nel secondo registro il dato nella cella 4000
3. l program counter viene incrementato di 1
4. Si esegue l'istruzione di IR caricando nel registro 2 il valore della cella seguente 
#### Seconda iterazione per l'istruzione in 0790
- Load R03, 4004
1. Si legge l'istruzione
2. Si esegue
3. Si aumenta il PC
#### Somma
- Istruzione: R01, R02, R03
	- Permette di sommare i valori nel secondo e nel terzo registro salvando il risultato nel primo
#### Store
- Operazione nel registro 0794: store R01, 4000
- Permette di conservare il risultato nella RAM

## Prefetching
- Il problema principale del f-d-e è dato dal tempo necessario a prelevare le istruzioni 
- Una soluzione è quella di raccogliere in anticipo le istruzioni dalla memoria ed inserirle in un insieme di registri detto buffer di prefetch
## Pipelining
- Il pipelining supera il prefetching in quanto divide ulteriormente il processo
- Ad ogni step si possono assegnare delle componenti hardware dedicate in grado di lavorare in parallelo


### Passaggi fondamentali
1. Instruction fetch (IF)
2. Instruction decode (ID)
3. Execution (EX)
4. MEM: Attivazione della memoria per certe istruzioni
5. WB (write back): scrittura del risultato nel registro opportuno


### Tipi
#### Multiplo
- Una singola unità di fetch preleva due istruzioni e le inserisce in due pipeline separate con due alu dedicate
![Pipeline multipla](https://i.imgur.com/VdiPXgd.png)

#### Singolo con le architetture super scalari
- Si associano più unità funzionali nella catena esecutiva







---
# References 
[[Architetture e Sist. di calcolo - Sbobine]]
