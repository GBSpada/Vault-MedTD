
08-08-2023 15:02
Stato: #articolo 
Tag: #Bioinformatica #Statistica #DataScience ^abc42a

# Introduzione
- La statistica consiste nel raccogliere, organizzare, analizzare, interpretare e presentare dati
## Tipi di statistica
### Descrittiva
> I dati vengono raccolti sulla base di medie e deviazioni standard. Grafici di vario genere vengono adoperati per descrivere una collezione di dati

#### Misure
- La statistica descrittiva si appoggia a 4 tipi principali di misure
##### Misure di frequenza
- Mostrano la frequenza in cui un particolare dato compare nel campione
##### Misure di dispersione
- Range, varianza, deviazione standard
- Misurano come i dati si disperdono in un intervallo
##### Misura della tendenza al valore centrale
- Le tendenze principali sono media, mediana, moda
##### Misure di posizione
- Percentili e quartili
### Inferenziale
> Interpretazione della statistica descrittiva, permette di "derivare inferenze" a partire da dati che possono essere soggetti ad errori osservazionali o di campionamento.

## Nella data science
- I test statistici vengono utilizzati per fare **test di ipotesi**
	- In sintesi servono a determinare se una variabile definita *predittiva* e una variabile definita di *outcome* siano in un rapporto statisticamente rilevante
