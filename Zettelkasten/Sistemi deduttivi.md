---
stato: "#ideaLez"
tags:
  - AI
  - MachineLearning
  - DataScience
---
18-05-2024 02:54

--- 

## Logica Proposizionale

### Pensare Razionalmente

La logica proposizionale ha le sue radici nel tentativo di Aristotele di codificare il pensiero razionale tramite i sillogismi. Questo approccio viene formalizzato nel 19° secolo con la creazione di una notazione formale. Tuttavia, tradurre la conoscenza informale in termini formali può essere difficile, e le risorse computazionali richieste possono essere elevate.

### Sistemi Intelligenti Deduttivi

Questi sistemi sfruttano formalismi logici eseguibili su calcolatore e utilizzano meccanismi deduttivi. Ad esempio, il ragionamento per casi: se A implica C e B implica C, e si sa che A o B sono veri, allora si conclude che C è vero. Le decisioni prese da questi sistemi possono essere associate a spiegazioni giustificative, come nei sistemi esperti basati su conoscenze (ad esempio, MyCin, Experta).

### Logica Proposizionale - Interpretazione

In filosofia, le proposizioni corrispondono agli enunciati dichiarativi, che possono essere veri o falsi. Ad esempio:
- "Roma è la capitale d’Italia" (vero)
- "La Francia è uno stato asiatico" (falso)
- "1 + 1 = 2" (vero)
- "2 + 2 = 3" (falso)

Non sono proposizioni:
- "Che ora è?"
- "Seguite questa lezione con attenzione"
- "x + 1 = 2"

### Sintassi della Logica Proposizionale

I simboli usati sono:
- Costanti logiche: Vero (t) e Falso (f).
- Simboli proposizionali: P, Q, ecc.
- Connettivi logici: ∧, ∨, ¬, ⇒, ≡, (, ).

Le formule ben formate si costruiscono unendo questi simboli. Esempi:
- "P ∧ Q" (piove e fa freddo)
- "P ⇒ Q" (piove implica porto ombrello)
- "(¬piove ∧ faFreddo) ∨ nuvoloso ⇒ porto ombrello"

### Tavole di Verità

Una tavola di verità definisce la verità di una formula in base alla verità dei suoi componenti. Esempi:
- P ⇒ Q è vera se Q è vera oppure se P è falsa.
- Esempio concreto: "bevo whisky ⇒ ubriaco".

### Validità e Soddisfacibilità

- Una formula sempre vera è una tautologia (es: P ∨ ¬P).
- Una formula sempre falsa è una contraddizione (es: P ∧ ¬P).
- In tutti gli altri casi, la formula è soddisfacibile (es: P ∧ ¬Q).

### Proprietà delle Formule Logiche

- **Equivalenza (≡)**: 
  - Riflessività: P ≡ P
  - Simmetria: P ≡ Q ≡ Q ≡ P
  - Associatività: P ≡ (Q ≡ R)
  - Transitività: (P ≡ Q) ∧ (Q ≡ R) ⇒ (P ≡ R)

- **Connettivi logici**:
  - Commutatività: P ∧ Q ≡ Q ∧ P
  - Idempotenza: P ∧ P ≡ P
  - Zero: P ∧ f ≡ f
  - Associatività: (P ∧ Q) ∧ R ≡ P ∧ (Q ∧ R)
  - Distributività: P ∧ (Q ∨ R) ≡ (P ∧ Q) ∨ (P ∧ R)

### Implicazione Logica

L’implicazione può essere definita tramite altri connettivi:
- (P ⇒ Q) ≡ (¬P ∨ Q)

### Inferenza

L'inferenza si basa sul Modus Ponens e altre tecniche di dimostrazione (es: Modus Tollens, dimostrazione per assurdo). Un esempio è la deduzione di nuovi fatti da una base di conoscenza:
- Se {c’è il sole ⇒ vado al mare} e {vado al mare ⇒ faccio il bagno}, allora se c’è il sole, faccio il bagno.



---

## Logica del Primo Ordine (First-Order Logic, FOL)

### Introduzione
La logica del primo ordine (FOL) è un sistema logico formale che permette di rappresentare un linguaggio più ricco rispetto alla logica proposizionale. La logica proposizionale utilizza costanti logiche, simboli proposizionali e connettivi per formalizzare frasi del linguaggio naturale, come ad esempio "Roma è la capitale d’Italia" o "1 + 1 = 2". Tuttavia, non è in grado di rappresentare frasi più complesse, come "x + 1 = 2" o "Ogni studente aumenta il voto in almeno un esame". 

