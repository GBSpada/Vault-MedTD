28-09-2023 04:03
Stato: #ideaLez
Tag: #Bioinformatica 

# Sequenze
>[!warning] Nota bene : nomenclatura
>- Geni ortologhi
>	- Simili tra loro per un antenato condiviso
>- Geni paraloghi
>	- Nello stesso organismo duplicazione dallo stesso gene ancestrale
## Allineamento singolo di sequenze
### Distanze
#### [[Distanza di hamming]]

- Sostituzione
- Allineamento diretto, più semplice
- La distanza corrisponde al numero di caratteri che differenziano le stringhe
- Costo
	- Lineare: n
	- Equivale al numero di sostituzioni da effettuare
##### Algoritmo
**AGTCA
ACGTC
A----**
#### Distanza di levenshtein
- Sostituzione-cancellazione-inserimento
![Distanza di levenshtein](https://i.imgur.com/weD6kY0.png)

##### Algoritmo
- Se le due lettere coincidono 
	- Si inserisce il numero della cella diagonalmmetne collegata
- Se le due lettere non coincidono
	- Si inserisce il numero più piccolo fra le tre celle contigue e si aggiunge 1
- Costo
	- $n^2$

#### Distanza di damerau-levenshtein
- Scambio/Trasposizione
- Si può valutare l'entità dei mismatch
	- Da una a cinque basi
		- Errori di trascrizione
	- Fino a 30kbp
		- Inserimenti o delezioni
	- Maggiori di 30kbp 
		- Ricombinazione genica

##### Confronto
- Tramite due tipi di matrici
###### PAM: point accepted mutation
- Probabilità di sostituzione di un amminoacido con un altro nelle sequenze proteiche **durante l'evoluzione**
###### Blosum: blocks subsitution metrics
- Blosum-62
	- Ad esempio
- Il  numero successivo corrisponde a $\frac{\text{Frequenza del 62\% di riscontrare gli amminoacidi nel database BLOCKS}}{\text{probabilità cche i due amminoacidi si allineino per caso}}$

##### Algoritmo
AGTCA
ATGCA
\*--\**


### Tipi allineamento
#### Globale 
- Confronto della sequenza di interesse con l'intera sequenza
- Algoritmo di **needleman-wunsh**
#### Locale
- Riduce il numero di gap al minimo mantenendo più compatta la frequenza da ricercare
- Algoritmo di **waterman-smith**

### Formato di memorizzazione
#### Fasta
```
>ID Commento
Sequenza
```

- Si può accedere a questi file tramite la libreria biopython
```python
seqs = list (Bio.SeqIO.parse("example.fasta", "fasta")) 
```

### Tool di allineamento di sequenze
#### BLAST: Basic Local Alignment Search Tool
##### Funzionamento
1. Si fornisce una sequenza detta di query
2. La sequenza viene splittata in parole chiave di lunghezza fissa (in genere 3) dette seed
3. Viene effettuato allineamento locale
4. Si calcola la similarità tramite uno score
$$\sum {\text{(costo di identità + costo delle sostituzioni)}} - \sum{\text{penalità dei gap}} $$
5. In base al minimal score definiamo un grado di omologia 

##### Tipologie
###### BLASTN
###### BLASTP
###### TBLASTN
- Cerchi una sequenza proteica in una banca dati nucleotidica
###### TBLASTX
- Cerchi delle sequenze nucleotidiche che potrebbero codificare per proteine simili


## 6 frame translation
- Avendo due sequenze, una diretta e una complementare si generano 
	- Tre frame di scorrimento sulla sequenza diretta
		- Partono dai primi tre nucleotidi e vanno avanti
	- Tre frame di scorrimento sulla sequenza complementare/inversa/antisenso
		- Partono da n-1 n-2 n-3 e scorrono al contrario


## Allineamento multiplo
- Per un numero di sequenze minore di tre si possono usare algoritmi esatti
- Quando il numero di sequenze è maggiore di tre gli algoritmi esatti diventano intrattabili e subentrano algoritmi euristici 
### Clustalw
#### 1. Inserimento delle sequenze
#### 2. Calcolo della matrice
![Matrice distanze clustawl](https://i.imgur.com/AcczNNy.png)
- Si valuta la similarità tramite li peso delle sostituzioni
- Effettua allineamento di sequenze (locale, globale)
#### 3. Creazione di un albero filogenetico
![Albero filogen clustawl](https://i.imgur.com/y7Jhmpe.png)
#### 4. Allineamento multiplo
### Ensembl
- Tiene in considerazione i risultati ottenuti da più algortmi per effettuare una scelta meglio ponderata

# Database biologici
> Collezione di dati strutturati omogenei per contenuto e formato

## In generale
- Formato utilizzato
	- Flat - file (tipo fasta, file di testo)
- Banche dati
	- Primarie
		- Contengono sequenze ottenute per
			- Sequenziamento diretto
		
	- Specializzate
## Esempi
### EMBL (banca) - EBI (istituto)
- Contiene
	- Swiss prot
	- TrEMBL
### Gene Bank - NCBI
- Nel suo Fasta mette anche annotazioni
### Ensembl
### OMIM

## Genome browsers
- Necessari a navigare nei database
- Finalità
	- Esplorazione di
		- Cromosomi
		- Elementi di regolazione
		- Organizzazione di un genoma
		- Genomica comparativa
### Ensembl
- Chicca
	- Ti permette di analizzare anche le SNP
#### Protocollo/pipeline
- Sequenza di passi definiti per depositare e nominare i genomi
- Le annotazioni seguono anche questo procedimento
- Standardizzato
>[!warning] Nota bene :
>Aggiornamento periodico e correzioni

#### Annotazione
- Insieme di informazioni sulla regione analizzata
	- Geni, trascritti, varianti, elementi di regolazione
- Strutturale, funzionale
## Human protein atlas
- Composto da 10 sezioni
- Permette di analizzare l'espressione delle proteine in vari contesti

# [[Ontologia]]

## Gene set enrichment test
> ![GSET](https://i.imgur.com/sNqKPdy.png)
> Metodo computazionale che determina se un insieme di geni definito a priori msotri differenze statisticamente significative e concordanti tra due stati biologici

- Nel nostro caso lo eseguiamo a partire dai geni dei test statistici per verficare la presenza di processi accumunanti più elementi

### Fase I
- Calcolo del punteggio di arricchimento tramite matrice di contingenza
### Fase II
- Probabilità che la matrice di contingenza si verifichi tramite la formula della probabilità ipergeometrica
	- In sostanza la probabilità che la query contenga x elemento dei geni espressi in un processo
- Comunque alla fine ottieni un p-value
### Fase III
- Correzione p-value
	- Bonferroni
	- Benjamini-Hochberg

## Similarità semantica
- La similarità tra due termini dal punto di vista del significato
- Serve una base di conoscenze che è data dalle ontologie
	- Data un'ontologia è possibile osservare varie tipologie di distanze
### Prima distanza
- Si basa solo sulla distanza dei nodi nell'ontologia
- Similarità e distanza sono inversamente proporzionali
### Seconda distanza semantica
- Valuta il contenuto informativo $Ic(x)$
- Meno è probabile osservare un termine x più quello sarà informativo
$$Ic(x) = -log_2(p(x))$$
### Terza distanza semantica
- Una volta conosciuto il contenuto informativo di un termine x
	- Valuta quante annotazioni sono associate al termine x ed ai suoi discendenti rispetto alle annotazioni totali
### Quarta distanza semantica: similarità di Resnik
- Valuta il contenuto informativo dell'antenato comune più vicino
$$Sim_{t1,t2} = -log_2(CCA(t1,t2))$$

### Quinta similarità semantica: similarità di Lynn
$$Sim_{t1,t2} = \frac{Ic(CCA(t1,t2))}{Ic(t1)+Ic(t2)}$$

# Gene prediction e ORF
- Data una sequenza lunga dobbiamo conoscere le regioni codificanti
- Con un approccio statistico dovremmo usare il binomiale inverso
	- $E = \frac{n}{p}$
		- E = valore atteso
		- N = numero di successi
		- P = probabilità
	- Non si utilizza perché non è efficiente 
		- Ogni 21 codoni ce ne dovrebbe essere uno di stop
## Analisi
- Una volta identificata una orf possiamo effettuare l'analisi
### Tecniche sulla similarità: PSI-BLAST
- Blast iterativo su matrice di sostituzione
- L'iterazione consta di una correzione passo passo della matrice
### Tecniche ab initio (introni)
- Non necessitano di un database perché si fa un confronto con una struttura di geni ideale
- Ci sono due tipi di sensori
#### Sensore di segnale
- Riguarda le sequenze 
	- Iniziali: RBS, agganci introni
	- Finali: di stop, agganci introni
#### Sensore di contenuto
- Rilevano in base al contenuto se si tratti di un esone o di un introne

### Misura della mutua informazione
- Dato un insieme di regioni codificanti le regioni vengono tradotte in amminoacidi 
- Si insegna ad un sistema di machine learning di valutare le differenze tra le regioni codificanti e le non codificanti sulla base di una matrice di transizione 21x21 in cui viene espresso quanto un amminoacido fornisca informazioni sulla presenza di un altro e viceversa (mutua informazione)

### Vettore F: divergenza jensen-shannon
- Per semplificare dal punto di vista computazionale il confronto tra le sequenze possiamo costruire dei vettori F di 12 elementi che descrivono la frequenza di comparizione posizionale delle singole basi azotate all'interno dei codoni
- Si valuta l'entropia (divergenza) tra i due vettori

## Entropia
- Definizione di entropia in una sequenza x
$$ p(x)log_2(p(x)) $$
- In sostanza probabilità per contenuto informativo

## Validazione del risultato
- Riguardo l'identificazione degli esoni puoi avere
	- Esoni identificati correttamente
	- Esoni inseriti erroneamente
	- Esoni non inseriti (miss)


# Microarray
[[Microarray]]

# Test statistici
## Z-test
1. Formulazione di un'ipotesi nulla ed un'ipotesi alternativa
2. Calcolo del valore Z: 
	- ![Zeta test, valore zeta](https://i.imgur.com/4aoMy8B.png)
	- *X* = media del campione
	- *μ* è la media del riferimento
	- *σ* è la deviazione standard della popolazione
	- *n* è la dimensione del campione
3. Determinazione del livello di significatività (α)
	- probabilità che l'ipotesi nulla non sia verificata
4. Calcolo della regione critica
	- gamma dei valori nella distribuzione al di fuori di cui si rifiuta l'ipotesi nulla
5. Confronto del valore Z calcolato nella regione critica
## U-test
1. Formulazione di un'ipotesi nulla ed un'ipotesi alternativa
2. Raggruppamento dei dati dei due campioni in un unico insieme, assegnando un rango basato sul valore (in base alla classificazione)
3. Calcolo del valore U:
	- ![U-test, calcolo del valore U](https://i.imgur.com/rZqPa6x.png)
	- *n1* e la dimensione del gruppo più piccolo
	- *n2* è la dimensione del gruppo più grande
	- *U1* è la somma dei ranghi del gruppo più piccolo
4. Calcolo del valore di U critico
	- si calcola il valore U, in base al livello di significatività α scelto, tramite tabelle di distribuzione del test U
5. Confronto dell'U calcolato con U critico
	- se U calcolato > U critico, si accetta l'ipotesi nulla
	- se U calcolato < U critico, si rifiuta l'ipotesi nulla
## SAM test
- Significante Analysis for Microarray
1. Raccolta dei dati tramite tecnologia dei microarray
2. Calcolo della *statistica t* (differenza tra le medie di espressione genica tra i gruppi)
	- ![SAM test, statistica t](https://i.imgur.com/JmU08kG.png)
	- *X1* e *X2* sono le medie delle espressioni geniche nei due gruppi
	- *s1^2* ed *s2^2* sono le varianze campionarie nei due gruppi
	- *n1* ed *n2* sono le dimensioni dei due gruppi
3. Permutazioni dei campioni tra le diverse condizioni sperimentali
	- calcolo della statistica t su gruppi casuali (per le differenti condizioni sperimentali), ottenuti dalla frammentazione di una popolazione
4. Calcolo della probabilità che una differenza osservata tra i vari gruppi sia dovuta al caso (p-value)
5. Identificazione dei geni significativi (p-value basso).
## T-student
- Calcolo di una *statistica t* che tenga conto di
	- differenza delle medie dei due gruppi
	- dimensioni dei campioni di studio
	- variazione all'interno dei campioni stessi
- Confronto della statistica t con la distribuzione di t student (nota)
	- serve a determinare la significatività statistica delle differenze medie





--- 
# References
[[Bioinformatica - Sbobine e slide]]