### Tipi di test statistici
##### Parametrici
- Usati se i dati sono "normalmente" distribuiti
##### Non-Parametrici
### Cosa si deve verificare effettivamente con questi test
#### Indipendenza delle osservazioni
- Le osservazioni non devono essere correlate
- Ad esempio, ripetere gli stessi test su un solo paziente genera misurazioni non indipendenti
#### Normalità dei dati
- I dati si distribuiscono lungo la cosiddetta curva "normale" di Gauss
- Questo tipo di presupposto è necessario solamente per dati quantitativi
#### Omogeneità della varianza
- Ogni gruppo comparato deve avere una simile varianza (distribuzione dei valori intorno alla media)
# Tipi di test
## Z-Test
>![Z-Test](https://i.imgur.com/lr4H8B5.png)
>Test statistico utilizzato per comparare la media di un campione alla media della popolazione quando conosciamo la deviazione standard di quest ultima

### Elaborando sulla definizione
1. Il test ci permette di misurare la differenza delle medie di due popolazioni in condizioni specifiche (quando conosciamo al varianza e la dimensione del campione è elevata)
2. Necessita di una distribuzione normale
3. Ritorna un valore detto Z-Score
### Esempi real-life
#### Generico
- Un'azienda dice che la durata media delle scarpe che produce è 500 giorni
- Raccogliamo un campione di 50 scarpe e dimostriamo che la durata media è 490 giorni con 25 di deviazione standard
- Con questi dati possiamo effettuare un Z-Test per dimostrare se l'azienda ha ragione
#### Specifico 1
- Si vuole vedere se un farmaco ha correlazione con l'IQ
	- L'IQ è distribuito normalmente (fenomeno adeguato)
- Si selezionano 20 persone e si registrano i livelli di IQ 
```python
data = [88, 92, 94, 94, 96, 97, 97, 97, 99, 99,  
105, 109, 109, 109, 110, 112, 112, 113, 114, 115] 
```
- Si calcola il z test e si ottiene il p-value associato allo z-score
	-  In questo caso ad uno score di 1.5976 corrisponde un p.value di 0.1101 che è maggiore di 0.05 quindi non ci sono le evidenze per rifiutare l'ipotesi nulla
#### Specifico 2
- Si vogliono cercare differenze statisticamente rilevanti tra le distribuzioni di IQ in due città
- Si applica lo z test sulle due distribuzioni con la formula specifica (vedere dopo per i termini)
$$ Z = \frac{(\bar{x}_1 - \bar{x}_2)}{\sqrt{\frac{\sigma_1^2}{n_1} + \frac{\sigma_2^2}{n_2}}}
$$
### Condizioni in cui usare il Z-Test
1. Campione maggiore di 30 elementi, se no si usa il t-test
2. Campioni raccolti a random
3. Deviazione standard necessaria a priori
4. Campioni indipendenti tra loro
5. Dati distribuiti su una curva normale
### Step per effettuare il Z-Test
1. Identifica le ipotesi nulle e alternative
	- **Ipotesi Nulla (H0)**: L'ipotesi nulla rappresenta l'affermazione che non vi è alcun effetto o differenza significativa. In altre parole, sostiene che qualsiasi osservazione o differenza rilevata tra i dati è dovuta al caso o al rumore casuale. Di solito viene indicata come ipotesi di base da testare. Ad esempio, se stai conducendo un esperimento su un nuovo farmaco, l'ipotesi nulla potrebbe affermare che il farmaco non ha alcun effetto rispetto al placebo.
	- **Ipotesi Alternativa (H1 o Ha)**: L'ipotesi alternativa rappresenta l'affermazione opposta all'ipotesi nulla. Sostiene che vi è un effetto o una differenza significativa presente nei dati. In sostanza, cerca di dimostrare che ciò che è osservato non è dovuto al caso, ma è invece il risultato di un vero effetto. Continuando con l'esempio del farmaco, l'ipotesi alternativa potrebbe affermare che il farmaco ha un effetto positivo misurabile rispetto al placebo.
2. Determina il livello di significatività statistica
3. Trova il valore critico di Z-Score da usare nello z-test
4. Calcola lo score con la formula associata
#### Formula
$$ Z = \frac{\bar{x}-\mu} {\frac{\sigma}{\sqrt{n}}}$$
- Xˉ: La media campionaria. Questo è il valore medio calcolato dai dati nel tuo campione.
- μ: La media popolazionale ipotizzata nell'ipotesi nulla. Questo è il valore che stai cercando di testare rispetto alla tua media campionaria.
- σ: La deviazione standard popolazionale. Questo è il grado di dispersione dei dati nella popolazione.
- n: La dimensione del campione, ovvero il numero di osservazioni nel tuo campione.
##### Risultato
Se il valore calcolato di Z è molto grande o molto piccolo (cioè molto lontano da 0), potresti avere evidenza a favore dell'ipotesi alternativa, indicando che la tua media campionaria è significativamente diversa dalla media popolazionale ipotizzata. Tuttavia, dovresti confrontare questo valore con i valori critici della distribuzione normale standard o utilizzare un valore p critico (soglia di significatività) per prendere una decisione sulla tua ipotesi.

## T-Test
> ![T-Test](https://i.imgur.com/0PbhJPq.png)
> Test statistico utilizzato per determinare se la differenza tra le medie di due distribuzioni presenti delle differenze statisticamente significative.
> Stabilisce quindi la varianza tra i raggruppamenti

### Elaborando sulla definizione
- Il T-Test è un metodo parametrico inferenziale per comparare le medie di due gruppi differenti o con un solo gruppo ed un valore specifico
- Il T-Test è stato creato appositamente per dei campioni di dimensioni esigue
- Si può fare con un campione, con due campioni non correlati/indipendenti, con due campioni "appaiati/paired"
	- Il T-Test ad un campione compara la media del campione ad un valore ipotizzato
### Varianti
#### T-Test ad un campione
- Ad esempio, abbiamo una palla di 5cm di diametro, vogliamo verificare che differisca dalla media di un campione randomico di 50 palle 
##### Presupposti
- La variabile dipendente deve poter essere distribuita normalmente
- Le osservazioni sono indipendenti l'una dall'altra
##### Ipotesi
- Ipotesi nulla
	- La media del campione è uguale alla media ipotizzata/conosciuta della popolazione
- Ipotesi alternativa
	- La media de campione non è uguale alla media ipotizzata/conosciuta della popolazione
- Altra ipotesi alternativa 
	- La media del campione è più e meno grande della media ipotizzata/conosciuta della popolazione
##### Formula
$$ t = \frac{\bar{x}-\mu}{s/\sqrt{n}}$$
- s è la deviazione standard del campione (sigma è quella della popolazione)
##### Codice
```python
from scipy import stats as st  
from bioinfokit.analys import get_data  
# load dataset as pandas dataframe  
df = get_data('t_one_samp').data  
df.head(2)  
# output  
#size  
#0 5.739987  
#1 5.254042  
  
# t test using scipy  
a = df['size'].to_numpy()  
# use parameter "alternative" for two-sided or one-sided test  
st.ttest_1samp(a=a, popmean=5) 
```
#### T-Test a doppio campione
- Valuta la differenza tra le medie di due gruppi indipendenti
- Esempio, vogliamo comparare la resa di due genotipi
##### Ipotesi
- Nulla
	- Le medie sono uguali
- Alternativa 
	- Le due medie differiscono completamente
- Alternativa 2
	- La media di un gruppo è o più grande o più piccola di quella dell'altro gruppo
##### Premesse
- Le osservazioni nei due gruppi devono essere distribuite lungo una curva normale
- Le varianze devono essere omogenee
- I due gruppi devono essere campionati indipendentemente uno dall'altro nella stessa popolazione
>[!warning] Nota bene : caso di distribuzione non normale su sample size piccola
>Si fa l'U-test non parametrico di Mann-Whitney 
##### Formula
$$t = \frac{(\bar{x}_1 - \bar{x}_2)}{\sqrt{\frac{s_1^2}{n_1} + \frac{s_2^2}{n_2}}}
$$
- s corrisponde alla varianza dei campioni selezionati
### Codice
```python
# Perform two sample t-test using SciPy  
# install bioinfokit as !pip install bioinfokit  
!pip install bioinfokit  
from scipy import stats as st  
from bioinfokit.analys import get_data  
# load dataset as pandas dataframe  
df = get_data('t_ind_samp').data  
df.head(2)  
  
a = df.loc[df['Genotype'] == 'A', 'yield'].to_numpy()  
b = df.loc[df['Genotype'] == 'B', 'yield'].to_numpy()  
st.ttest_ind(a=a, b=b, equal_var=True)  
  
# Perform two sample t-test using bioinfokit  
from bioinfokit.analys import stat  
res = stat()  
# for unequal variance t-test (Welch's t-test) set evar=False  
res.ttest(df=df, xfac="Genotype", res="yield", test_type=2, evar=False)  
print(res.summary) 
```
#### T-Test appaiato
- Utilizzato per comparare le differenze tra un paio di variabili dipendenti nello stesso contesto
- Esempio: vogliamo comparare la resa sulla stessa varietà di pianta MA in due contesti differenti come ad esempio prima e dopo aver usato un fertilizzante
##### Ipotesi
- Nulla
	- Non ci sono differenze tra le due variabili dipendenti
- Alternativa
	- Ci sono differenze tra le due variabili dipendenti
- Alternativa 2
	-  La differenza tra le due variabili è o più grande o più piccola di ==zero== 
		- Valore arbitrario scelto per rappresentare il caso di uguaglianza
##### Presupposti
- Le differenze tra le due variabili dipendenti devono seguire una distribuzione normale
- La variabile indipendente dovrebbe avere un paio di variabili dipendenti associate
- Le differenze tra le due variabili dipendenti non dovrebbero presentare outlier
- Le osservazioni devono essere svolte una indipendentemente dall'altra
##### Formula
$$ t = \frac {\bar{d}}{S_d/\sqrt{n}} $$
- Sd è la deviazione standard delle differenze dei campioni 
- La d al numeratore è la media delle differenze dei campioni

##### Codice
```python
# install bioinfokit as !pip install bioinfokit  
from bioinfokit.analys import get_data, stat  
# load dataset as pandas dataframe  
# the dataset should not have missing (NaN) values. If it has, it will omitted  
df = get_data('t_pair').data  
df.head(2)  
  
res = stat()  
res.ttest(df=df, res=['AF', 'BF'], test_type=3)  
print(res.summary) 
```



---
# References
<iframe height= 800 width= 100% src="https://pub.towardsai.net/all-statistical-tests-using-python-mastering-statistics-part-1-996346d5add5"></iframe>