La logica del primo ordine consente di trattare oggetti specifici (individui del dominio di interesse), esprimere proprietà e relazioni tra questi oggetti, e formulare asserti generali che riguardano tutti o alcuni oggetti del dominio.

### Sintassi della Logica del Primo Ordine
Dato un dominio \(D\) che rappresenta gli oggetti del dominio, gli elementi del dominio possono essere manipolati tramite:
- Un insieme \(C\) di simboli di costanti.
- Un insieme \(V\) di simboli di variabili.
- Un insieme \(P\) di simboli di predicati.
- Un insieme \(F\) di simboli di funzioni.
- I simboli dei connettivi logici $(\land), (\lor), (\neg), (\Rightarrow), (\Leftrightarrow)$.
- I simboli dei quantificatori $((\forall), (\exists))$.

#### Esempi di Sintassi:
- $\forall x P(x) \equiv \neg \exists x \neg P(x)$
- $\exists x P(x) \equiv \neg \forall x \neg P(x)$

### Differenze tra Logica Proposizionale e Logica del Primo Ordine
Nella logica proposizionale, gli asserti sono semplici e non coinvolgono variabili:
- $D = {\text{la difficoltà dell’esame diminuisce}}$
- $V = {\text{i voti aumentano}}$
- $S = {\text{lo studente è contento}}$

Nella logica del primo ordine, gli asserti possono includere variabili e relazioni più complesse:
- Gli elementi del dominio $D) comprendono esami e studenti.
- $C = {\text{'IAeML', 'Biomateriali', 'Anatomia', 'Bioinformatica', ...}}$
- $P = {\text{Esame}(x), \text{Studente}(x), \text{DimDiff}(x), \text{AumVoto}(s, e), ...}$

### Esempi di FOL
- "Il voto di tutti gli studenti nell’esame di 'IA e ML' aumenta": $\forall s (\text{Studente}(s) \Rightarrow \text{AumVoto}(s, \text{'IAeML'}))$.
- "Esiste uno studente il cui voto aumenta in tutti gli esami": $\exists s (\text{Studente}(s) \land \forall e (\text{Esame}(e) \Rightarrow \text{AumVoto}(s, e)))$.

### Ontologie nella FOL ([[ontologia]])
Un'ontologia è una rappresentazione formale, esplicita e condivisa di un dominio di conoscenza. Può essere espressa graficamente tramite un grafo diretto aciclico e descritta utilizzando FOL:
- Predicati unari (e.g., $(\text{Animal}(x))$)
- Costanti (e.g., 'Dog', 'Cat')
- Predicati binari (e.g., $(\text{IsA}(x, y))$)

### Gene Ontology (GO) [[Ontologia]]
La Gene Ontology è un esempio di ontologia nella FOL, suddivisa in:
- **Molecular Function (MF)**: attività elementari di un prodotto genico.
- **Cellular Component (CC)**: parti di una cellula.
- **Biological Process (BP)**: eventi molecolari complessi.

