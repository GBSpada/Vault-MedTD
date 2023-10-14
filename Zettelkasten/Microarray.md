 2023-05-10 11:03
Stato: #Idealezione
Tag: #Tecnichedilaboratorio

---
# Microarray
- **Antecedenti cronologici**: da molti considerati la nuova frontiera diagnostica, in trascrittomica hanno aperto la strada a nuove tecniche per la proteomica e per la metabolomica. Per capire perché rappresentino la nuova frontiera bisogna partire da una considerazione: da metà del XX secolo ad oggi, sia la ricerca di base che la diagnostica hanno registrato un avanzamento incredibile; la scoperta della struttura del   DNA a metà degli anni 50 ha rappresentato la nascita della moderna biologia e genetica molecolare, dando la possibilità di entrare nel dettaglio dei meccanismi della regolazione dell'informazione genica.
	- Dalla messa a punto della PCR in poi, il progresso è andato avanti con velocità esponenziale:
		- anni 50-anni 90, gli approcci metodologici consentivano solo lo studio di singoli o pochi geni (es. Southern blocking, che consente di studiare max 2 sequenze) ed eventualmente la correlazione di essi con singoli fenotipi patologici;
		- la PCR è stata un punto di svolta, perché, grazie alle altre tecniche di sequenziamento, ha consentito di completare il progetto Genoma Umano nel 2003, che ha portato un notevole bagaglio di informazioni in più per la ricerca di base. Ciò, unito agli avanzamenti tecnologici, ha consentito il passaggio all'era post genomica, in cui l'approccio metodologico è totalmente ribaltato e si basa su un ampio screening dell'intero genoma, che consente di analizzare contemporaneamente interi gruppi di geni e di identificare le interazioni che avvengono fra i  gruppi di geni (come le reti di segnalazione comunicano fra loro, ha consentito il passaggio alla genomica trascrizionale).
	- Questo passaggio è stato possibile grazie all'evoluzione di tecniche utili allo studio di geni clonati e sequenziati, tra cui quella di maggiore riscontro nella comunità scientifica è rappresentata dai microarray, poiché si tratta di una tecnologia che consente di analizzare sia l'organizzazione strutturale che funzionale del genoma e, come tale, fornisce nuovi strumenti sia alla ricerca di base che traslazionale.
		- ![Microarray, espressione di cellule normali e cancerogene](https://i.imgur.com/5euuPh5.png)
## Principi
- **Principi**: nella sua accezione originaria, il microarray è un dispositivo tecnologicamente avanzato, che consente l'analisi contemporanea di decine di migliaia di geni e che consente di ottenere, in un unico passaggio sperimentale, una mole di informazioni enorme e tale da definire il profilo genico di espressione di una cellula o di un tessuto nel momento in cui viene condotta l'indagine analitica, come si avesse un ritratto molecolare della cellula o del tessuto (indica quale gene è più espresso e quale meno in condizioni di base e patologiche cellulari).
	- ![Microarray](https://i.imgur.com/YCYYCfz.png)
	- Le basi della tecnologia dei microarray sono estremamente sofisticate, ma il disegno sperimentale è molto semplice, perché altro non è che l'*evoluzione di Southern e Northern blocking*, basate sulla peculiare caratteristica degli acidi nucleici di formare ibridi a doppia elica in presenza di filamenti singoli complementari (si legano in maniera specifica).
		- ![Microarray, acidi nucleici che formano ibridi a doppia elica in presenza di filamenti singoli complementari](https://i.imgur.com/Ksfn65X.png)
	- Differenze rispetto alle precedenti tecniche:
				1. Mentre in Southern e Northern blotting, gli acidi nucleici da testare vengono posti su filtro e, poi, questo viene posto a contatto con una sonda nucleotidica marcata, nei microarray i campioni di acido nucleico da analizzare sono marcati e presenti in forma libera nella miscela di reazione, mentre le sonde sono fissate su un supporto solido;
					1. In tecniche quali Southern o Northern blotting ![Microarray, differenza con Southern e Northern blotting 1](https://i.imgur.com/cZZqIaL.png)
					2. Al contrario, nei microarray ![Microarray, differenza con Southern e Northern blotting 2](https://i.imgur.com/MuWHDzq.png)
				2. Il numero di sonde utilizzate possono essere da una a tre (è difficile trovare le giuste condizioni di stringenza dell'applicazione), mentre nei microarray migliaia e ciò consente maggiore rilevazione genica.
	- **Microarray**'', infatti, è la contrazione di **Microscopic Glass Array** (array su vetrino da microscopio), ovvero disposizione ordinata o schieramento su una superficie solida di una collezione di una collezione di sonde di DNA (*filamenti di cDNA* complementari od oligonucleotidi), legati alla superficie in corrispondenza di spot, piccole aree circolari, disposti lungo linee orizzontali e verticali a formare una matrice di punti. Ogni spot rappresenta dimensioni inferiori di 200 μm e ogni spot contiene migliaia di sonde specifiche per un determinato gene. Il gene rappresentato in ciascuno spot può sempre essere univocamente rappresentato sulla base delle coordinate che ha nella matrice di punti. Durante il processo di ibridazione, i cDNA target marcati in fluorescenza riconosceranno la corrispondente sonda legata e, legandola, daranno origine ad un segnale fluorescente rilevabile in qualunque momento, che darà indicazione dell'espressione di quel gene nel campione e, quindi, della sua attività.
		- Sonde: sequenze specifiche del gene, corrispondenti all'mRNA, portatore dell'informazione che verrà espressa.
		- ![Microarray, microscopic slide](https://i.imgur.com/z6bkaVJ.png)
	- **Componenti**:
				1. RNA target, un campione di controllo e un campione sperimentale, la cui estrazione richiede estrema attenzione, data la sensibilità del metodo;
				2. Un chip di microarray, su cui sono legate le sonde.
		- ![Microarray, componenti necessari](https://i.imgur.com/v30CX5W.png)
		- Indipendentemente dalla tecnologia utilizzata, in un saggio di microarray, si ha l'estrazione dell'RNA totale o messaggero e la sua retrotrascrizione e contemporanea marcatura in cDNA.
			- Una volta ottenuti, la *marcatura* avviene utilizzando i *fluorocromi*;
			- Una volta marcati si pongono a contatto col chip sul vetrino;
			- A questa fase fa seguito la scannerizzazione del chip, che consente la rilevazione del DNA fluorescente e la divulgazione dei risultati.
			- ![Microarray, impiego dei componenti necessari](https://i.imgur.com/f7MHZR0.png)

## Creazione di un microarray
- **Elementi necessari alla creazione** e **tecnologia utilizzata**: il microarray è costituito da sonde e dal supporto su cui sono poste:
		1. Il **supporto solido** ha avuto una serie di avanzamenti tecnologici, perché gli **spot**, in cui vengono deposte le sonde, sono dati da aree di uguale forma circolare, uguali dimensioni, equidistanti fra loro e devono essere caratterizzati da uguale densità di sonda deposta in essi, per garantire che un segnale di un gene non prevalga su un altro.
		![Microarray, caratteristiche degli spot](https://i.imgur.com/siTTopx.png)
	- Per poter rispondere a queste caratteristiche, è necessario che il supporto solido rispetti dei prerequisiti:
		- *perfetta planarità*,
		- *omogeneità in termini di reattività chimica*; dunque, prima della deposizione delle sonde, questo supporto va trattato con opportuni reagenti (*reattivi organosilanici*, *acrilamide*, *polilisina*), facendo in modo che i gruppi reattivi disposti in ciascuno spot abbiano stessa densità in tutti i punti della matrice (o comunque ci siano differenze minime da punto a punto).
	- Nei primi microarray, venivano utilizzati *supporti porosi*, filtri di ==microcellulosa== o ==nylon==. Per quanto utili, il loro uso comportava una serie di problemi che non consentivano la standardizzazione della metodica. I problemi riguardavano morfologia e dimensioni degli spot, perché non avevano stessa dimensione e forma (<300 μm), caratteristiche fondamentali al momento del segnale di ibridazione. Su questi supporti, la reazione di ibridazione era piuttosto lenta, a causa della necessità degli acidi nucleici in analisi di dover diffondere nel supporto per poter raggiungere le sonde; il numero di geni deposti raggiungeva un max di 4000 spot.
		- ![Microarray, supporti porosi](https://i.imgur.com/e8RN264.png)
		- Tutti questi problemi sono stati superati tramite l'introduzione di *supporti impermeabili* (==vetro==, ==silicio==, ==propilene==), che hanno consentito l'utilizzo di minori volumi di campione da analizzare, perché, non essendoci diffusione, i campioni saturavano completamente la superficie a disposizione, la reazione di ibridazione è più rapida per assenza di diffusione e poi rappresentano maggiore autofluorescenza intrinseca, danno un rumore di fondo più basso al momento della rilevazione.
			- ![Microarray, supporti impermeabili](https://i.imgur.com/i56RZeO.png)
			- Il più utilizzato è il **vetro** grazie a proprietà intrinseche, quali inerzia chimica, rigidità strutturale, trasparenza e bassa fluorescenza intrinseca;
	2. Le **sonde** garantiscono specificità della rilevazione del gene d'interesse. All'interno di ciascuno spot, ogni sonda è specifica per ogni specifica sequenza. Se questa sequenza di acido nucleico corrispondente è presente nella miscela, è in grado di riconoscerla e legarla con altissima specificità; qualora il target genico sia marcato, il legame tra sonda e target di DNA darà origine a un segnale fluorescente rilevabile.
	- Il requisito essenziale è l'*unicità* (specificità per un singolo gene) e ciò comporta che le sonde siano identificate all'interno dell'intero genoma tra quelle trascritte in RNA. L'identificazione all'interno del trascrittoma può essere possibile solo grazie all'utilizzo di software dedicati  (database quali *UniGene*, *GeneBank* e *dbEST*) e le sequenze così identificate sono indicate come "*sequenze uniche espresse*", Expressed Sequence Tags (**EST**). Così possono essere depositate sul vetrino.
	- Le tecnologie sono varie, le più utilizzate sono
		- **Short Oligonucleotide array GeneChip (Affimetrix)**: la prof l'ha sorvolata.
		- **Spotted Microarray**, la prima tecnologia messa a punto da *Pat Brown*. Questi sono array in cui le sonde, presintetizzate in vitro, vengono depositate sul vetrino in maniera coordinata e riconducibile mediante sistemi robotici.
			- Distinzione:
				- Le sonde, poste in *cDNA arrays*, sono sonde rappresentate da cDNA corrispondenti a sequenze codificanti del genoma (*open reading-frame* o EST), ma possono essere rappresentati anche da DNA clonati in library genomiche e sequenziati. In questi array, la lunghezza ottimale delle sonde è 300-800 bp; in realtà, soprattutto nei DNA clonati da identificare, si è arrivati a sequenze molto più lunghe (fino a 2500-3000 bp);
				- La lunghezza delle sequenze, in alcuni casi, non consente di discriminare tra diversi geni aventi regioni fortemente correlate fra loro, così come non consentono l'identificazione di varianti di splicing di uno lo stesso gene (si possono verificare reazioni di ibridazione crociata). Per ovviare a questo problema, sono stati introdotti i *Long Oligonucleotide Arrays*, in cui le sonde (50-80 bp) sono selezionate in regioni codificanti del gene, ma la selezione avviene specificamente in una regione 3'-UTR (particolare regione, perché trascritta, ma non tradotta in proteina).
					- Essi, oltre a ridurre il problema d'*ibridazione crociata*, aumentano la specificità di rilevazione, perché consentono di poter deporre, all'interno di un certo spot, un maggior numero di sonde (il loro ingombro è parecchio minore). Aumentano anche i costi, ma c'ami fa. Possono essere analizzati fino a 40mila geni.
			- *Analisi dei microarray*: 
				- La deposizione delle sonde avviene mediante robot (a). Gli spot depositati (d = 80-150µm, distanza tra spot = 200 250 µm) sono riconoscibili in ciascun punto dell'array grazie alle informazioni contenute nel computer.
				- Gli spotted array consentono di poter valutare il profilo di espressione genica su due campioni, di cui uno con funzione di controllo. Gli RNA isolati da campione di controllo e sperimentale vengono retrotrascritti in cDNA e marcati con fluorocromi (vengono utilizzate le *cianine*), quali **cianina-3** (emette nel verde e viene associata, per convenzione, al campione di controllo), la **cianina-5** (emette nel rosso e viene associata, per convenzione, al campione sperimentale). Si mescolano in un'unica provetta e la miscela ottenuta viene ibridata su unico chip. Si ha, dunque, un'**ibridazione competitiva** (es. se un certo gene è più espresso nel campione sperimentale, si vede più rosso).
					- ![Microarray, campione di controllo e campione sperimentale](https://i.imgur.com/ycUoMFp.png)
				- Caratteristiche delle cianine:
					- La **cy3** ha minori dimensioni della cy5, che potrebbe portare a maggiore incorporazione del DNA e, dunque, maggior segnale;
					- La **cy5** è più labile della cy3, dunque più degradabile.
						- Si può sopperire ai precedenti due problemi tramite *dye swap*, ovvero scambio di colori nell'esperimento successivo e comparazione dei risultati ottenuti per avere la certezza che i livelli di espressione non dipendano dalla differenza nella marcatura tra le cianine.
						- ![Microarray, dye swap delle cianine](https://i.imgur.com/FJkw404.png)
				- **Procedimento completo**: 
					1. Gli RNA vengono estratti, retrotrascritti e marcati in cDNA, mescolati e ibridati con le sonde dei chip;
					2. Una volta avvenuta l'ibridazione, il vetrino viene sottoposto a scansione all'interno di un apposito strumento, dotato di due fasci di luce laser a lunghezza d'inda distinta, capace di eccitare i fluorocromi e rilevare la fluorescenza emessa in due canali separati;
					3. Alla fine di questa lettura, lo strumento fornirà due immagini del vetrino, una per ciascun fluorocromo;
					4. Queste due immagini, poi, vengono rielaborate dallo strumento mediante un apposito software. In particolare, questa ulteriore analisi comporta la misurazione del rapporto fra l'intensità dei due fluorofori (del campione in esame rispetto a quello di controllo) e, una volta misurato, restituisce un'unica immagine corrispondente esattamente al vetrino, in cui ad ogni spot corrisponderà uno spot dell'array. Ogni spot avrà uno pseudocolore, che darà idea del campione in analisi rispetto a quello di controllo.
					5. La valutazione, di tipo relativo, consente di capire in quale dei due campioni è più o meno espresso un certo gene. Poiché, per convenzione, il campione in analisi è marcato in rosso e quello di controllo in verde, qualunque spot avente una pseudocolorazione nelle gradazioni del rosso, sarà indicativo di maggiore espressione del gene rappresentato in quello spot nel campione in analisi rispetto a quello di controllo e, viceversa, qualunque spot avente una gradazione del verde sarà espressivo di una minore espressione di quel gene nel campione in analisi rispetto al controllo. Il colore giallo  indica un'uguale espressione del gene fra i due campioni. Questo consente una lettura immediata dei risultati.
						- ![Microarray, colore degli spot](https://i.imgur.com/vy5Z1d2.png)

## Analisi dei dati
 - **Analisi dei dati**:
		1. Il punto di partenza per l'analisi statistica è sempre rappresentato dalla *normalizzazione del dato*, perché bisogna ridurre al minimo la possibilità di variabilità di un dato, legata all'operatore o alle diverse condizioni sperimentali. Il primo step consiste, dunque, nel normalizzare i risultati rispetto ad un comune riferimento quantitativo, che può essere rappresentato da un gene costitutivamente espresso o un mRNA di riferimento non espresso nel campione in analisi;
		2. Come si fa ad estrapolare un significato biologico da questa mole di informazioni? Grazie all'utilizzo di programmi di *Data mining* specifici in continua evoluzione. Una volta normalizzati, i dati si analizzano in diversi livelli successivi:
			1. Livello di base, si calcola la *significatività statistica del risultato*, analisi condotta parallelamente per ogni singolo gene mediante test parametrici e non parametrici;
			2. Secondo livello, consente di *riunire i geni in cluster* di espressione, si ritrova sempre nei lavori pubblicati, in quanto consente una visualizzazione immediata. S'individuano geni caratterizzati da livelli di espressione simili (attviati o inibiti contemporaneamente), si utilizzano vari metodi:
				1. *Clustering gerarchico*, metodo più efficace, che consente la costituzione di un *dendrogramma* (una sorta di albero genealogico), in cui i geni con livelli di espressione simili vengono posti in raggruppamenti vicini. Ciò ne consente una lettura immediata, perché, tenuto conto delle convenzioni di colore, si possono individuare i geni ipo- (rossi) ed iperespressi (verde).
					1. ![Microarray, dendrogramma](https://i.imgur.com/9LIRUKu.png)
				2. K-means,
				3. Self-Organizing Maps (SOM),
				4. Principal-components analysis (PCA);
			3. Terzo livello, consente il passaggio alla genomica trascrizionale, ovvero l'*individuazione di tutte le interazioni funzionali* fra i vari geni, grazie alla disponibilità di una serie software specifici:
				1. NetAffx Analysis Center, correla i set di geni differenzialmente espressi con le informazioni disponibili in diverse banche dati;
				2. GenMapp, consente l'identificazione di pathways metabolici, di trasduzione, biosintetici.

## Applicazioni
- **Applicazioni**:
	- Gli array sono andati incontro a tutta una serie di evoluzioni, sia dal punto di vista tecnologico che applicativo. Le principali applicazioni in ricerca e clinica sono rappresentate dall'analisi in larga scala dei protidi di espressione genica, che consente di classificare le diverse patologie dal punto di vista molecolare, per l'identificazione e la caratterizzazione di marcatori diagnostici e per gli studi di farmacogenetica. Chiaramente una delle principali, forse la prima applicazione dei microarray è stata quella dell'analisi di variazioni di sequenza del DNA, sia che siano mutazioni, sia che siano polimorfismi.
		- I microarray, oggi, sono utilizzati per tutta una serie di indagini:
			- *CGH Array* (*Comparative Genomic Hybridization*), che consente d'individuare rapidamente la presenza di grosse delezioni o amplificazioni genica;
			- *ChIP on chip* (*Cromatine IMmunoprecipitation*), si immunoprecipitano i fattori trascrizionali e si testano, di modo da far individuare i siti di legame dei diversi fattori trascrizionali, per individuare una regolazione di geni di cui si può non essere ancora a conoscenza;
			- variazioni epigenetiche a carico del DNA;
			- Partendo dall'idea concettuale dei microarray, sono stati anche sviluppati *array di proteine* (evoluzione degl'immunodosaggi, perché su uno stesso chip si può depositare un numero infinitamente alto di anticorpi e valutare, per esempio, nel siero di un paziente quali di questi siano presenti o meno in risposta a trattamenti, o, viceversa, possono essere deposte le proteine per la loro identificazione), anticorpi e tessuti, a partire dai microarray.
		- Il largo impiego di questa tecnologia è proprio dovuto alla versatilità, la rapidità e la riproducibilità: l'operatore, in sostanza, non interviene. Hanno contribuito moltissimo alla ricerca traslazionale; dunque al trasferimento alla clinica delle informazioni ottenute nella ricerca di base. Questo in diversi ambiti della medicina:
			- In oncologia, hanno contribuito all'identificazione di casi molecolari;
			- In microbiologia, per rapida identificazione e nell'analisi delle resistenze antibiotiche;
			- In genetica ovviamente
				- Farmacogenetica, per valutare la tossicità di un farmaco oppure la resistenza genetica ad esso.
### Applicazioni in oncologia
- In oncologia, il grosso obiettivo degli array è stato di poter identificare dei marcatori che potessero dare indicazioni circa il decorso della malattia e la risposta del paziente ad una certa malattia oppure marcatori che possono rappresentare dei nuovi bersagli per terapie innovative o, comunque, per una migliore comprensione dei meccanismi alla base di sviluppo e progressione tumorale. Questo perché tumori aventi caratteristiche istopatologiche simili, in realtà, presentano un outcome diverso e diversa risposta alle terapie. Ciò suggerisce la presenza di sottotipi tumorali clinicamente significativi, cioè l'esistenza di classi molecolari che, pur condividendo la medesima origine, presentano differenze molecolari difficilmente individuabili con le tecniche attualmente disponibili (immunoistochimica o PCR basale). In questo caso, è chiaro che la possibilità di poter introdurre, nella routine cllinica, l'analisi dei profili dell'espressione genica (in oncologia l'applicazione più standardizzata dei microarray) consente sia una migliore stratificazione dei pazienti oncologici (migliore classificazione sulla base delle loro caratteristiche) che la definizione dei parametri di una malattia
- **Carcinoma mammario**:
	- Sono state identificate nuove classi tumorali molecolari, cioè è stata associata alla classica distinzione dei tumori mammari:
		- *ER+*, per loro si sceglie la terapia endocrina, quindi inibitori del recettore estrogenico. Si dividono in
			- Luminale A,
			- Luminale B,
			- Luminale C;
		- *ER-*, per i quali è necessaria la chemioterapia, che si dividono in
			- Basal-like, ovvero la forma più aggressiva di tumore mammario,
			- ERBB2+, overesprimenti (tumori in cui il gene trascrivente per HER2 è overespresso), 
			- Normal Breast-like.
		- ![Microarray, carcinoma mammario e classificazione](https://i.imgur.com/48wUakR.png)
	- La sopravvivenza è stata calcolata, per i diversi sottotipi, come probabilità di morte a 96 mesi. Gli ER+ hanno sicuramente maggior sopravvivenza, ma la prognosi è molto meno infausta per i Luminal A piuttosto che per i Luminal B. La tecnica dei microarray ha consentito di comprendere che anche negli ER+ la terapia endocrina potrebbe non essere sufficiente.
		- ![Microarray, carcinoma mammario e sopravvivenza](https://i.imgur.com/5O5PUIu.png)
	- Un ulteriore studio (di *Laura van't Veer*, anch'esso pubblicato su Nature) ha consentito d'identificare uno specifico profilo d'espressione genica, corrispondente all'attività di 70 geni, correlato all'aggressività della malattia. In particolare, lo studio è stato condotto su 78 tumori mammari primari in pazienti giovani (<55 anni) linfonodo-negativi (ancora privi di compromissione linfonodale). L'analisi contemporanea di questi 70 geni ha consentito d'identificare due gruppi di pazienti con tumore mammario:
		-  uno con un profilo prognostico favorevole, su cui è stato condotto un follow-up a 5 anni e si è visto che questo profilo d'espressione genica, nei 5 anni successivi all'inizio della terapia non sviluppava metastasi;
		- uno con prognosi infausta.
	- Questo studio è stato, poi, ulteriormente ampliato e condotto su un numero molto maggiore di pazienti (295), sempre giovani (<53 anni), indipendentemente dal coinvolgimento linfonodale e con follow-up fino a 10 anni successivi da diagnosi e inizio della terapia. Si è constatato che questo profilo di 70 geni consente una migliore stratificazione delle pazienti (individuazione con maggiore precisione delle pazienti a basso/alto rischio di sviluppare metastasi), con una forbice molto più ampia di quella che si ha quando vengono utilizzati i normali indicatori clinico-patologici di routine.
		- Vi è stata una serie di altri studi convalidanti e, successivamente, quest'indagine è stata commercializzata col nome di Mamma Print. Adesso è di routine in alcuni istituti, per pazienti con indicazioni particolari, ovvero con la storia di un tumore mammario.
			- Studi del genere sono stati condotti anche su altri tumori ed è stato, quindi, possibile vedere come nuovi classi diagnostiche possano essere individuate affiancando alle classiche tecniche di analisi istomorfologica anche le nuove tecniche genomiche.
			- La sfida attuale è quella di affiancare all'identificazione di marker prognostici (che indicano la necessità di una certa terapia specifica) la predittività, nell'ottica di una medicina personalizzata, sempre più di precisione.
---
# References
[[Tecniche di laboratorio - Lezioni]]
