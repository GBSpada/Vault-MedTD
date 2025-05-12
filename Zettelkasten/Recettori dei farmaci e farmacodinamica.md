2024-12-10 12:16
Stato: #idealibro 
Tag: #Farmacologia #Farmacologiagenerale 

---
- Per lo più, i farmaci agiscono combinandosi con macromolecole specifiche, in modo tale da alterarne proprietà biofisiche e biochimiche
	- **recettore**: componente di una cellula o di un organismo che interagisce con un farmaco, dando inizio alla catena di eventi che portano agli effetti farmacologici osservati
- Ruolo dei recettori:
	1. **I recettori determinano in gran parte le relazioni quantitative tra dose o concentrazione del farmaco ed effetti farmacologici**
		- l'affinità del legame tra farmaco e recettore determina la [] di farmaco necessaria per formare un numero significativo di complessi farmaco-recettore
	2. **I recettori sono responsabili della selettività dell'azione farmacologica**
		- dimensione molecolare, struttura e carica elettrica di un farmaco determinano se - e con quale affinità - esso si legherà ad un particolare recettore
		- funzione regolatrice
	3. **I recettori mediano le azioni degli agonisti e degli antagonisti farmacologici**
# Natura macromolecolare dei recettori per farmaci
>[!info]- Identificazione dei recettori nel tempo
>- Tradizionalmente, sono stati usati studi di legame (*binding*);
>- Conseguentemente, i recettori sono identificati dopo i farmaci che ad essi si legano;
>- Tale ordine è stato, tuttavia, invertito:
>	- i recettori sono identificati mediante previsione della struttura o per omologia di sequenza con altri recettori (noti);
>	- i farmaci che ad essi si legano vengono sviluppati in seguito mediante metodi chimici di indagine.
- La maggior parte dei recettori presenta una *struttura polipeptidica*
	- probabilmente quella in grado di soddisfare le più ampie richieste modellistiche e di specificità
	- se ne possono identificare vari tipi:
		- **proteine regolatrici** che mediano le azioni di segnali chimici (neurotrasmettitori, autacoidi[^1] e ormoni)
		- **enzimi**, che possono essere inibiti (a volte attivati) attraverso il legame con un farmaco
			- es. *diidrofolato reduttasi*, recettore per il ==metotrexato== (farmaco antineoplastico)
		- **proteine trasportatrici**
			- es. $Na^+/K^+-ATPasi$, recettore di membrana per i ==glicosidi cardioattivi digitalici==
		- **proteine strutturali**
			- es. *tubulina*, recettore per la ==colchicina== (agente antinfiammatorio)
# Relazione tra concentrazione di farmaco e risposta
- La relazione tra dose di un farmaco e risposta clinicamente osservata può essere complessa
	- per la verità, nei [[Modelli in vitro|sistemi in vitro]] risulta molto semplice e, benché idealizzata, sta alla base di tutte le più complesse relazioni tra dose ed effetto che si verificano nei pazienti
## Curve concentrazione-effetto e legame degli agonisti al recettore
- Cambiamento della risposta in base alla dose:
	- basse dosi → diretta proporzionalità fra dose e risposta
	- crescere delle dosi → l'incremento di risposta si attenua
	- infine → si raggiungono dosi alle quali ogni ulteriore aumento di risposta è assente
1. Nei sistemi in vitro, questa relazione è descritta da una curva iperbolica
	- $E = \frac{E_{max} \text{ x } C}{C + EC_{50}}$
		- E = effetto osservato alla concentrazione C
		- $E_{max}$ = risposta massima ottenibile col farmaco
		- $EC_{50}$ = concentrazione di farmaco che produce la metà dell'effetto massimo
2. La relazione esposta *somiglia* alla *legge di azione di massa* che descrive l'*associazione tra due molecole di una certa affinità*
	- tale somiglianza ha suggerito che il farmaco agonista agisse "occupando" il sito recettoriale
	- in questi casi, la relazione tra farmaco legato ai recettori (B) e concentrazione del farmaco libero (non legato) (C) è descritta dall'equazione $B = \frac{B_{max}\text{ x C}}{C + K_d}$
		- $B_{max}$ = concentrazione di farmaco legato rilevabile per concentrazioni di farmaco libero infinitamente alte
			- indica anche il numero totale di recettori cellulari/tissutali disponibili al legame col farmaco
		- $K_d$ = costante di dissociazione all'equilibrio
			- indica la concentrazione di farmaco libero alla quale si osserva il 50% del massimo legame
			- caratterizza l'affinità del recettore per il legame reciproco col farmaco