### Inferenza nella FOL
L'inferenza nella logica del primo ordine coinvolge regole come l'Instanziazione Universale (UI) e l'Instanziazione Esistenziale (EI). Ad esempio, dall'assioma $$(\forall x (\text{King}(x) \land \text{Greedy}(x) \Rightarrow \text{Evil}(x))), \text{possiamo inferire} \, (\text{King}('John')$$
## Forward Chaining

### Introduzione

Il Forward Chaining è un metodo utilizzato nei sistemi esperti e nei sistemi di inferenza per derivare conclusioni dai dati disponibili. È un algoritmo di inferenza che parte dai fatti conosciuti e applica regole per inferire nuovi fatti fino a raggiungere una conclusione.

### Rappresentazione delle Regole

Le regole nella knowledge base (KB) possono essere rappresentate nella forma:  $A_1 \land \cdots \land A_n \Rightarrow B_1 \lor \cdots \lor B_k$ 

dove ogni \( $A_i$ \) e \( $B_j$ \) è una formula atomica che coinvolge variabili o costanti. È implicito il quantificatore universale (\($\forall$\)).

È possibile che \( $A$ \) o \( $B$ \) siano vuote. Ad esempio, una regola del tipo \( $\Rightarrow B$ \) rappresenta il fatto atomico \( $B$ \).

### Regole Speciali

Nel corpo delle regole (parte sinistra) utilizziamo solo congiunzioni (\($\land$)) mentre nella testa (parte destra) utilizziamo solo disgiunzioni (\($\lor$\)). Pertanto, possiamo riscrivere ogni regola della KB nella forma:

\[ $A_1, \ldots, A_n \Rightarrow B_1, \ldots, B_k$ \]

### Algoritmo di Forward Chaining

L'algoritmo di Forward Chaining si occupa di un tipo particolare di formule, chiamate formule definite positive, in cui la testa contiene esattamente un termine positivo:

\[ $A_1, \ldots, A_n \Rightarrow B$ \]

Non consideriamo regole del tipo \( $A \Rightarrow B_1, B_2$ \) e \( $A \Rightarrow \bot$ \).

### Procedura dell'Algoritmo

1. Inizializzazione: Partiamo dai fatti base conosciuti.
2. Inferenza: "Accendiamo" tutte le regole le cui premesse sono soddisfatte dai fatti attuali.
3. Aggiornamento: Aggiungiamo le conclusioni di tali regole ai fatti noti.
4. Ripetizione: Ripetiamo il processo fino a quando rispondiamo alla query o non aggiungiamo più nuovi fatti.

### Esempio di Forward Chaining

Consideriamo il seguente scenario:

- La legge dice che per un cittadino statunitense è un crimine vendere armi ad una nazione pericolosa.
- La Corea, paese nemico degli USA, possiede dei missili.
- Tutti i suoi missili le sono stati venduti dall’agente statunitense Smith.

#### Traduzione in Regole e Fatti

1. Regola: "Per un cittadino statunitense è un crimine vendere armi ad una nazione pericolosa."
   $\text{Statunitense}(x) \land \text{Arma}(y) \land \text{Vende}(x, y, z) \land \text{Pericolosa}(z) \Rightarrow \text{Criminale}(x)$

2. Fatti: "La Corea possiede dei missili."
   $\exists x \ \text{Possiede}(\text{'Corea'}, x) \land \text{Missile}(x)$
   
   Usando l'Eliminazione dell'Esistenziale (EI):
   $\text{Possiede}(\text{'Corea'}, \text{'M'}) \land \text{Missile}(\text{'M'})$
   

3. Regola: "Tutti i suoi missili le sono stati venduti dall’agente statunitense Smith."
   $\text{Missile}(x) \land \text{Possiede}(\text{'Corea'}, x) \Rightarrow \text{Vende}(\text{'Smith'}, x, \text{'Corea'})$

4. Regola: "Un missile è un'arma."
   $\text{Missile}(x) \Rightarrow \text{Arma}(x)$
   
5. Regola: "La Corea è nemica degli USA ed è quindi pericolosa."
   $\text{Nemici}(x, \text{'USA'}) \Rightarrow \text{Pericolosa}(x)$
   
1. Fatti aggiuntivi:
   $\text{Statunitense}(\text{'Smith'})$
   $\text{Nemici}(\text{'Corea'}, \text{'USA'})$


#### Iterazione dell'Algoritmo

Iterazione 1:

- F1: Le premesse non si verificano completamente per nessuna regola.

- F2: Le premesse si verificano con \( $x \Rightarrow \text{'M'}$\).
  $\text{Possiamo inferire} \ \text{Vende}(\text{'Smith'}, \text{'M'}, \text{'Corea'})$

- F3: Le premesse si verificano con \( $x \Rightarrow \text{'M'}$ \).
  $\text{Possiamo inferire} \ \text{Arma}(\text{'M'})$
  
- F4: Le premesse si verificano con \( $x \Rightarrow \text{'Corea'}$ \).
  $\text{Possiamo inferire} \ \text{Pericolosa}(\text{'Corea'})$
  

Iterazione 2:
- F2: Le premesse si verificano con \( $x \Rightarrow \text{'Smith'}, y \Rightarrow \text{'M'}, z \Rightarrow \text{'Corea'}$ \).
  $\text{Possiamo inferire} \ \text{Criminale}(\text{'Smith'})$

### Problemi di Efficienza

L'algoritmo di Forward Chaining può soffrire di vari problemi di efficienza:

1. Pattern Matching: Identificare le regole applicabili può essere computazionalmente costoso.
2. Controlli Ripetuti: Alcune condizioni potrebbero essere verificate più volte durante il processo.
3. Generazione di Fatti Irrilevanti: Potrebbero essere generati molti fatti che non contribuiscono alla risoluzione della query.









--- 
# Reference: [[AI e Machine Learning - Lezioni e slide]]
