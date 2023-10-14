21-03-2023 16:45
Stato: #ideaLez 
Tag: #ArchitettureDiCalcolo 

# Algebra booleana

## Prima forma canonica
> Il risultato delle operazioni per passare dalla tabella di verità alla notazione booleana

### Step
1. Identificare tutte le righe della tabella di verità con 1 in output
2. Per ogni riga scrivere la configurazione delle variabili che la definiscono
3. Collegare tramite OR tutte le configurazioni ottenute

#### Esempio con lo XOR
![[Tabella score]]

##### Realizzazione di un circuito equivalente
- Con and e not, con 0 e 1 in input ritorna infatti 1 quindi si trova con il risultato della tabella
![[Scomposizione di xor con gli and]]

## Proprietà e semplificazioni dell'algebra booleana
![Proprietà algebra booleana](https://i.imgur.com/jPWhZGW.png)

### Proprietà associativa
![Prop associativa bool](https://i.imgur.com/Hxe8J3d.png)

### Proprietà distributiva
![Prop distr bool](https://i.imgur.com/S5aUJzA.png)

### Legge di DeMorgan
![](https://i.imgur.com/ZqAikFz.png)
- Molto utile perché permette di esprimere l'operatore AND/OR in funzione dell'operatore OR/AND


# Porte logiche
## Transistor e porte
- Composte da **transistor**
![transistor](https://i.imgur.com/pVqdObl.png)
- Struttura
	- V
		- In : tensione in ingresso
		- Out: tensione in uscita
		- cc: tensione di alimentazione
			- Sempre alta
	- Emitter
		- Sta per terra letteralmente
- Funzionamento
	- Il transistor è un *invertitore NOT*
		- Converte un valore logico 0 in 1 e viceversa
	- Se la tensione in ingresso è inferiore ad un valore soglia
		- Il transistor si disabilita
		- ==SE Vin \= 0  allora il transistor si apre==
	- Se la tensione in ingresso supera il valore critico il transistor si attiva e funge da conduttore ideale scaricando V out a terra 

### Porta NAND
![Porta NAND](https://i.imgur.com/OZzv0SO.png)
- Se si apre uno dei due transistor (con una V1/V2=0) a terra non si riesce a scaricare a terra

### Porta NOR
![Porta NOR](https://i.imgur.com/r9WUGvu.png)

## Circuiti integrati
![Circuito integrato](https://i.imgur.com/VBpvp1j.png)

# Rete combinatoria
- Quando i valori dell'uscita (variabili dipendenti) dipendono dai valori di ingresso (variabili indipendenti)
## Tabella di verità
$$ z = F(x1,....,x2) $$
- z = output
- F = funzione
- x1,x2 = variabili input
- Affinché una funzione si possa definire completa deve "ritornare" solo 0 o 1 e mai - (indeterminato)
## Struttura e comportamento
## Complessità e velocità
### Complessità
Direttamente proporzionale a 
- Numero di gate
- Numero di connessioni
Funzione crescente
### Velocità
Inversamente proporzionale a
- Numero di gate disposti in cascata sul più lungo percorso di elaborazione






---
# References
[[Architetture e Sist. di calcolo - Slide e lezioni]]