- ![Farmacologia generale, relazione tra concentrazione di farmaco ed effetto di questo (**A**) o farmaco legato al recettore (**B**)](https://i.imgur.com/vmREITB.png)
	1. i dati dose-risposta sono spesso diagrammati riportando l'effetto del farmaco (in ordinata) verso il *logaritmo* della dose o della concentrazione (in ascissa), ciò trasforma la curva da iperbolica a sigmoide (vedi dopo)
	2. tale linearizzazione
		- espande la scala dell'asse della concentrazione alle basse concentrazioni (dove l'effetto varia rapidamente)
		- comprime la scala alle alte concentrazioni (dove l'effetto varia lentamente)
	- nb. l'operazione enunciata non ha alcun significato biologico o farmacologico, ma aiuta nella comprensione di tali effetti
>[!Warning]
>$EC_{50}$ e $K_d$ possono essere identiche, ma non devono necessariamente esserlo.
## "Accoppiamento" recettore-effettore e recettori di riserva
>[!info]
>**Accoppiamento**: processo di trasduzione che lega l'occupazione dei recettori alla risposta farmacologica.
### Efficienza dell'accoppiamento recettore-effettore
- Determinata da
	- iniziale variazione conformazionale del recettore
	- eventi biochimici che trasducono l'occupazione dei recettori nella risposta cellulare
### Risposta biologica
#### Lineare
- Correlata al numero di recettori occupati dal farmaco (spesso vero per i canali ionici occupati da farmaco)
#### Non lineare (influenzata da)
##### Tipologia enzimatica di trasduzione del segnale
>Più complessa
##### Recettori "di riserva"
- Per un certo effetto farmacologico, il massimo possibile della risposta può essere ottenuto con concentrazioni di agonista insufficienti ad occupare tutti i recettori disponibili
- Dimostrabile mediante
	1. blocco di una frazione dei recettori disponibili con antagonisti non competitivi (irreversibili)
	2. mostrando che adeguate concentrazioni di agonisti possono ancora produrre una risposta massima identica a quella ottenibile in assenza di agonista
- Tipologia:
	- *riserva temporale*: la risposta persiste più a lungo del legame, es.:
		1. la risposta inotropa massimale del muscolo cardiaco alle ammine $\beta$-adrenergiche può essere evocata anche in condizioni di occupazione dei recettori fino al 90%
		2. l'effetto dell'attivazione del recettore (in questo caso legame di GTP ad opera di un intermedio) può durare molto più a lungo dell'interazione agonista-recettore
	- *riserva in numero*
		- si ritiene responsabile quando i meccanismi biochimici non sono noti
		- se la concentrazione o la quantità di un costituente cellulare diverso dal recettore è il fattore limitante nell'accoppiamento tra l'occupazione dei recettori e la risposta, l'effetto può aversi senza l'occupazione di tutti i recettori
>[!in summa]
> Da tutto ciò si può enunciare che la sensibilità di una cellule/tessuto ad un particolare agonista dipende da
> - *affinità* del recettore nel legarlo (caratterizzata dalla $K_d$),
> - *grado della riserva* (numero totale di recettori presenti comparato col numero necessario per ottenere la massima risposta biologica).
##### Ulteriori considerazioni sui recettori di riserva
- La relazione tra farmaco libero (C) e farmaco legato a recettori (B) precedentemente enunciata è ulteriormente sviluppabile in forma $\frac{B}{B_{max}} = \frac{C}{C + K_d}$:
	- $K_d$ determina quale frazione (B/$B_{max}$) dei recettori totali sarà occupata ad una data concentrazione di agonista libero (C), **indipendentemente** dalla concentrazione recettoriale
	- dall'equazione si comprende che **è possibile alterare la sensibilità dei tessuti dotati di recettori di riserva modificandone il numero di recettori**
>[!info]- Corrispondenza grafica di quanto enunciato finora
>![Farmacologia generale, trasformazione logaritmica dell'asse delle dosi e dimostrazione sperimentale dell'esistenza di recettori di riserva mediante l'uso di concentrazioni diverse di un antagonista irreversibile (non competitivo).](https://i.imgur.com/3WWbKwG.png)
## Antagonisti competitivi e irreversibili
>Vedi [[Introduzione - farmacologia#Tipi di farmaci agenti|qui]]
- ![Farmacologia generale, modificazioni delle curve dose-effetto di un agonista prodotte da un antagonista competitivo (**A**) o da un antagonista irreversibile (**B**).](https://i.imgur.com/04eaAM8.jpeg)
### Antagonisti competitivi
- Correlazione tra concentrazione e risposta:
	- concentrazione crescenti di antagonista → inibizione progressiva della risposta
	- elevate concentrazioni di antagonista → prevenzione completa della risposta all'agonista
	- concentrazione fissa di antagonista:
		- stessa $E_{max}$ della curva ottenuta in assenza di esso
		- le concentrazioni di agonista richieste per produrre un dato livello di effetto sono aumentate, e la curva è spostata verso dx
		- C' > C
- Il rapporto tra le due concentrazioni enunciate di agonista ("**rapporto di dose**") è riferibile alla costante di dissociazione ($K_i$) dell'antagonista mediante l'*equazione di Schild*:
	- $\frac{C'}{C} = 1 + \frac{[I]}{K_i}$
	- molto utilizzata dai farmacologi per determinare la $K_i$ di un antagonista competitivo
		- facilmente ottenibile anche senza conoscere C'/C
	- per il clinico, tale relazione ha due importanti applicazioni terapeutiche:
		1. ==il grado di inibizione prodotta da un antagonista competitivo dipende dalla sua concentrazione==
		2. ==la risposta clinica ad un antagonista competitivo dipende dalla concentrazione di agonista in competizione per il legame ai recettori==
		- es. per capirci: il ==propanololo== è un antagonista $\beta$-adrenergico, ma la sua azione dipende da quanto viene somministrato e da quante catecolamine endogene sono circolanti
### Antagonisti irreversibili (o non competitivi)
- Legame al recettore mediante un legame covalente o con affinità talmente elevata che, da un punto di vista pratico, il recettore non è più disponibile per legare l'agonista
- Effetto dipendente dalla dose:
	- dose sufficiente → numero dei recettori non occupati talmente basso che l'agonista non è in grado di determinare una risposta
	- dose più bassa → può lasciare non occupato un numero di recettori sufficiente per permettere una risposta massimale all'agonista (sebbene servano concentrazioni più elevate di quest'ultimo)
- La **durata dell'azione** di un antagonista irreversibile **dipende** dalla **velocità di turnover delle molecole recettoriali**
- Vantaggi e svantaggi → spiegazione mediante l'ausilio di un esempio:
	- ==fenossibenzamina==
		- antagonista $\alpha$-adrenergico irreversibile
		- utilizzata per abbassare la pressione arteriosa elevata ad opera delle *catecolamine* liberate dal [[Feocromocitoma|feocromocitoma]]
	- **vantaggio terapeutico**: una somministrazione del farmaco abbassa la pressione, mantenendo il blocco recettoriale anche quando il tumore libererà, di tanto in tanto, catecolamine
	- **svantaggio**: potrebbero insorgere problematiche gravi in seguito a somministrazione di dosi eccessive
		- si dovranno antagonizzare "fisiologicamente" gli eccessivi effetti dell'antagonista (es. utilizzando un farmaco pressorio che non agisce mediante i recettori $\alpha$-adrenergici)
#### Ulteriore meccanismo d'azione
- Legame ad un sito della proteina recettoriale differente dal sito di legame per l'agonista, prevendendo, in tal modo, l'attivazione recettoriale senza bloccare il legame dell'agonista stesso (guarda l'[[Introduzione - farmacologia#Tipi di interazioni farmaco-recettore|img 1.3C e D]])
	- tali farmaci sono definiti **modulatori allosterici**
	- es. legame delle ==benzodiazepine== ai canali ionici attivati dal *GABA*, aumentandone l'effetto sulla conduttanza
## Agonisti parziali
>[!definizione]
>**Agonisti parziali**: caratterizzati - rispetto a quelli totali - dal fatto di produrre, a occupazione recettoriale completa, una risposta massima inferiore rispetto a quella dei primi.
>- N.B. La loro incapacità di produrre una risposta massima non risiede in una ridotta affinità nel legarsi al recettore.
- Producono curve concentrazione-effetto simili a quelle di un agonista totale in presenza di un antagonista non competitivo che blocca irreversibilmente alcuni siti refettoriali
- Vantaggi e svantaggi → spiegazione mediante l'ausilio di un esempio:
	- ==buprenorfina==
		- agonista parziale per i recettori oppioidi $\mu$
	- **vantaggio terapeutico**: analgesico più sicuro della ==morfina==: determina, a dosaggio eccessivo, minore depressione respiratoria
	- **svantaggio**: evidenzia effetti anti-analgesici se somministrata ad individui morfino-dipendenti
		- potrebbe scatenare una sindrome d'astinenza, inibendo competitivamente l'azione agonistica della morfina
- ![Farmacologia generale, confronto delle differenze in legame e risposta fra agonista parziale e agonista totale.](https://i.imgur.com/ib74WW0.jpeg)
## Altri meccanismi di antagonismo farmacologico
>[!info]
>Non tutti i casi di antagonismo farmacologico implicano interazioni di farmaci o sostanze endogene a livello di un singolo tipo di recettore ed alcuni tipi di antagonismo non coinvolgono in assoluto alcun recettore.
### Antagonismo chimico (o antidoto)
- ==Protamina==: proteina portante delle cariche positive a pH fisiologico
	- usata clinicamente per neutralizzare gli effetti dell'==eparina==, anticoagulante carico negativamente
- Azione mediante legame ionico con l'agonista, minimizzandone la disponibilità a reagire con le proteine coinvolte nella coagulazione del sangue
### Antagonismo fisiologico
>Avviene tra sistemi di regolazione endogeni mediati da recettori differenti
- *Glucocorticoidi*: ormoni che portano ad aumento della glicemia
	- effetto antagonizzato dall'[[Insulina|insulina]], sebbene agiscano su sistemi recettore-effettore del tutto differenti
	- il clinico deve somministrare, quindi, *insulina* per ovviare ai loro effetti iperglicemizzanti (es. nel caso di un [[Carcinoma corticosurrenalico|tumore inoperabile della corteccia surrenale]])
- L'utilizzo di un antagonista fisiologico conduce ad **effetti meno specifici**
	- es. per trattare una bradicardia da aumentato rilascio di *Ach*, il medico
		- potrebbe usare l'==isoprenalina== ($\beta$-agonista) → scelta poco razionale
		- potrebbe usare l'==atropina== (M-antagonista) → scelta più razionale
# Meccanismi di trasduzione del segnale e azione farmacologica
- ![Farmacologia generale, meccanismi noti di trasduzione attraverso la membrana.](https://i.imgur.com/yQZrjwQ.png)
## Recettori intracellulari per agenti liposolubili
- Numerosi segnalatori biologici sono abbastanza liposolubili da attraversare la membrana plasmatica ed agire su sostanze recettive intracellulari
	- una classe di tali ligandi comprende
		- *steroidi* (corticosteroidi, mineralcorticoidi, ormoni sessuali, vitamina D)
		- *ormone tiroideo*
	- i loro recettori stimolano la trascrizione di geni nel nucleo attraverso il legame con specifiche sequenze bersaglio di DNA (**elementi di risposta**), vicine al gene la cui espressione dev'essere regolata
### Spiegazione del meccanismo d'azione dei [[Gli steroidi corticosurrenalici e antagonisti|glucocorticoidi]] (esempio)
>[!info]- Esperienza ufficiale
>![Farmacologia generale, meccanismo d'azione dei glucocorticoidi.](https://i.imgur.com/g495vMZ.png)
#### Sequenza di eventi
1. In assenza dell'ormone, il recettore è legato all'*hsp90*
	- proteina che sembra impedire la normale conformazione di parecchi domini strutturali del recettore
2. Il legame col sito di legame attiva il rilascio dell'*hsp90*
	- i domini che legano il DNA e che attivano la trascrizione assumono la conformazione funzionalmente attiva
3. Il recettore attivato può iniziare la trascrizione dei geni bersaglio
### Conseguenze terapeutiche
1. Tutti questi ormoni producono i loro effetti dopo un caratteristico periodo di latenza
	- da 30 min a parecchie ore, il tempo richiesto per la sintesi di nuove proteine
	- gli ormoni "attivi in via genica" non possono alterare gli stati patologici entro pochi minuti
		- es. i ==glucocorticoidi== non possono ridurre immediatamente i sintomi dell'[[Asma bronchiale#Ipersensibilità acuta|asma bronchiale acuta]]
2. Gli effetti di questi agenti possono persistere per ore o giorni dopo che la concentrazione dell'agonista è stata ridotta a zero
	- persistenza degli effetti → *turnover* relativamente lento di molti enzimi e proteine
		- dopo la sintesi, possono rimanere attivi nelle cellule per ore o giorni
	- gli effetti benefici o tossici di un ormone attivo in via genica diminuiranno lentamente alla sospensione dell'ormone stesso
## Enzimi transmembrana regolati da ligandi che comprendono le proteinchinasi a tirosina
- Questa classe di recettori media le prime fasi della trasduzione da *insulina*, *EGF*, *PDGF*, *ANP*, *TGF-$\beta$*, ecc.
### Costituzione
- Questi recettori sono polipeptidi costituiti da
	- dominio extracellulare che lega l'ormone
	- dominio enzimatico citoplasmatico che può essere
		- *proteinchinasi a tirosina* o *a serina* (es. TGF-$\beta$)
		- *guanilciclasi* (es. ANP)
	- segmento idrofobico del polipeptide che attraversa il doppio strato lipidico
- ![Farmacologia generale, meccanismo di attivazione del recettore EGF, rappresentativo dei recettori tirosinchinasici.](https://i.imgur.com/9nIB3rn.png)
### Funzionamento
#### Step
1. Attivazione in seguito al legame del ligando col dominio extracellulare del recettore
2. La conseguente variazione conformazionale fa sì che una molecola di recettore ne leghi un'altra, con concomitante associazione dei domini tirosinchinasici
3. La tirosinchinasi attivata induce
	- fosforilazione crociata dei domini enzimatici
	- fosforilazione a valle di proteine trasduzionali
#### Considerazioni
- L'intensità e la durata di azione delle sostanze che agiscono attraverso tirosinchinasi sono limitate da un processo noto come **down-regulation** dei recettori
	- il legame del ligando, spesso, induce endocitosi accelerata dalla superficie cellulare e successiva degradazione di questi recettori (e dei loro ligandi)
	- se questo processo avviene a velocità più elevata della sintesi *de novo*, il numero totale dei recettori è ridotto
##### Down-regulation per l'EGFR
- Una volta che vi si lega l'EGF, il complesso viene rapidamente internalizzato e convogliato verso i lisosomi
- [[Mutazioni e sistemi di riparazione del DNA|Mutazioni genetiche]] interferenti con questo processo possono causare eccessiva proliferazione cellulare
	- aumentata suscettibilità ad alcuni tipi di cancro
##### Down-regulation per l'NGFR
- I recettori non sono rapidamente degradati dopo l'internalizzazione, ma rimangono intatti e sono traslocati in vescicole endocitotiche dall'assone distale al pirenoforo
	- tessuto bersaglio posto a distanza marcatamente elevata (più di 1m)
### Rilevanza nelle [[Malattie neoplastiche|malattie neoplastiche]]
- Si parla, logicamente, di inibitori dei recettori tirosinchinasici:
	- *anticorpi monoclonali* che si legano al dominio extracellulare ed interferiscono col legame del fattore di crescita (es. ==trastuzumab==, ==cetuximab==)
	- "piccole molecole" permeanti la membrana che inibiscono l'attività recettoriale nel citoplasma (es. ==gefitinib==, ==erlotinib==)
## Recettori per le citochine
- Gruppo eterogeneo di ligandi peptidici, comprendente il *GH*, l'*EPO*, parecchi tipi di *IFN* e altri regolatori della crescita/differenziazione
- ![Farmacologia generale, recettori per le citochine.](https://i.imgur.com/u8HKmOG.png)
### Funzionamento
- Praticamente il medesimo dei recettori tirosinchinasici, ma **l'attività tirosinchinasica non è intrinseca alla molecola recettoriale**
	- una proteina separata - appartenente alla famiglia delle *chinasi Janus* (*JAK*) - è capace di legarsi in modo non covalente al recettore
- Il legame col ligando determina
	1. dimerizzazione del recettore
	2. attivazione delle JAK
	3. fosforilazione dei residui tirosinici presenti sulla superficie
	4. fosforilazione delle *STAT* ad opera delle JAK e conseguente dimerizzazione
	5. il dimero STAT-STAT si dissocia dal recettore e passa al nucleo
## Canali ionici regolati da ligandi
- I ligandi naturali comprendono *Ach*, *serotonina*, *GABA* e *glutammato*
- Ciascuno dei recettori trasmette il suo segnale attraverso la membrana plasmatica:
	1. incrementando la conduttanza transmembrana dello ione relativo
	2. alterando il potenziale elettrico
### Recettore per l'Ach
>Esempio di canale ionico ligando-dipendente
- Recettore pentamerico costituito da quattro subunità polipeptidiche
	- due catene $\alpha$, una $\beta$, una $\gamma$ ed una $\delta$ (tutte con 43mila < p.m. < 50mila)
	- ognuno di questi polipeptidi attraversa la membrana quattro volte, formando una struttura cilindrica di d=8nm
- Funzionamento:
	1. legame dell'Ach alle subunità $\alpha$
	2. variazione conformazione, cui consegue una temporanea apertura di un idrocanale centrale
	3. ingresso degli ioni $Na^+$ mediante il canale
	- il tutto avviene nel giro di millisecondi
- I meccanismi descritti contribuiscono alla *plasticità sinaptica* implicata nell'apprendimento e nella memoria
>[!info]- Recettore colinergico nicotinico
>![Farmacologia generale, recettore colinergico nicotinico, un canale ionico regolato da ligando.](https://i.imgur.com/1sUei8K.png)
### Canali ionici voltaggio-dipendenti
- Non legano direttamente neurotrasmettitori, ma sono controllati dal potenziale di membrana
- Rappresentano importanti bersagli farmacologici
	- es. il ==verapamil== blocca canali per il $Ca^{2+}$ voltaggio-dipendenti a livello del cuore e della muscolatura liscia vascolare con **effetti antiaritmici ed ipotensivi** senza mimare o antagonizzare alcun noto neurotrasmettitore endogeno
## Proteine G e secondi messaggeri
- In molti casi, i ligandi extracellulari utilizzano un sistema di trasmissione transmembrana costituito da tre componenti:
	1. il ligando è riconosciuto da un recettore di membrana
	2. il recettore attiva, a sua volta, una proteina G localizzata sul lato citoplasmatico della membrana
	3. la proteina G attivata modifica l'attività di un effettore (generalmente enzima o canale ionico)
	4. quest'ultimo determina una variazione di concentrazione di un secondo messaggero intracellulare
### Secondi messaggeri intracellulari
#### cAMP
- L'enzima effettore è l'*adenilatociclasi*
- La corrispondente proteina G, $G_s$, stimola l'adenilatociclasi
	- dopo essere stata attivata da una grande varietà di ormoni e neurotrasmettitori, ognuno dei quali agisce attraverso specifici recettori accoppiati a $G_s$
	- es. di tali recettori: $\beta$-adrenergici, per il glucagone, per la tirotrofina, alcuni subtipi recettoriali per dopamina e serotonina
#### GTP
- Messaggero che consente l'amplificazione del segnale trasdotto
- Quando, a seguito dell'attivazione, si forma un complesso $G_s$-GTP, la durata dell'attivazione dell'*adenilatociclasi* dipenderà dalla longevità del complesso piuttosto che dall'affinità del ligando al recettore
	- ciò spiega il fenomeno dei [[Recettori dei farmaci e farmacodinamica#Recettori "di riserva"|recettori di riserva]]
- ![Farmacologia generale, ciclo di attivazione-inattivazione GTP-dipendente delle proteine G.](https://i.imgur.com/s2uo1fJ.png)
### Subfamiglie
- ![Farmacologia generale, proteine G e relativi recettori ed effettori.](https://i.imgur.com/v9h1dDN.png)
- Uno stesso ligando endogeno può legarsi e stimolare recettori accoppiati a diversi subtipi di proteina G
	- ciò risulta come un'apparente mancanza di specificità, ma permette di **determinare risposte differenti dipendenti da proteina G in cellule diverse**
	- es. la *noradrenalina* induce
		- aumento dromotropo cardiaco → $\beta$-recettori accoppiati a $G_s$
		- vasocostrizione → $\alpha_1$-recettori accoppiati a $G_q$
### Recettori accoppiati a proteine G
- I **GPCRs** comprendono una famiglia di recettori "a sette domini tranmembranari" (7-TM) o "a serpentina"
	- la loro catena polipeptidica attraversa la membrana plasmatica *sette volte*
	- sono tutti derivati dall'evoluzione di un comune precursore
- Entità costituzionale
	- funzionamento
		- alcuni richiedono l'assemblaggio in omodimeri (es. *recettore $GABA_B$* e quello per il *glutammato*)
		- la maggior parte si ritiene siano in grado di funzionare come monomeri
	- agonista: legato in una tasca chiusa delle regioni transmembrana del recettore
	- subunità interagente con la proteina G = amminoacidi della terza cavità citoplasmatica del recettore a serpentina polipeptidico
- ![Farmacologia generale, topologia transmembrana di un tipico "recettore a serpentina".](https://i.imgur.com/YwpkIpr.png)
## Regolazione di recettori
- Le risposte proteina G-mediate spesso si attenuano col tempo
	- diminuiscono nel corso di pochi secondi o minuti
	- la **"desensibilizzazione"** è spesso reversibile: una seconda esposizione allo stesso agonista determina una risposta uguale a quella inziale
- ![Farmacologia generale, desensibilizzazione rapida, risensibilizzazione e *down-regulation* dei recettori $\beta$-adrenergici.](https://i.imgur.com/BzbPRyO.png)
### Processo di regolazione mediante fosforilazione
1. La variazione conformazionale del recettore indotta da agonista ne induce il legame, con specifiche chinasi, le *chinasi del recettore legato a proteina G* (*GRK*)
2. La GRK attivata fosforila residui serinici presenti all'estremità carbossilica del recettore
3. La presenza di *fosfoserine* aumenta l'affinità del recettore per la *$\beta$-arrestina*
	- il cui legame alla cavità citoplasmatica recettoriale diminuisce la capacità dello stesso di interagire con $G_s$
	- si ha riduzione della risposta all'agonista (↓ stimolazione dell'adenilciclasi)
4. Dopo la rimozione dell'agonista, l'attivazione di GRK termina e fosfatasi cellulari possono ripristinare la sensibilizzazione recettoriale, annullando la desensibilizzazione
### Endocitosi recettoriale
#### Riciclo sulla membrana
- Processo
	1. in alcuni recettori, la $\beta$-arrestina può accelerare l'endocitosi dalla membrana plasmatica
	2. favorisce la loro defosforilazione ad opera di una *fosfatasi*, presente in elevate concentrazioni sulla membrana endosomiale
	3. il recettore viene riciclato intatto sulla superficie della membrana plasmatica
- Ciò aiuta a spiegare la capacità della cellula a **ripristinare la responsività cellulare** dopo la sensibilizzazione ligando-indotta
#### Degradazione
- Parecchi recettori, invece di essere riciclati, si dirigono verso i lisosomi e vengono degradati
	- **attenuazione** (anziché ripristino) **della responsività cellulare**
	- funzionamento simile alla [[Recettori dei farmaci e farmacodinamica#Funzionamento|down-regulation tirosinchinasica]]
## I secondi messaggeri meglio caratterizzati
### Adenosina monofosfato ciclico (cAMP)
- ![Farmacologia generale, la via del secondo messaggero cAMP.](https://i.imgur.com/FLvClY6.png)
#### Funzioni
- Media alcune risposte ormonali:
	- mobilizzazione di energia immagazzinata (degradazione di carboidrati nel fegato o trigliceridi nelle cellule adipose, stimolata da catecolamine $\beta$-adrenergiche)
	- conservazione dell'acqua mediata da *vasopressina*
	- omeostasi di $Ca^{2+}$ (regolata dall'*ormone paratiroideo*)
	- aumento dromotropo e cronotropo cardiaco (catecolamine $\beta$-adrenomimetiche)
- Regola
	- produzione di steroidi surrenalici e sessuali (in risposta a *corticotrofina* od *ormone follicolo-stimolante*)
	- rilasciamento della muscolatura liscia
	- molti altri processi endocrini e nervosi
#### Meccanismo d'azione
1. Esercita molti dei suoi effetti stimolando una *proteinchinasi cAMP-dipendente*, composta da
	- due subunità regolatorie in grado di legare cAMP (R)
	- due subunità catalitiche (C)
2. La reazione con cAMP causa il rilascio di catene C attivate che diffondono attraverso il citoplasma ed il nucleo
	- lì trasferiscono fosfati da ATP ad appropriate proteine, spesso di natura enzimatica
3. Quando lo stimolo ormonale viene a mancare, delle *fosfatasi* specifiche ed aspecifiche intervengono a defosforilare i substrati enzimatici
	- cAMP → 5'-AMP (ad opera di una *fosfodiesterasi*)
	- ==Milrinone==
		- inibitore selettivo di *fosfodiesterasi di tipo 3* espresse nei miocardiociti
		- impiegato come agente complementare nel trattamento dell'[[Scompenso cardiaco|insufficienza cardiaca congestizia]]
	- altri farmaci agiscono sull'inibizione competitiva della degradazione del cAMP:
		- ==caffeina==
		- ==teofillina==
>[!info]
> La specificità degli effetti regolatori mediati da cAMP è legata ai distinti substrati proteici delle chinasi, che sono espresse in differenti cellule.
> - Es. il fegato è ricco di *fosforilasi-chinasi* e *glicogeno-sintetasi*, due enzimi che determinano l'immagazzinamento ed il rilascio dei carboidrati (entrambi regolati da cAMP).
### Calcio e fosfatidilinositoli
- ![Farmacologia generale, la via trasduzionale $Ca^{2+}$/fosfatidilinositoli.](https://i.imgur.com/o8CPIio.png)
#### Meccanismo d'azione
1. Alcuni ormoni, neurotrasmettitori e fattori di crescita utilizzanti questa via si legano a GPCR o recettori tirosinchinasici
2. Viene stimolata la *fosfolipasi C* (*PLC*), che idrolizza un componente minore della membrana plasmatica, il *fosfatidil-inositolo-4,5-bifosfato* (*$PIP_2$*)
3. Nascono due secondi messaggeri, il **diacilglicerolo** (**DAG**) e l'**inositol-1,4,5-trifosfato** (**$IP_3$** o *$InsP_3$*):
	- DAG, confinato nella membrana, attiva una *PKC*, sensibile a fosfolipidi e $Ca^{2+}$
	- $IP_3$ diffonde attraverso il citoplasma, regolando il rilascio di $Ca^{2+}$ dalle vescicole interne, in cui è immagazzinato
4. Un'elevata concentrazione di $Ca^{2+}$ ne favorisce il legame con una proteina, la *calmodulina calcio-dipendente*, che regola, a sua volta, l'attività di altri enzimi, incluse le proteinchinasi calcio-dipendenti
5. Quando lo stimolo viene a mancare, diversi sono i meccanismi in grado di estinguere la trasduzione del segnale di questa via:
	- $IP_3$ → rapidamente inattivato da defosforilazione
	- DAG → fosforilato ad *acido fosfatidico* o deacetilato ad *acido arachidonico*
	- $Ca^{2+}$ → rimosso dal citoplasma dalle pompe per $Ca^{2+}$
- Azione farmacologica:
	- es. lo ==ione litio== agisce attraverso effetti sul metabolismo dei fosfatidil-inositoli, intervenendo nella risposta contro i disordini maniaco-depressivi
#### Considerazioni
- Questa via è molto più complessa di quella di cAMP:
	- differenti tipi di cellule possono contenere una o più chinasi specifiche, con ristretta specificità di substrato
	- sono stati identificati almeno nove tipi di PKC strutturalmente distinte
### Guanosina monofosfato ciclico (cGMP)
- Presenta definiti ruoli di trasduzione solo in pochi tipi di cellule
- Nella mucosa intestinale e nella muscolatura liscia vasale, i meccanismi di trasduzione mediati da cGMP sono strettamente paralleli a quelli attuati da cAMP
#### Azione sulla muscolatura vasale
>Rilasciamento della muscolatura vasale attraverso un meccanismo mediato da chinasi, che comporta una defosforilazione delle *catene leggere di miosina*
- La sintesi di cGMP può essere incrementata da due differenti meccanismi di trasduzione, utilizzanti due diverse *guanilciclasi*:
	1. *ANP* stimola un recettore transmembrana, legandosi al suo dominio extracellulare e attivando la guanilciclasi intracellulare
	2. *NO*
		- generato dalle cellule endoteliali vascolari in risposta ad agenti vasodilatanti naturali (es. *ach* o *istamina*)
		- entrato nelle cellule, si lega alla guanilciclasi citoplasmatica
		- azione farmacologica
			- molti farmaci ad azione vasodilatante agiscono generandolo o mimandolo (es. ==nitroglicerina== o ==nitroprussiato==, usati nel trattamento di [[Infarto miocardico|infarto miocardico acuto]] o dell'[[Ipertensione|ipertensione acuta]])
			- altri farmaci producono inibiscono specifiche *fosfodiesterasi*, interferendo con la sua degradazione metabolica (es. ==sildenafil==)
## Interrelazioni tra meccanismi di trasduzione
- Le vie di trasduzione calcio-fosfatidilinositoli e cAMP agiscono in modo diametralmente opposto in alcune cellule e cooperano in altre
## La fosforilazione: un tema comune
### Amplificazione
- L'attacco di un gruppo fosforico ad un residuo serinico, treoninico o tirosinico amplifica potentemente l'iniziale segnale regolatorio, registrando in una memoria molecolare che la via è stata attivata
- La defosforilazione cancella la memoria in un tempo più lungo di quello necessario alla dissociazione di un ligando allosterico
### Regolazione "flessibile"
- Diversi substrati specifici di PK, regolate da secondi messaggeri, determinano una serie di diramazioni nelle vie di trasduzione, che possono essere regolate indipendentemente le une dalle altre
- Così gl'inibitori di proteinchinasi presentano elevata potenzialità come agenti terapeutici:
	- ==trastuzumab== → utile nel [[Carcinoma della mammella|cancro mammario]]
	- ==imatinib== → trattamento della *leucemia mieloide cronica*
# Classi di recettori e sviluppo di nuovi farmaci
- Aru culu
# Relazione tra dose di farmaco e risposta clinica
>[!warning]
>Di fronte ad un paziente che richiede trattamento farmacologico, il medico deve operare una scelta tra diversi farmaci possibili e stabilire un regime di dosaggio caratterizzato da **massimo beneficio** e **minima tossicità**.
## Dose e risposta nel paziente
### Relazione dose-risposta graduale
- Per poter scegliere fra diversi farmaci, il medico deve conoscere la **potenza farmacologica** e l'**efficacia massima** dei farmaci in relazione all'effetto terapeutico desiderato
- ![Farmacologia generale, curve dose-risposta graduali per 4 farmaci aventi diversa potenza farmacologica e diversa efficacia massima.](https://i.imgur.com/OarbgIF.png)
#### Potenza
- La potenza si riferisce alla concentrazione ($EC_{50}$) o alla dose ($ED_{50}$) del farmaco necessaria a produrre una risposta 50% di quella massima
- La potenza di un farmaco dipende da
	- affinità ($K_d$) dei recettori nel legare il farmaco
	- efficienza con cui l'interazione farmaco-recettore è accoppiata alla risposta
- L'**efficacia clinica** di un farmaco dipende dalla sua
	- potenza ($EC_{50}$)
	- efficacia massima
	- capacità di raggiungere i relativi recettori
		- può dipendere dalla via di somministrazione, dall'assorbimento, dalla distribuzione nell'organismo e dall'allontanamento dal sangue o dal suo sito d'azione
>[!warning]
> Nel decidere tra due farmaci da somministrare, un medico dovrebbe considerare la loro efficacia relativa piuttosto che la potenza relativa.

>[!info]
>- Per scopi terapeutici, la potenza di un farmaco dovrebbe essere specificata in **unità di dosaggio**, generalmente in termini di un particolare punto finale terapeutico (es. 50 mg per una lieve sedazione, 1 $\mu$g/kg/min per un aumento nella frequenza cardiaca di 25 battiti/min).
>- Nel paragonare due farmaci tra loro si può usare la **potenza relativa**, ovvero il rapporto tra dosi di uguale efficacia.
#### Efficacia massima
>talora chiamata semplicemente **efficacia**
- Questo parametro riflette il *limite della relazione dose-risposta* sull'**asse della risposta**
	- nell'img, A, C e D hanno uguale efficacia max e tutti maggiore di quella di B
	- cruciale qualora si debbano prendere decisioni in clinica
- Può essere determinata da
	- modo di interagire del farmaco col recettore
	- caratteristiche del sistema recettore-effettore in gioco
>[!warning]
> L'efficacia di un farmaco nell'ottenere un certo risultato finale terapeutico può essere limitata dalla tendenza del farmaco a causare un effetto tossico (anche se potrebbe, peraltro, produrre un effetto terapeutico superiore).
### Andamento delle curve dose-risposta
- Curve come A, B e C ricordano l'andamento di una semplice *relazione di Michaelis-Menten*
- Curve dose-risposta più ripide (come D) possono avere conseguenze cliniche importanti se la porzione superiore della curva rappresenta un'estensione indesiderabile della risposta
	- nei pazienti, curve dose-risposta ripide potrebbero derivare da interazioni cooperative di molte azioni differenti del farmaco (es. effetti sul cervello, cuore e vasi periferici che contribuiscono insieme ad abbassare la pressione sanguigna)
### Curve dose-effetto quantali
- Le curve dose-effetto soffrono di certe limitazioni qualora le si voglia applicare alla pratica clinica
	- es. può essere impossibile costruire una curva graduale se la risposta farmacologica è un evento che si verifica oppure non si verifica (quantale), come il prevenire convulsioni, un'aritmia o la morte
	- relazione quantitativa dose-risposta
		- può avere rilevanza clinica in un singolo paziente
		- può essere limitata qualora sia applicata ad altri pazienti
- Alcune di queste ==problematiche== possono essere ==eluse== ==determinando la dose di farmaco richiesta per produrre un effetto di specifica entità in un gran numero di pazienti/animali da esperimento== e ponendo *in grafico*:
	- la *distribuzione cumulativa delle frequenze* per gl'individui che rispondono
	- il *logaritmo della dose*
	- ![Farmacologia generale, curve dose-effetto quantali.](https://i.imgur.com/b7X1lla.png)
		- l'**effetto quantale specificato** può essere
			- scelto in base alla *rilevanza clinica* (es. sollievo dalla cefalea)
			- riferito alla *salvaguardia del benessere dei soggetti* (es. qualora si usino basse dosi di un cardiostimolante e specificando come effetto quantale un aumento della frequenza cardiaca di 20 battiti/min)
			- un *effetto inerentemente quantale* (es. la morte di un animale da esperimento)
		- per la maggior parte dei farmaci, **le dosi richieste per produrre uno specificato effetto quantale negl'individui hanno una distribuzione normal-logaritmica**
			- qualora la distribuzione delle frequenze della risposta venga posta in grafico come funzione del logaritmo della dose, si avrà una curva di variazione normale gaussiana
			- quando queste risposte sono sommate, la distribuzione cumulativa delle frequenze che ne risulta costituisce una *curva dose-effetto quantale* (o *curva dose-percento*) della proporzione o percentuale di individui che esibiscono l'effetto posto in grafico come funzione del logaritmo della dose
- Dosi di riferimento
	- definizioni:
		- ==dose efficace mediana== (==$ED_{50}$==[^2]): dose alla quale il 50% degl'individui mostrano l'effetto quantale specificato
		- ==dose tossica mediana== ($TD_{50}$, $DT_{50}$): dose richiesta per produrre un particolare effetto tossico nel 50% degli animali
			- ==dose letale mediana== ($LD_{50}$, $DL_{50}$): se l'effetto tossico è la morte dell'animale
	- questi valori forniscono un ==modo conveniente per paragonare la potenza dei farmaci in ambito sia sperimentale che clinico==:
		- es. se le DE$_{50}$ di due farmaci nel produrre uno specificato effetto quantale sono, rispettivamente, 5 e 500 mg, è possibile dire che il primo farmaco è 100 volte più potente del secondo (per quel particolare effetto)
		- es. è analogamente possibile ricavare un valido indice della selettività d'azione di un farmaco paragonando le sue DE$_{50}$ per due diversi effetti quantali in una popolazione d'individui (es. soppressione della tosse e sedazione, nel caso di farmaci oppioidi)
- **Indice terapeutico**
	- rapporto tra la DT$_{50}$ e la DE$_{50}$ per qualche effetto terapeuticamente rilevante
	- ==mette in relazione la dose di farmaco richiesta per produrre un effetto desiderato con quella che ne produce uno indesiderato==
	- un accettabile rischio di tossicità dipende, in clinica, dalla gravità della malattia in trattamento
		- es. per il trattamento della cefalea, il medico potrebbe esigere un indice terapeutico molto grande
			- definito come l'ambito di dosi capaci di portare sollievo da una cefalea nella grande maggioranza dei pazienti
			- dovrebbe essere molto più basso dell'ambito di dosi capaci di determinare tossicità di rilievo (anche se la tossicità è rilevabile solo in una ristretta minoranza di pazienti)
		- es. nel trattamento di un linfoma di Hodgkin, potrà essere più ridotta la differenza accettabile tra dosi terapeutiche e tossiche
>[!warning]
>La curva dose-effetto quantale e la classica curva dose-risposta graduale riassumono diversi tipi di informazione, anche se entrambe assumono un aspetto sigmoidale in un diagramma semilogaritmico (vedi imgg. 2-15 e 2-16).
>Da entrambe le curve è possibile estrapolare informazioni necessarie a prendere decisioni terapeutiche razionali:
>- sia l'una che l'altra forniscono informazioni riguardanti la **potenza** e la **selettività** dei farmaci;
>- la curva graduale indica l'**efficacia massima** di un farmaco;
>- la quantale fornisce indicazioni sulla **variabilità** potenziale delle risposte tra un individuo e l'altro.
## Variazioni nella risposta ai farmaci
- Gl'individui possono presentare considerevoli variazioni nel modo di rispondere ai farmaci (anche il paziente stesso può rispondere in maniere diverse al medesimo farmaco)
	- risposte **idiosincrasiche**: occasionali, sono dovute a differenze genetiche nel metabolismo del farmaco oppure a meccanismi immunologici (incluse le [[Ipersensibilità immediata (tipo I)|reazioni allergiche]])
- Variazioni quantitative nelle risposte ai farmaci
	- un paziente può essere **iporeattivo** o **iperreattivo** ad un farmaco
	- si può instaurare uno stato di **tolleranza** (abitudine) agli effetti di un farmaco durante la cura (ridotta responsività)
	- **tachifilassi**: quando l'entità della risposta si attenua rapidamente dopo somministrazioni (poche e ripetute a breve distanza) di un farmaco
>[!warning]
>Anche quando sta per somministrare la prima dose di un farmaco, il medico dovrebbe tenere in considerazione quei fattori che possono essere di aiuto nel prevedere la direzione e l'entità di una possibile variazione nella risposta.
### Modifiche della concentrazione di farmaco che raggiunge il recettore
- I pazienti possono presentare differenze farmacocinetiche
	- nella velocità di assorbimento di un farmaco, nella distribuzione dello stesso attraverso i compartimenti dell'organismo, o nella sua eliminazione dal sangue
	- possono essere previste valutando differenze genetiche
- Altro importante meccanismo influenzante la disponibilità farmacologica è il *trasporto attivo del farmaco dal citoplasma*
	- mediato dai *geni MDR* (*multidrug resistance*)
	- es. **sovraregolazione dell'espressione del trasportatore MDR**: principale meccanismo mediante cui le cellule tumorali sviluppano **resistenza** ai ==farmaci antiblastici==
### Variazione nella concentrazione di un ligando recettoriale endogeno
- Es. il ==propanololo== ($\beta$-agonista) rallenterà notevolmente la frequenza cardiaca di un paziente con elevate catecolamine endogene (es. [[Feocromocitoma|feocromocitoma]]), ma non avrà influenza sulla frequenza cardiaca a riposo di un maratoneta ben allenato
- Es. la ==saralisina== (debole agonista parziale ai *recettori per l'angiotensina II*)
	- abbassa la pressione sanguigna nei pazienti affetti da [[Ipertensione|ipertensione]] causata da aumentata produzione di angiotensina,
	- l'aumenta in pazienti che producono basse quantità di angiotensina
### Alterazioni nel numero o nella funzione dei recettori
- Cause
	- in alcuni casi, la **variazione del numero dei recettori** è **causata da altri ormoni**
		- es. gli *ormoni tiroidei* aumentano sia il numero dei recettori $\beta$-adrenergici nel muscolo cardiaco del ratto che la sensibilità cardiaca alle catecolamine
			- cambiamenti di questo tipo è probabile contribuiscano alla tachicardia in pazienti affetti da tireotossicosi e possono spiegare l'utilità del ==propanololo== nel migliorarne i sintomi
	- in altri casi, è **lo stesso agonista** che **induce una diminuzione nel numero** (*down-regulation*) o **nell'efficienza di accoppiamento funzionale** (*desensibilizzazione*)
- Proprio meccanismi come quelli enunciati sembra causino i cosiddetti fenomeni di *overshoot* (rimbalzo) quando s'interrompe all'improvviso la somministrazione di alcuni farmaci
- Anche fattori genetici possono avere il loro ruolo:
	- es. una specifica variante del *recettore $\alpha_{2C}$-adrenergico* - quando ereditato assieme ad una variante specifica del recettore $\alpha_1$-adrenergico - conferisce un rischio estremamente elevato di [[Scompenso cardiaco|insufficienza cardiaca congestizia]], che può essere ridotta con farmaci antagonisti
	- es. mutazioni somatiche nel sito della [[Recettori dei farmaci e farmacodinamica#Enzimi transmembrana regolati da ligandi che comprendono le proteinchinasi a tirosina|tirosinchinasi]] dell'*EGFR* dell'epidermide conferiscono aumentata sensibilità ad inibitori delle chinasi (come ==gefitinib==) in alcuni tipi di [[Tumori polmonari|cancro al polmone]]
		- tale tipo di effetto incrementa quello antineoplastico del farmaco
		- poiché le mutazioni somatiche sono specifiche del tumore e non dell'ospite, ==l'indice terapeutico di questi farmaci può essere significativamente incrementato in pazienti i cui tumori presentano mutazioni somatiche==
### Variazioni nei componenti post-recettoriali della risposta
- Dal punto di vista clinico, questa è la classe più numerosa e più importante di meccanismi causanti variazioni delle risposte ai farmaci in terapia
>[!warning]
>Quando la diagnosi è corretta e il farmaco è appropriato, una risposta terapeutica insoddisfacente spesso può essere ricondotta a dei meccanismi di scompenso che, nel paziente, tendono ad opporsi agli effetti desiderati del farmaco.
>- Es. aumenti compensatori del tono nervoso simpatico e ritenzione di liquido da parte del rene possono contribuire all'abitudine verso gli effetti antipertensivi di un farmaco vasodilatatore (necessaria associazione con altri farmaci).
## Selettività clinica: effetti utili contro effetti tossici dei farmaci
>[!warning]
>*Nessun farmaco causa solamente un unico e specifico effetto*, poiché risulta estremamente improbabile che un farmaco si leghi ad una sola specie recettoriale.
>- Anche se così fosse, i processi biochimici controllati da tali recettori avverrebbero in molteplici tipi di cellule e, dunque, connessi a molte altre funzioni biologiche.
- I farmaci sono solamente *selettivi* (piuttosto che specifici)
	- la selettività può essere misurata paragonando le affinità di legame di un farmaco a recettori diversi o confrontando le DE$_{50}$, per i diversi effetti di un farmaco in vivo
	- nell'ambito della medicina clinica, la selettività viene misurata separando gli effetti in due categorie:
		- **effetti utili** (o **terapeutici**)
		- **effetti sfavorevoli**
			- la propaganda farmaceutica e i medici utilizzano occasionalmente il termine **effetto collaterale**, implicando che l'effetto in questione sia insignificante o avvenga attraverso una via che fiancheggia l'azione principale del farmaco (ciò può trarre in errore)
### Effetti terapeutici e tossici mediati dallo stesso meccanismo recettore-effettore
- Gran parte degli effetti tossici seri rappresenta un'estensione farmacologica diretta delle azioni terapeutiche del farmaco
	- es. sanguinamento causato da una terapia anticoagulante; coma ipoglicemico da insulina
	- l'effetto tossico può essere evitato
		- somministrando giudiziosamente la dose del farmaco
		- operando un accurato controllo dell'effetto (misurazione del tempo di coagulazione e della glicemia)
		- con l'ausilio di accorgimenti diversi (evitare traumi tissutali che potrebbero produrre emorragie; regolare l'assunzione di carboidrati)
	- in altri casi, è possibile evitare l'effetto tossico semplicemente decidendo di non somministrare il farmaco
- In certe situazioni, un farmaco chiaramente necessario e utile può dare effetti tossici inaccettabili se somministrato a dosi che producono l'effetto terapeutico ottimale
### Effetti terapeutici e tossici mediati da recettori identici, ma situati in tessuti diversi o collegati a sistemi effettoriali diversi
- Molti farmaci producono sia effetti terapeutici che effetti tossici agendo su un singolo tipo di recettore in differenti organismi
	- es. i ==glicosidi digitalici== agiscono sulla $Na^+/K^+$-ATPasi delle membrane cellulari; il ==metotrexato== inibisce la *diidrofolatoriduttasi*; gli ormoni glucocorticoidi
- Gli effetti tossici potrebbero essere mitigati o evitati usando tre strategie terapeutiche:
	1. il farmaco dovrebbe sempre essere somministrato alla minima dose in grado di produrre un effetto terapeutico accettabile;
	2. l'associazione con farmaci che agiscono attraverso diversi meccanismi recettoriali e causano effetti tossici diversi può permettere di abbassare la dose del farmaco primario, limitandone la tossicità
		- es. l'aggiunta ai ==glucocorticoidi== di altri agenti immunosoppressori nel trattamento di alcuni stati infiammatori;
	3. la selettività di azione dei farmaci può essere accresciuta manipolando le concentrazioni del farmaco disponibili ai recettori nelle diverse parti dell'organismo 
		- es. erogando direttamente ai bronchi un ==glucocorticoide== in forma di aerosol
### Effetti terapeutici e tossici mediati da recettori di tipo diverso
- Farmaci di questo tipo includono
	- agonisti e antagonisti $\alpha$- e $\beta$-adrenergici
	- antistaminici H$_1$ e H$_2$
	- antagonisti nicotinici e muscarinici
	- ormoni steroidei dotati di selettività recettoriale






---
# Reference
[[Farmacologia]]





[^1]: Attualmente tale termine viene usato per indicare sostanze e composti vasoattivi a diversa struttura chimica elaborate dall'organismo, non classificabili come ormoni, ma dotate di azione farmacologica
[^2]: Indicata, con la dizione italiana, come $DE_{50}$, $DT_{50}$, $DL_{50}$