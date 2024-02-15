---
stato: "#ideaL"
tags:
  - "#DataMining"
  - "#DataScience"
---

02-10-2023 10:07

--- 

> La classificazione consiste nell'attribuire ad una feature di input x una classe y
## Preliminari ;D
- Come dati in input abbiamo una collezione di record/istanze
	- Ogni istanza è caratterizzata da una tupla (x,y) 
		- x è il set di attributi 
			- Possono essere continui
		- y è un attributo speciale denominato categoria/etichetta/attributo target
			- Deve essere discreto, nel caso in cui sia continuo non si parla più di classificazione ma di regressione

>[!info] Definizione
> Per classificazione si intende il processo di apprendimento di una funzione f capace di assegnare ogni attributo x ad un'etichetta di classe y

### Modelli predittivi

- Il seguente data set descrive una serie di specie tramite degli attributi (x) e associa ad esse un'etichetta di classe (y)
![Data set vertebrati](https://i.imgur.com/D0g0bRt.png)
 ^984587
- Un compito di un modello predittivo potrebbe essere sfruttare le informazioni del dataset per ==attribuire== all'istanza seguente un'etichetta di classe

| name | body temperature | skin cover | gives birth | aquatic creature | aerial creature | has legs | hibernates | class label |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| gila monster | cold blooded | scales | no | no | no | yes | yes | ??? |

- Le tecniche di classificazione però funzionano meglio per prevedere o descrivere data set con attributi binari o nominali
	- Perdono di potenza di fronte ad attributi ordinali perché non tengono conto dell'ordine implicito


## Approccio generale alla risoluzione di problemi di classificazione
> Una tecnica di classificazione è un approccio sistematico alla costruzione di modelli di classificazione a partire da una serie di dati in input
> ![Modello apprendimento](https://i.imgur.com/eIujZ1S.png)

- Ogni tecnica si basa su un ==algoritmo di apprendimento== capace di identificare un modello che riesca a comprendere meglio il rapporto tra il set di attributi e l'etichetta di classe nei dati di input
### Valutazione della performance
- Per effettuarla vengono tabulate le predizioni corrette e incorrette in una tabella detta *matrice di confusione* ![](https://i.imgur.com/Wq8hctr.png)
	- Nel caso dell'immagine ad esempio si descrive la frequenza di 4 casi
		- $f_{01}$ : istanze della classe 0 associata erroneamente alla classe 1 dal modello di predizione
			- Tipo: rettile al posto di mammifero etc
		- Le altre vengono da se
	- Le previsioni corrette saranno quindi, in un modello binario (solamente due etichette), $f_{11} + f_{00}$
- Non è sempre necessaria una matrice, si possono sintetizzare quei valori di frequenza in metriche più semplici quali
	- **Accuratezza**
		- Formula identica al [[I dati#SMC (simple matching coefficient)|SMC]]
		- Fondamentalmente: previsioni corrette/numero totale delle previsioni
	- **Rateo di errore**
		- Numero di previsioni errate/totale delle previsioni

## Induzione di un albero decisionale
- Gli alberi decisionali sono tecniche di classificazione alquanto semplici ma estremamente diffuse

### Come funzionano gli alberi decisionali
#### Esempio esplicativo
- Riprendiamo la [[#^984587|tabella sui vertebrati di prima]] 
	- Invece di classificarli in cinque gruppi di specie differenti li dividiamo in ==due categorie, mammiferi e non==
		- Supponiamo di dover assegnare una di queste due etichette ad una nuova specie
		- La prima domanda è: a sangue freddo o a sangue caldo?
			- Se è a sangue freddo non è sicuramente mammifero
		- In seguito verifichiamo che non sia un uccello controllando il terzo attributo
			- Se gli esemplari femminili della specie danno alla vita i piccoli allora sono dei mammiferi
- Alla base della risoluzione dei problemi di classificazione come questo ci stanno delle domande poste sugli attributi del data set
	- Questa serie di domande può essere organizzata sotto forma di alberi decisionali ![struttura albero decisionale](https://i.imgur.com/cIDDP43.png)

### Come costruire un albero decisionale
- Dato un set di attributi è possibile costruire una miriade di alberi diversi
	- Non esistono quindi algoritmi capaci di ottenere l'albero ==ottimale==
- In tecniche di programmazione abbiamo visto che nei casi in cui gli algoritmi che mirano ad una soluzione globale (ottimale) siano inutilizzabili si possono adoperare algoritmi greedy o in generale algoritmi che accettano soluzioni locali e subottimali
#### Algoritmo di Hunt
> - Dati 
> 	- Un dataset $D_t$ associato al nodo t
> 	- $y = y_1, y_2, y_3,..., y_c$ etichette di classe
> - Step 1:
> 	- Se tutte le istanze di $D_t$ appartengono alla stessa classe $y_t$ allora t è un nodo foglia etichettato come $y_t$
> - Step 2:
> 	- Se $D_t$ contiene record che appartengono a più di una classe, si seleziona una condizione per testare gli attributi e partizionare i record in sottoserie progressivamente più piccole
> 	- Un nodo figlio viene creato per ogni possibilità data dalla condizione di test e i record di $D_t$ vengono distribuiti ai figli sulla base degli outcome
> 	- L'algoritmo viene infine applicato ricorsivamente

##### Applicazione
###### Dataset e obiettivo
![Dataset per Hunt](https://i.imgur.com/VGj3EtI.png) ^70b5cc

- Bisogna costruire un albero decisionale che permetta di assegnare l'etichetta di classe binaria "default borrower" ad un record qualsiasi sulla base di questo *dataset di apprendimento*

>[!info] Dataset di apprendimento
> Si tratta di un dataset costruito ad hoc per generare modelli in grado di reagire correttamente ai record più disparati

##### Passaggi
###### Step 1
![](https://i.imgur.com/6X5Npjx.png)

- Il primo albero contiene un singolo nodo con l'etichetta *==defaulted = no==*
	- Ciò significa che la maggior parte delle persone che richiede un prestito lo ha estinto
- Naturalmente un albero costituito da un solo nodo non è in grado di coprire tutti i casi visto che l'etichetta assume anche il valore yes

###### Step 2
1. Viene scelta la condizione di test che sostituirà il primo nodo: l'attributo home owner
	- Il criterio di scelta verrà spiegato in seguito
2. Sul secondo livello dell'albero vengono imposte le etichette associate all'attributo home owner nel dataset di 

**Ricorsione**
- Nella prima ricorsione dell'algoritmo si sceglie uno dei due outcome e lo si sostituisce con il primo attributo "marital status" (anche qui il criterio emergerà dopo)
![prima ricorsione hunt](https://i.imgur.com/ZljnFiN.png)

- Si ripete quindi l'operazione con l'attributo annual income fino a quando non si coprono tutte le possibilità di combinazioni
![Seconda ricorsione Hunt](https://i.imgur.com/02Zd2gM.png)

##### Limiti di applicazione e condizioni di cui tenere conto
- Alcuni nodi figlio possono essere vuoti, con nessun record associato
	- In questo caso al nodo viene associata l'etichetta più diffusa sulla propria sezione di albero
		- Es: marital status tra i figli ha 2 defaulted = no e 1 defaulted = yes
- Se tutte le istanze associate al dataset hanno gli stessi valori per uno o più attributi allora non è possibile dividere oltre

##### Altri problemi di design

###### Come vanno divise le istanze del dataset di ?
- Bisogna trovare un criterio ma anche una metrica per poter valutare la qualità della scelta
###### Come di ferma la procedura di divisione?
- Quando tutte le etichette appartengono alla stessa classe
	- Si sceglie quella classe
- Quando tutti i record hanno lo stesso valore per una determinata classe
	- Si sceglia quella classe
- Alcuni criteri possono però terminare prima la crescita degli alberi e hanno i loro vantaggi

### Metodi per esprimere le condizioni test degli attributi
- Gli algoritmi di induzione di alberi di decisione devono fornire un metodo per esprimere le condizioni degli attributi di test 
#### Attributi binari
- La condizione di test per una attributo binario genera due potenziali outcome
![](https://i.imgur.com/yqtal2i.png)
#### Attributi nominali
- Ci sono più alternative per le condizioni di test e dipendono dall'algoritmo che va utilizzato
	- Alcuni algoritmi funzionano solo su alberi binari
![](https://i.imgur.com/aKpw1et.png)

#### Attributi ordinali
- Possono produrre sia divisioni binarie che multiple
- Bisogna preservare l'ordine degli attributi, il caso c è sbagliato infatti
![](https://i.imgur.com/4S0cjUf.png)

#### Attributi continui
- Naturalmente non si possono generare divisioni per ogni valore
- Una soluzione potrebbe essere quella di applicare tecniche di discretizzazione 
	- ![](https://i.imgur.com/fS7to9F.png)
- In altri casi si può ricorrere ad una divisione binaria
	- ![](https://i.imgur.com/ldqFnfY.png)
### Misure per selezionare la divisione migliore
![Valutazione divisioni alberi binari](https://i.imgur.com/VSG604i.png)

- Tutte le misure vanno definite nei termini di come sono distribuite le etichette di classe sulle istanze prima e dopo la divisione
- ==$p(i|t)$== è la dicitura con la quale esprimiamo la ==frazione di istanze che appartiene ad una determinata classe i su un nodo t==
	- Su un problema con solo due classi ogni nodo può essere scritto come (p0,p1) dove $p_1 = 1 - p_0$
	- Nell'immagine superiore le distribuzioni sono:
		- Caso a, rispettivamente per C0 e C1: (0.6, 0.4) e (0.4, 0.6)
		- Casi b e c: non serve aggiungere altro
#### Impurità
- Le misure sviluppate per selezionare la divisione migliore sono spesso basate sul ==grado di impurità== dei nodi figli
	- Alcune misure di impurità sul singolo nodo sono (nb: c equivale alle classi possibili)
		- $Entropia(t) = -\sum_{i=1}^{c} p(i|t) \log_2 p(i|t)$
		- $\text{Indice di Gini}(t) = 1 - \sum_{i=1}^{c} (p(i|t))^2$
		- $\text{Errore di classificazione}(t) = 1- max{[p(i|t)]}$
- Si evince quindi che un nodo (0.5, 0.5) presenta la massima impurità 
	- Non fornisce infatti alcuna informazione ai fini della distinzione tra le varie casistiche quando si applica il modello
##### Per valutare l'incremento della purezza
- Estendendo l'analisi a più nodi si valuta la variazione dell'impurità prima della divisione e dopo la divisione
$$\Delta = I(\text{genitore}) - \sum_{j=1}^{k} \frac{N(v_j)}{N} I(v_j)$$

| variabile | significato                                      |
| --------- | ------------------------------------------------ |
| I         | Impurità di un determinato nodo                  |
| k         | Numero di valori degli attributi                 |
| N($v_j$)  | numero di istanze associate al nodo figlio $v_j$ |
| N         | Numero totale di istanze del nodo genitore                                                 |

>[!info] Per capire meglio
>Poiché il nodo genitore è uguale per ogni tipo di condizione di divisione imposta ciò che deve cambiare per massimizzare il guadagno di informazione dato dalla divisione è la media pesata delle impurità dei figli

#### Divisione di attributi binari
![Divisione attributi binari](https://i.imgur.com/iqXrGp4.png)

- Una volta calcolati gli indici di Gini per i nodi N1 e N2 si moltiplicano per il loro "peso" per ottenere i valori di impurità calibrati sul numero di istanze 
	- Si evince che l'attributo B come condizione di test genera dei nodi figlio di impurità minore all'A \[(7/12) x 0.4898 + (5/12) x 0.480 = 0.48]


#### Divisione di attributi nominali
![Divisione attributi nominali](https://i.imgur.com/vRJEfrW.png)
- Il caso binario è pressoché identico
- Nel caso di divisione multipla (b) si calcola l'indice per ogni valore di attributo (family, sports, luxury) e si fa la media pesata di tutti
	- $\frac{(4*0.375)+(8*0)+(8*0.219)}{20}=0.163$
	- Da notare che rispetto al caso binario, questa divisione genera figli più "puri"
#### Divisione di attributi continui
![Divisione attributi continui](https://i.imgur.com/OnHJRgi.png)

- Il dataset è lo stesso che abbiamo usato per l'algoritmo di hunt ([[#^70b5cc]])
	- Dobbiamo quindi cercare il valore dell'introito annuale di denaro capace di generare i figli più puri dalle divisioni
- Teoricamente potrebbero essere testati a la "brute force" tutti i valori degli attributi per poter trovare una condizione di test ottimale 
	- Visto che però è, dal punto di vista computazionale, molto dispendioso, vanno usati altri metodi per trovare la giusta condizione
- Uno di questi metodi consiste nel trovare dei valori intermedi (55,65,72 etc) in maniera tale da distribuirli più equamente nel range disponibile
	- Si calcolano poi i gli indici per ogni valore

### Algoritmi per l'induzione di alberi decisionali
```python
Ecco il codice corretto:
TreeGrowth(8, F)
1: if stopping-cond(E, f') is true then
2:     leaf = createNode()
3:     leaf.label = Classify(E)
4:     return leaf
5: else
6:     root = createNode()
7:     root.test-cond = find-best-split(E, F)
8:     let V = {T | T is a possible outcome of root.test-cond}
9:     for each u in V do
10:        Eo = {e | root.test-cond(e) = u and e ∈ E}
11:        child = TreeGrowth(Eo, F)
12:        add child as descendant of root and label the edge (root -- child) as u
13:    end for
14:    return root
15: end if
```
### Tutta la teoria in sintesi
Ecco il testo tradotto in italiano e suddiviso in sottoparagrafi indentati con tab:

1. L'induzione dell'albero decisionale è un approccio non parametrico per la costruzione di modelli di classificazione. In altre parole, non richiede alcuna assunzione preliminare riguardante il tipo di distribuzioni di probabilità soddisfatte dalla classe e dalle altre variabili 

    2. L'induzione dell'albero decisionale è un problema NP-completo e molti algoritmi degli alberi decisionali utilizzano approcci basati su euristiche per guidare la ricerca nello spazio delle ipotesi.

    3. Le tecniche di costruzione degli alberi decisionali sono computazionalmente convenienti, consentendo una rapida costruzione dei modelli anche con grandi set di addestramento. Una volta costruito un albero decisionale, la classificazione di un record di test è estremamente veloce, con una complessità temporale nel caso peggiore di O(t), dove t è la profondità massima dell'albero.

    4. Gli alberi decisionali, specialmente quelli di dimensioni ridotte, sono relativamente facili da interpretare e forniscono accuratezze comparabili ad altre tecniche di classificazione per dataset semplici.

    5. Gli alberi decisionali forniscono una rappresentazione espressiva per l'apprendimento di funzioni a valori discreti, ma non generalizzano bene a certi tipi di problemi booleani, come la funzione di parità.

    6. Gli algoritmi degli alberi decisionali sono robusti al rumore, specialmente quando vengono utilizzate tecniche per evitare l'overfitting. Gli attributi ridondanti non influenzano negativamente l'accuratezza degli alberi decisionali, ma gli attributi irrilevanti possono essere scelti accidentalmente durante il processo di crescita dell'albero, risultando in alberi decisionali più grandi del necessario. Le tecniche di selezione delle caratteristiche possono aiutare a migliorare l'accuratezza eliminando gli attributi irrilevanti.

    7. L'approccio top-down e ricorsivo di suddivisione utilizzato dalla maggior parte degli algoritmi degli alberi decisionali può portare al problema della frammentazione dei dati, in cui i nodi foglia hanno un numero troppo piccolo di record per prendere decisioni statisticamente significative sulla rappresentazione delle classi. Una soluzione è impedire ulteriori suddivisioni quando il numero di record scende al di sotto di una certa soglia.

    8. La replicazione dei sottoalberi può verificarsi quando le implementazioni degli alberi decisionali si basano su una singola condizione di test attributo in ogni nodo interno. Ciò può rendere l'albero decisionale più complesso del necessario e più difficile da interpretare.

    9. L'induzione dell'albero decisionale comporta la suddivisione dello spazio attributi in regioni disgiunte fino a quando ogni regione contiene record della stessa classe. Le condizioni di test coinvolgono tipicamente l'utilizzo di un singolo attributo alla volta, risultando in confini decisionali rettilinei.

    10. I confini decisionali rettilinei sono una conseguenza dell'utilizzo di condizioni di test su singolo attributo. Ciò può portare al problema della replicazione dei sottoalberi, in cui lo stesso sottoalbero può apparire in diverse diramazioni dell'albero decisionale.


## Overfitting di modello

>[!info]- chat gpt
>- L'overfitting nel contesto della costruzione di un albero decisionale si verifica quando l'albero si adatta troppo ai dati di addestramento e diventa eccessivamente specifico per quel set di dati specifico. In altre parole, l'albero decisionale memorizza le singole istanze di addestramento invece di imparare i pattern generali nei dati.
>- Ciò può portare a una bassa capacità di generalizzazione dell'albero, poiché potrebbe non essere in grado di prendere decisioni accurate su nuovi dati che non corrispondono esattamente ai dati di addestramento. Inoltre, un albero decisionale sovradimensionato può diventare molto complesso e difficile da interpretare.
>- Per evitare l'overfitting nella costruzione di un albero decisionale, è possibile utilizzare tecniche come la potatura (pruning), che riducono la complessità dell'albero rimuovendo i nodi o le foglie meno importanti. Altre tecniche di regolarizzazione, come la limitazione della profondità dell'albero o l'imposizione di restrizioni sul numero minimo di istanze per foglia, possono essere utilizzate per evitare l'overfitting. Inoltre, l'uso di un set di dati di validazione separato può aiutare a identificare quando si verifica l'overfitting e a prendere misure correttive.

### Overfitting dato da rumore
### Overfitting dato dalla mancanza di campioni rappresentativi
### Overfitting e procedura di comparazione multipla
### Stima di errori di generalizzazione
### Gestione dell'overfitting
## Valutazione della performance di un classificatore
### Metodo holdout (blocco)
### Sottocampionamento casuale
### Validazione incrociata
### Bootstrap
## Metodi di comparazione di classificatori
### Stima di intervalli di sicurezza per l'accuratezza
### Comparazione della performance di due modelli
### Comparazione della performance di due classificatori










---
# Reference: [[Data mining e Bioimmagini - Libri]]