19-02-2023 10:12
Stato: #ideaL
Tag: #BasiDiDati 

Il *modello relazionale* si basa su due concetti:
- *Relazione*: dalla teoria degli insiemi.
- *Tabella*: concetto intuitivo.


## Relazione e Tabella
![O](https://i.imgur.com/VuXw2Wq.png)
Il modello relazionale è strettamente collegato alla teoria degli insiemi.
Le stesse tabelle possono essere viste come prodotti cartesiani fra più insiemi (*relazioni*, essi stessi insiemi) ma non sono *posizionali*
Ogni insieme definisce un *attributo* e ogni elemento (n-upla, riga della tabella) costituisce un'*occorrenza* dell'attributo. Il numero di attributi è detto *grado*, mentre il numero di occorrenze è detto *cardinalità*. 


Le relazioni sono insiemi, quindi:
- Non è definito ordinamento fra le n-uple che le costituiscono
- Le n-uple sono distinte, non ci sono ripetizioni.

Le n-uple hanno un ordinamento interno.

![Esempio di base di dati relazionale](https://i.imgur.com/qsPc3gy_d.webp?maxwidth=1520&fidelity=grand)

**NOTA**: 
Se *t* è una [tupla] su un insieme *X* e *A* appartiene ad X allora:
```
t[A] = valore di t su A

Ad esempio:
t[Squadra] = Lazio
```
![Tupla BDD](https://i.imgur.com/n3an5Ai.png)
### Riferimenti
Vengono espressi per mezzo di ==valori dei domini che compaiono nelle ennuple== mentre in altri modelli vengono esplicitati.
Fondamentalmente sono indicati dai valori dell'attributo che funge da chiave primaria


### Informazione incompleta e valori nulli
Utilizzando questa struttura si può incorrere in una qualche assenza di dati.

Le tuple non ammettono assenza completa di dati, per cui laddove dovesse mancare un'informazione si utilizzerà il segnaposto **NULL** (valore nullo) ad indicare l'assenza.

Distinguiamo tre casi possibili: valore *sconosciuto*, valore *inesistente*, valore *senza informazione*

Di norma sono ammessi valori nulli per quelle informazioni non essenziali per la base di dati.


### Strutture nidificate
![Struttura nidificata](https://i.imgur.com/ST360Lj.png)
#### Relazioni che rappresentano
![Relazioni rappresentate dalla struttura nidificata](https://i.imgur.com/eUoewQL.png)
## Vincoli di integrità
**Vincolo di integrità**: proprietà che deve essere soddisfatta dalle istanze che rappresentano informazioni corrette per l'applicazione. Ovvero un *predicato* che associa un valore *vero o falso* ad una determinata istanza. Quando il predicato è vero si dice che l'istanza *soddisfa* il vincolo.

Si possono classificare i vincoli in due macro-categorie:
1. **Vincoli intrarelazionali**: definiti rispetto a singole relazioni della base di dati. Suddivisi in:
	1. *vincoli di tupla*: valutati su ciascuna tupla indipendentemente dalle altre.
	2. *vincoli di dominio*: valutati su singoli valori
2. **Vincoli interrelazionali**: coinvolgono più relazioni.

Esistono tre classi di vincoli: *vincoli di tupla*, *vincoli di chiave*, *vincoli di integrità referenziale*

### Vincoli di tupla
Esprimono condizioni sui valori di ciascuna tupla. Una possibile sintassi per definirli è quella booleana.
```text
Esempio:
(VOTO >= 18) AND (VOTO <= 30)
```

La quale si estende anche a espressioni più complesse.
```text
Esempio:
Data la relazione PAGAMENTI(Data, Importo, Ritenute, Netto).
Si potrà specificare:
	Netto = Importo - Ritenute
```

### Vincoli di chiave
Concetto più importante del modello relazionale.
É un insieme di attributi utilizzato per *identificare univocamente* le tuple di una relazione.

Formalmente si dirà che:
- un insieme *K* di attributi è **superchiave** di una relazione *r* se r non contiene due tuple distinte con valori uguali.
- *K* è **chiave** di *r* se è superchiave minimale di *r* (formata dal minimo numero di attributi)

**NOTA**:
Ogni relazione ha sempre una chiave.
L'insieme di tutti gli attributi di una relazione è sempre una superchiave.

#### Chiavi e valori nulli
In presenza di valori nulli le chiavi non permettono più di identificare univocamente le tuple.
Bisogna porre dei limiti alla presenza di valori nulli nelle chiavi.

Si vieta quindi l'uso di valori nulli sulla *chiave primaria* di una relazione.

### Vincoli di integrità referenziale
![Vincolo di integrità referenziale](https://i.imgur.com/UJ3Ayho.png)

Formalmente:
- Un vincolo di integrità referenziale fra un insieme di attributi *X* di una relazione *R1* e una relazione *R2* è soddisfatto se i valori di *X* di ciascuna tupla dell'istanza *R1* compaiono come valori della chiave primaria dell'istanza *R2*.
- Sostanzialmente il vicolo consiste nel far riferimento a tuple (su relazioni) che siano esistenti facendo utilizzo delle chiavi che le identificano.



---
# References 

[[Basi di dati - Slide Irina]]
![[3a_Modello Relazionale.pdf]]
