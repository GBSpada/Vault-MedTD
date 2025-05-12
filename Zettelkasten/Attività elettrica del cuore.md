---
stato: ideaL
tags:
  - Fisiologia
sistema/apparato:
  - CardioCircolatorio
---

\11-04-2025 \19:13

--- 
## [[Sistema di conduzione cardiaco]]
## Potenziale d'azione cardiaco
![Rappresentazione schematica del cuore e della normale attività elettrica cardiaca (registrazioni intracellulari delle aree indicate da ECG).](https://i.imgur.com/TGZZIfn.jpeg)

### Basi ioniche dell'attività elettrica di membrana

- Il ==potenziale di membrana delle cellula cardiaca== è determinato da *concentrazioni di diversi ioni[^3] sui due lati della membrana* e dalla *permeabilità stessa a ciascuno ione*
	- gli ioni, essendo idrosolubili, non sono in grado di diffondere liberamente attraverso le membrane cellulari, seguendo i gradienti di concentrazione ed elettrico
	- vi è la necessità di ==canali acquosi==
	- il movimento ionico genera le correnti che costituiscono la base del potenziale d'azione cardiaco
- I singoli canali sono relativamente specifici per uno ione e il **flusso** è **controllato** **da "cancelli"**
	- ogni tipo di canale ha il suo cancello
	- i canali Na$+$, Ca$^{2+}$ e K$^+$ sono aperti e chiusi dalle variazioni del voltaggio (*sensibili al voltaggio*)
	- la maggior parte dei canali è anche regolata da condizioni ioniche e metaboliche
		- alcuni del K$^+$ sono principalmente controllati da ligandi
- In aggiunta ai canali ionici, ==la cellula dev'essere provvista di meccanismi adeguati a mantenere stabili le condizioni ioniche tra le due parti della membrana==
	- pompa del sodio Na$^+$/K$^+$-ATPasi
		- più importante dei meccanismi attivi
		- come altre pompe, mantenendo i gradienti necessari per la diffusione attraverso canali, *contribuisce indirettamente al mantenimento del potenziale di membrana*
	- alcune pompe e scambiatori producono un *flusso ionico netto*, per cui sono detti "elettrogeni"

#### Controllo del voltaggio
##### Legge di Ohm
- Quando la membrana delle cellule cardiache diventa permeabile ad uno specifico ione[^4], il movimento di esso attraverso la membrana è dato da $$Corrente = \frac{Voltaggio}{Resistenza}\text{ V  } Corrente = \text{Voltaggio x Conduttanza}$$
	- *conduttanza*: determinata dalle proprietà della proteina costitutiva di ciascun canale ionico
	- *voltaggio*: differenza fra potenziale di membrana effettivo e potenziale di inversione per quello ione[^5]
###### Per il sodio
- In una cellula cardiaca a riposo, tende ad essere riportato all'interno delle cellule per
	- marcato gradiente di concentrazione:
		- 140 mmol/L Na$^+$ all'esterno
		- 10-15 mmol/L Na$^+$ all'interno
	- gradiente elettrico:
		- 0 mV all'esterno
		- -90 mV all'interno
- Differenze di flusso:
	- a riposo i suoi canali sono chiusi → **no flusso**
	- apertura → abbondante flusso verso l'interno → **fase 0 di depolarizzazione**
###### Per il potassio
- Il ==gradiente diretto verso l'interno== è in ==equilibrio== con ==quello diretto all'esterno==
	- gradiente di concentrazione (140 mmol/L; 4 mmol/L all'esterno) → spinta all'esterno
	- gradiente elettrico → spinta all'interno
- Alcuni canali per il potassio (detti canali "*rettificanti in entrata*") sono aperti nella cellula a riposo, ma il flusso di corrente attraverso di essi è basso per via dell'equilibrio
##### Equazione di Nernst
- L'equilibrio (o **potenziale di inversione**) per gli ioni è dato da $$E_{ion} = 61 \text{ x } log(C_e/C_i)$$
	- $C_e$ e $C_i$ sono, rispettivamente, le concentrazioni extracellulari ed intracellulari moltiplicate per i loro coefficienti di attività
###### Nella cellula a riposo
- Da notare che l'aumento del potassio extracellulare rende l'E$_k$ meno negativo
	- quando questo si verifica, la membrana si depolarizza finché non viene raggiunto il nuovo E$_k$
- Principali fattori che determinano il potenziale di membrana:
	- ==concentrazione extracellulare di potassio==
	- ==attività dei canali rettificanti in entrata==
###### Nella maggior parte delle cellule non pacemaker
- Ci si avvicina alle condizioni di applicazione dell'equazione di Nernst in corrispondenza di
	- *picco dei valori positivi* per il potenziale di membrana (concentrazioni di $Na^+$)
	- *fase di riposo* (concentrazioni di $K^+$)
##### Equazione di Goldman-Hodgkin-Katz
- Se la permeabilità è significativa sia per $Na^+$ che per $K^+$, l'equazione di Nernst non è adatta per predire correttamente il potenziale di membrana; dunque $$E_{mem} = 61\text{ }*\text{ }log\frac{P_K\text{ }*\text{ }K_e\text{ + }P_{Na}\text{ }*\text{ }Na_e}{P_K\text{ }*\text{ }K_i\text{ + }P_{Na}\text{ }*\text{ }Na_i}$$

#### Per dopo

| Caratteristica                         | Canali permeabili al sodio: $Na_v1.5$                               | Canali permeabili al calcio: $Ca_{L},\,Ca_{T}$                     | Canali voltaggio-dipendenti permeabili al potassio                   | Canali permeabili al Potassio Rettificanti Verso l'Interno            |
|----------------------------------------|---------------------------------------------------------------------|---------------------------------------------------------------------|---------------------------------------------------------------------|---------------------------------------------------------------------|
| **Sottotipi**                          | $Na_v1.5$ (codificato da *SCN5A*)                                  | **Tipo L**: $Ca_v1.2$ (ventricolari), $Ca_v1.3$ (atriali) <br> **Tipo T**: $Ca_v3.1$, $Ca_v3.2$ | $K_v1.4$, $K_v4.2$, $K_v4.3$, $K_v11.1$, $K_v7.1$                  | $K_{ir}2.1$, $K_{ir}6.1$                                           |
| **Distribuzione**                      | Espresso nei cardiomiociti e nelle fibre veloci del sistema di conduzione; non nelle cellule pacemaker | $Ca_v1.2$ espresso nei cardiomiociti ventricolari; $Ca_v1.3$ presente anche negli atriali | Molti canali $K_v$ espressi nel cuore, distribuzione variabile      | Canali *inward rectifier* presenti in tutte le cellule cardiache   |
| **Ruolo**                              | Responsabile dell'*upstroke*; velocità della conduzione del segnale | Attiva la contrazione cardiaca; determina durata della fase di *plateau* | Controllo della fase di ripolarizzazione e durata del potenziale d'azione | Mantenimento del potenziale di riposo a valori negativi               |
| **Attivazione**                        | Si attiva a -55/-60 mV; cinetica di attivazione seguita da inattivazione rapida | Tipo L attivato a -40 mV; Tipo T attivato a potenziali più negativi | Attivati in depolarizzazione; conduzione di corrente uscente        | Flusso di potassio entrante più facilmente che uscente               |
| **Funzione**                           | Effetto depolarizzante; trasporta corrente entrante aumentando permeabilità al Na$^+$ | Corrente entrante di Ca$^{2+}$ con azione depolarizzante; essenziale per la contrazione | Corrente uscente di K$^+$; azione ripolarizzante e regolazione della durata del potenziale d'azione | Mantenimento del potenziale di riposo e stabilità; rettificazione del flusso di potassio |
| **Stati di attivazione**              | Tre stati funzionali: aperto, inattivato, chiuso; alterazioni conformazionali | Tipo L e T presentano inattivazione voltaggio-dipendente e Ca$^{2+}$-dipendente | Diverse cinetiche di attivazione; caratterizzate da tempistiche variabili | Effetto di rettificazione mediato dal blocco del canale da parte di ioni magnesio |
| **Farmacologia**                       | Farmaci bloccanti i canali del Na$^+$ (classe I) come lidocaina e flecainide | Farmaci calcio-antagonisti come verapamil e diltiazem              | Farmaci che prolungano il periodo refrattario (classe III) come sotalolo e dofetilide | Farmaci che influenzano la funzione dei canali $K_{ir}$, come le sulfoniluree |
| **Cinetica**                           | Cinetica rapida; apertura seguita da chiusura in tempi brevi        | Cinetica più lenta rispetto ai canali del sodio; apertura e inattivazione più prolungate | Cinetiche variabili; alcuni canali hanno attivazione rapida, altri più lenta | Cinetica di rettificazione; flusso di potassio più facile in ingresso che in uscita |


### Correnti entranti attivate **in depolarizzazione**

>[!info] Dominanza del nodo SA
![](https://i.imgur.com/o6aDOKT.png) 
>- Le cellule dotate delle proprietà del tessuto nodale SA e AV sono connesse elettricamente al resto del miocardio mediante cellule con un fenotipo elettrofisiologico intermedio fra quello delle cellule nodali e quello dei miociti atriali o ventricolari.
>	- Le cellule del nodo SA mostrano una depolarizzazione di fase 4 più rapida e costituiscono quindi, in condizioni normali, il pacemaker cardiaco predominante.
>![](https://i.imgur.com/V4NkiWV.png)
>- La soppressione di una cellula pacemaker da parte di un ritmo più veloce porta ad aumento del carico intracellulari di Na+ (INa-L), e l'estrusione di Na+ dalla cellula da parte della Na+/K+-ATPasi provoca un aumento della corrente ripolarizzante di background che rallenta la depolarizzazione diastolica di fase 4 
>- Alterazioni a carico del nodo seno atriale inducono i cosiddetti [[Aritmie#Ritmi di scappamento]]


#### Canali permeabili al sodio: $Na_v1.5$
##### Distribuzione
- Codificato dal *gene SCN5A*
- **Espresso**
	- Nei cardiomiociti del miocardio di lavoro 
	- Nelle fibre veloci del sistema di conduzione 
- **Non espresso** in maniera significativa ==nelle cellule pacemaker==
##### Ruolo in generale
- Principale responsabile dell'*upstroke*[^2]
	- Garantisce la velocità della conduzione del segnale nella [[#Fibre di purkinje e fasci ventricolari|parte ventricolare del tessuto di conduzione]]
- Si attiva in depolarizzazione e trasporta una corrente entrante, determinando quindi un effetto depolarizzante

##### Funzionamento e struttura
![Rappresentazione schematica dei passaggi del canale del Na$^+$ attraverso i diversi stati conformazionali durante il potenziale d'azione cardiaco.](https://i.imgur.com/JffcsXn.png)

###### In sintesi
- Si attiva ai potenziali di soglia intorno a -55/-60 mV e ha una ==cinetica di attivazione seguita da inattivazione==, proprietà compatibili con la principale funzione di generare la fase di depolarizzazione veloce che permette l'insorgenza del PdA per poi spegnersi subito

###### Stati di attivazione
- La cinetica peculiare è determinata da ==alterazioni conformazionali== che ne determinano **tre stati funzionali**
	- Si stanno attualmente identificando le regioni della proteina che conferiscono specifiche proprietà al canale (sensibilità al voltaggio, capacità di formare il poro, inattivazione del canale)

1. La depolarizzazione fino al raggiungimento del voltaggio soglia causa l'**apertura dei cancelli di attivazione** (*m*) dei canali del Na$^+$
	- se i cancelli di inattivazione (*h*) non sono stati ancora chiusi, i canali sono aperti o inattivati e ne consegue un considerevole aumento della permeabilità al Na$^+$
2. Il ==sodio extracellulare diffonde verso l'interno della cellula== secondo il suo gradiente elettrochimico e ==il potenziale di membrana si avvicina rapidamente al potenziale di equilibrio per il sodio==
	- (E$_{Na}$ = ca. +70 mV quando Na$_c$ = 140 mmol/L e Na$_i$ = 10 mmol/L)
3. Quest'intensità di corrente è di durata molto breve: l'apertura dei cancelli *m* in risposta alla depolarizzazione è seguita prontamente dalla **chiusura dei cancelli** *h* e inattivata dai canali del Na$^+$

##### Farmacologia: [[Farmaci impiegati nelle aritmie cardiache#Farmaci bloccanti i canali del $Na +$ (classe I)]]


#### Canali permeabili al calcio: $Ca_{L},\,Ca_{T}$

- Il flusso di $Ca^{2+}$ attraverso la membrana dei cardiomiociti è il ==meccanismo fondamentale che attiva il fenomeno della== **contrazione**.
- I canali per il calcio **maggiormente espressi nel cuore** sono ==di tipo L== e appartengono alla famiglia $Ca_v1$.
##### Canali per il calcio di tipo L (long-lasting)
- L'**isoforma cardiaca** più rappresentata e quindi maggiormente coinvolta nell'accoppiamento eccitazione-contrazione nel cuore è $Ca_v1.2$, codificata dal gene *CACNA1c*.
	- I cardiomiociti ventricolari esprimono solo $Ca_v1.2$.
	- I cardiomiociti atriali del NSA e del NAV esprimono sia $Ca_v1.2$ che $Ca_v1.3$
- La **struttura molecolare delle subunità $\alpha$** dei canali per il calcio è ==simile a quella dei canali per il sodio==
- Anche i canali per il calcio trasportano una **corrente entrante** e hanno **quindi** un'==azione depolarizzante==
###### Cinetica di attivazione a **confronto** con il sodio
- Come i canali per il sodio, sono attivati in depolarizzazione e hanno una cinetica di attivazione seguita da inattivazione.
	- Tuttavia, le **cinetiche** di attivazione e inattivazione sono ==più lente== e la **densità di corrente** è più ==ridotta==
	- La soglia di attivazione è intorno a -40 mV
###### **Funzione** 
- La **funzione principale** del canale per il calcio di tipo L è ==determinare==, insieme a specifici canali per il potassio, ==la durata della fase di *plateau*== durante la quale gli ioni calcio che entrano in cellula causano la contrazione
	- La ==fine regolazione== della durata della fase di *plateau* è quindi essenziale per un controllo accurato della contrazione stessa
##### Canali di tipo T (*transient*)
- Un altro tipo di canale per il calcio, detto **di tipo T ($Ca_v3$),** è espresso insieme ai canali di tipo L ==in cardiomiociti di NSA e NAV== (in particolare le isoforme $Ca_v3.1$ e $Ca_v3.2$).
- **Trasportano**, una ==corrente più piccola== 
###### Funzione
- Sono **attivati** a ==potenziali più negativi== (Low-Voltage Activated, LVA) ==rispetto ai canali di tipo L== (High-Voltage Activated, HVA)
	- Per cui la loro **funzione** appare ==più importante nella fase 0== del PdA in queste cellule piuttosto che nella determinazione della durata del PdA.
- Come si è visto, la corrente di $Na^{+}$ non è espressa **nelle cellule** *pacemaker* di NSA e NAV, per cui si può assumere che i canali di tipo T possano almeno parzialmente ==sostituire funzionalmente la corrente di== $Na^{+}$ in questi tessuti.
	- A **conferma di ciò**, come menzionato più avanti, mentre i canali L sono fortemente modulati dal sistema nervoso autonomo, che in tal modo regola lo stato inotropico del cuore, ==i canali T sono totalmente insensibili al controllo autonomico==.
###### Regolazione a feedback del calcio
- Un'altra importante **differenza funzionale tra i canali L e T** è il meccanismo denominato *inattivazione del $Ca^{2+}$ indotta da $Ca^{2+}$(CICI).* 
- Grazie all'**azione della calmodulina** legata al terminale carbossilico intracellulare, dopo la loro apertura ==i canali L subiscono una forte inattivazione== dovuta all'ingresso stesso degli ioni calcio, che si legano alla calmodulina provocando modificazioni strutturali che chiudono il canale.
	- Oltre all'inattivazione voltaggio-dipendente, c'è quindi anche un'inattivazione $Ca^{2+}$-dipendente. 
	- Questo **meccanismo, assente nei canali T**, è importante in quanto ==rappresenta un autocontrollo della quantità di ioni calcio== che entrano nella cellula.

##### Farmacologia: [[Zettelkasten/Farmaci bloccanti i canali del calcio (calcio-antagonisti)]]

### **Correnti uscenti**
#### Canali voltaggio-dipendenti permeabili al potassio attivati in depolarizzazione

- **Nel cuore** sono espressi ==molti canali voltaggio-dipendenti selettivi al potassio== ($K_v$) e appartenenti a diverse famiglie. 

##### Attivazione e Funzione

- Come i canali per il sodio e il calcio, sono **attivati in depolarizzazione, ma**, essendo permeabili agli ioni potassio ($K^+$), fanno passare una ==corrente uscente== e hanno ==quindi azione ripolarizzante==.
- La **funzione più significativa** dei canali $K_v$ è il ==controllo della fase di ripolarizzazione== e della ==durata complessiva del PdA==
- Le **caratteristiche cinetiche** dei vari tipi di canale ==determinano la tempistica del loro intervento== nel processo di ripolarizzazione.

##### Corrente *transitoria in uscita* del *Notch*

- Per esempio, i **canali $K_v4.2$/$K_v4.3$ e $K_v1.4$** hanno ==cinetiche relativamente rapide== e nei cardiomiociti ventricolari ==determinano la fase detta *notch*== del PdA.
- La **corrente trasportata** da questi canali è denominata $I_{Kto}$ (*transient outward*) ed è caratterizzata da una ==veloce attivazione e inattivazione== immediatamente ==successive alla fase 0 del PdA==. 
	- La **funzione** di questa fase è ==portare rapidamente il potenziale di membrana a un livello adeguato== per uno sviluppo ottimale della fase successiva.
- La corrente $I_{Kto}$ ==non è presente nelle fibre lente== (NSA e NAV).

##### Correnti e canali di *plateau e ripolarizzazione*

- **Tre correnti** di $K^+$ con diverse cinetiche si succedono poi ==durante e dopo la fase di plateau== per controllare la ripolarizzazione e sono sostenute da **specifiche subunità**:
###### Corrente ultra rapida di potassio
- $I_{Kur}$ è sostenuta da $K_{v}1.5$
	- Una subunità $\alpha$ codificata dal *gene KCNA5* 
	- **Espressa** essenzialmente solo in ==cardiomiociti atriali==
	- Responsabile della ==rapida ripolarizzazione== e della ==minore durata del PdA atriale== rispetto a quello ventricolare.
	- Questa componente è ==responsabile della forma "triangolare" del PdA atriale==.
###### Corrente rapida di potassio [^6]
- $I_{Kr}$ è sostenuta da $Kv11.1$, un'isoforma codificata dal gene hERG (o KNCH2).
###### Corrente lenta di potassio
- $I_{Ks}$ è sostenuta da $K_{v}7.1$, anche chiamata $K_vLQT1$, isoforma codificata dal gene KCNQ1.
##### Farmacologia: [[Farmaci impiegati nelle aritmie cardiache#Farmaci che prolungano il periodo refrattario effettivo prolungando il potenziale d'azione (classe 3)]]
>[!warning] Nota bene:
>- Data la distribuzione eterogenea dei canali per il potassio si può agire in maniera specifica sulla ripolarizzazione scegliendo tra il nodo SA e le fibre ventricolari

#### Canali permeabili al Potassio Rettificanti Verso l'Interno

- Un'altra **famiglia di canali** per il potassio, ==evoluzionisticamente più antica== dei canali $K_v$ è quella dei canali ==noti come== *inward rectifier* ($K_{ir}$) per la loro proprietà di passare corrente di $K^+$ nella direzione entrante più facilmente che nella direzione uscente
- **Anche in assenza di sensori del voltaggio**, la il ==flusso== di potassio risulta ==fortemente dipendente== da esso ==a potenziali più positivi== [^10]

> [!NOTE]- Ripolarizzazione e Terminazione del PdA
> - La ripolarizzazione e la terminazione del PdA avvengono attraverso l'attivazione di canali voltaggio-dipendenti $K_V$,
> 	- Evoluzionisticamente più sofisticati dei canali $K_{ir}$
> - Questi permettono una fine regolazione della giusta quantità di corrente uscente necessaria per l'appropriata forma e durata del PdA.


##### Effetto di Rettificazione
- Il **meccanismo** secondo cui estrinseca la sua funzione è detto di *rettificazione* 
- L'**effetto** è **mediato** essenzialmente dal ==blocco del canale== da parte dello ==ione magnesio==
	- **In condizioni di riposo** 
		- Il magnesio si lega al canale ostacolando il passaggio del potassio
	- **A potenziali di membrana più positivi**
		- Questo ==legame è inibito== (ione positivo respinto da struttura positiva) e ==lo ione libera il canale==
		- A questo punto il potassio, che si trova ad altre concentrazioni nella matrice extracellulare per l'azione della [[#Corrente *transitoria in uscita* del *Notch*]], attraverserà il canale nella direzione determinata dal suo gradiente elettrochimico -> ==verso l'interno==
- Durante l'upstroke si raggiungono rapidamente valori positivi e altrettanto rapidamente la proprietà di rettificazione blocca la fuoriuscita di $K^+$.
###### Funzione

- Il PdA cardiaco è caratterizzato da una lunga durata necessaria per permettere l'ingresso di una quantità di $Ca^{2+}$ capace di attivare il meccanismo di accoppiamento eccitazione-contrazione.
	- **In mancanza di rettificazione**, la ==cellula== ==dovrebbe recuperare== con un costoso trasporto attivo Na/K ==gli ioni potassio espulsi==.
	
>[!warning] Nota bene
> Questo canale è essenzialmente un'eccezione, in condizioni fisiologiche i canali del potassio possono funzionare soltanto trasportando corrente uscente.

##### $K_{ir}$ a potenziali più bassi

- In condizioni di negatività di membrana il **ruolo** di questi canali è quello di ==mantenere il potenziale di riposo del cardiomiocito a valori negativi== (circa -80mV) *relativamente vicini* ==al potenziale di equilibrio del== $K^+$
	- Il blocco da parte del magnesio garantisce al canale $K_{ir}$ di far uscire solo una minima parte di potassio portando a questa stabilità e impedendo al potenziale di salire troppo
	
##### Correnti K Trasportate dai Canali $K_{ir}$

- Questi canali trasportano diverse correnti K, tra cui le più importanti sono:

###### Corrente $I_{K1}$
- Associata all'isoforma $K_{ir}2.1$
- Una delle prime correnti individuate e caratterizzate nel cuore
- La sua **funzione** è ==mantenere il potenziale di riposo a valori negativi== prossimi al potenziale di equilibrio del potassio.
	- ==Non== è ==presente== **nelle cellule pacemaker** in quanto questi esprimono la corrente funny e non hanno un potenziale di riposo statico [^9].
- - Un suo innalzamento più significativo, tuttavia, rende il cuore non eccitabile depolarizzando il potenziale di membrana.
###### Corrente $I_{KATP}$
- Associata all'isoforma $K_{ir}6.1$
- Corrente studiata con particolare attenzione perché ha importanti **implicazioni** ==nella cardiopatia ischemica==
- I canali $K_{ATP}$ sono **costituiti da**:
	- ==Quattro subunità== $\alpha$ $K_{ir}6.1$.
	- ==Quattro subunità== di *recettori di sulfoniluree (SUR)* 
		- Fungono da subunità regolative.
- I canali sono **bloccati da adenosina trifosfato** che si lega alle subunità $K_{ir}$.
	- Sono normalmente chiusi alle concentrazioni fisiologiche di ATP.
	- L'==attivazione== è ==mediata da $Mg^{2+}-ADP$ che si lega alle subunità SUR==.
- **In condizioni di ipossia**
	- Il ==rapporto ATP/ADP diminuisce== 
	- I canali si aprono provocando
		- Iperpolarizzazione della membrana 
		- Accorciamento del PdA.
- Cardiomiociti che hanno subito deplezione di ATP in seguito a insulto ischemico diminuiscono quindi il consumo energetico, riducendo il rischio di insulti più severi.
###### Corrente $I_{KACh}$ (vedi [[#Modulazione nervosa]])
- Anche questa una delle prime correnti investigate.
- Ha **due caratteristiche particolarmente interessanti**:
	- ==Attivata dall'acetilcolina==.
	- L'apertura del canale è mediata dall'==attivazione diretta da parte di una proteina G senza l'intervento di un secondo messaggero citoplasmatico==
		- Questo è stato uno dei primi casi documentati di questo fenomeno.
- Poco **espresso** nei ventricoli, ma ==molto negli atri==
	- ==Più soggetti== quindi alla ==modulazione vagale==.


### Corrente entrante attivata in iperpolarizzazione: **potenziale pacemaker**

- Alla base della ritmicità delle cellule del sistema di conduzione c'è una graduale corrente di depolarizzazione detta *corrente pacemaker* o *corrente funny* $I_{f}$
	- Questa è espressa soltanto nelle cellule in grado di battere spontaneamente nel sistema di conduzione del cuore

#### Caratteristiche
>Corrente mista di $Na^+$ e $K^+$ entrante (depolarizzante) ai potenziali diastolici

- Si tratta di una corrente inusuale in quanto mista e attivata in iperpolarizzazione
- Le strutture implicate sono i **canali HCN**[^11]  di cui conosciamo quattro isoforme
	- Nel cuore la più espressa è la HCN4
#### [[#Effetti del potassio]]

### Panoramica sulle **Fasi**

![Rappresentazione schematica delle modifiche di permeabilità ionica e dei processi di trasporto che si verificano durante un potenziale d'azione ed il periodo diastolico che lo segue.](https://i.imgur.com/7eDXlqH.png)

- Le **diverse forme d'onda** dei PdA **nelle varie regioni** del cuore sono **determinate**
	- Dall'==eterogeneità della distribuzione== nei tessuti ==del complesso di canali ionici== attivi  
	- Dalle ==proprietà ioniche, cinetiche e di modulazione== dei suddetti canali
- Per facilitare il contributo funzionale delle varie correnti all'attività elettrica il PdA di ogni tipo cellulare può essere suddiviso in diverse fasi
#### Fase 0: depolarizzazione veloce o *upstroke*
- Nelle cellule normali dell'atrio, del sistema del Purkinje e del ventricolo la fase ascendente del potenziale d'azione dipende dalla corrente del Na$^+$
- Vedi [[#Correnti entranti attivate in depolarizzazione]]
#### Fase 1: ripolarizzazione precoce o *notch*
- Vedi [[#Correnti e canali del *Notch*]]
#### Fase 2: *plateau*
- Si ha un *plateau* riflettente
	- L'arresto della maggior parte della [[#Canali permeabili al sodio $Na_v1.5$|corrente del sodio]]
	- l'attivazione e il [[#Regolazione a feedback del calcio|declino della corrente del calcio]]
	- il lento sviluppo di una corrente [[#Corrente lenta di potassio|ripolarizzante del potassio]]
#### Fase 3: ripolarizzazione
- Durante la **ripolarizzazione**, il potenziale d'azione si avvicina sempre di più a quello di equilibrio del potassio mediante
	- aumento della permeabilità al K$^+$
	- inattivazione dei canali del Na$^+$ e del Ca$^{2+}$
- Vedi [[#Correnti e canali di *plateau e ripolarizzazione*]] 
- Altre correnti di supporto sono date dai [[#Canali permeabili al Potassio Rettificanti Verso l'Interno]]
#### Fase 4: depolarizzazione lenta o *depolarizzazione diastolica (DD)*
- Vedi [[#Corrente entrante attivata in iperpolarizzazione: potenziale pacemaker]]
### Effetti del potenziale di riposo sul potenziale d'azione
- I *cancelli h* dei canali del Na$^+$ in una membrana riposo ==si chiudono a valori di potenziale compresi tra -75 e -55 mV==
	- un minor numero di canali è "disponibile" per la diffusione di ioni Na$^+$ quando il potenziale d'azione si genera da un potenziale di riposo di -60 mV piuttosto che quando ha origine da un potenziale di riposo di -80 mV
	- durante il *plateau*, la maggior parte dei canali del Na$^+$ è in stato inattivo
		- ripolarizzazione → recupero dello stato attivo → canali nuovamente disponibili all'eccitaz.
- ![Dipendenza della funzione di canali per il Na$^+$ dal potenziale di membrana che precede lo stimolo.](https://i.imgur.com/tugFMkP.png)
#### Conseguenze della riduzione del picco della permeabilità al Na$^+$
1. Ridotta velocità di ascesa del potenziale (V$_{max}$ = velocità con cui varia il voltaggio della membrana)
2. Ridotta ampiezza del potenziale d'azione
3. Ridotta eccitabilità e ridotta velocità di conduzione
#### Refrattarietà

- Uno **stimolo sovraliminale** applicato ad un cardiomiocito ==determina== i suoi effetti in funzione dello stato in cui trova la cellula
	- **In stato di riposo**
		- Si genererà ==sicuramente un potenziale d'azione==
	- **Durante il potenziale d'azione** 
		- Non accadrà ==niente==
	- **Durante la fase terminale del potenziale d'azione** 
		- ==Può essere generato un potenziale d'azione==
- Modifiche nella refrattarietà[^8]
	- Possono essere importanti nella genesi o nella soppressione di alcune aritmie
	- Implicano un prolungamento del tempo di recupero


##### Periodi refrattari
>**Periodo refrattario**: tempo intercorrente fra fase 0 e un ripristino dei canali per il Na$^+$ in fase 3 sufficiente a consentire il propagarsi di una risposta ad uno stimolo esterno.

- In funzione della stimolabilità della cellula possiamo descrivere 
###### Un *periodo refrattario assoluto* 
- In cui nessuno stimolo è in grado di causare un PdA
###### Un *periodo refrattario relativo*
- In cui stimoli sopra soglia sono in grado di indurre PdA 
- I valori positivi di membrana così ottenuti possono propagarsi anche se con velocità ridotta

##### Cause
###### Stimolo depolarizzante breve e improvviso
>Sia esso causato dalla propagazione di un potenziale d'azione o da elettrodi esterni
- Provoca l'==apertura== di un numero di ==cancelli di attivazione== ==prima== che si possa ==chiudere== un numero significativo di ==cancelli di inattivazione==
###### Lenta riduzione (depolarizzazione) del potenziale di riposo
>Sia essa dovuta ad [[Iperkaliemia#Aritmie|iperkaliemia]], blocco della pompa del Na$^+$ o danno ischemico delle cellule
- Porta ad una ==diminuzione delle correnti del Na$^+$ durante l'ascesa== del potenziale d'azione
#### Risposte "lente"
>Depolarizzazione a -55 mV = abolizione delle correnti del Na$^+$
- Si è visto che cellule a -55 mV possono generare ==particolari potenziali d'azione== in circostanze in cui è *aumentata la permeabilità al calcio* o *diminuita la permeabilità al potassio*
- Si dicono tali per la ==bassa velocità di ascesa== e la ==lenta conduzione==
- Dipendono dalla corrente del Ca$^{2+}$ in entrata e costituiscono la normale attività elettrica nei nodi SA e AV
	- questi tessuti hanno valori di potenziale di riposo normalmente compresi tra -50 e -70 mV
#### Effetti del potassio
- L'effetto sulla ==permeabilità al potassio== è più importante in una cellula *pacemaker*
	- aumento del $K^+$ extracellulare → rallentamento o arresto dell'attività pacemaker
	- ipopotassiemia → insorgenza di *pacemaker ectopici*
- Gli effetti di ==modifiche del potassio sierico== possono sembrare ==paradossali== se ci si basa esclusivamente su una considerazione delle modifiche nel *gradiente elettrochimico* del potassio
- A livello cardiaco, tuttavia, ==modificano ulteriormente la conduttanza==
	- indipendentemente da semplici modifiche della forza elettrochimica vettrice
	- es. ↑↑ $K^+_{extracellulare}$ → ↑↑ conduttanza al $K^+$
>[!warning]
> La frequenza del pacemaker e aritmie coinvolgenti cellule pacemaker ectopiche sembrano più sensibili a modifiche delle concentrazioni di potassio sierico rispetto a cellule del nodo SA.
>- Ciò, probabilmente, contribuisce all'aumentata sensibilità agli agenti antiaritmici bloccanti i canali del $K^+$ (==chinidina== e ==sotalolo==) durante l'ipopotassiemia (es. prolungamento accentuato del potenziale d'azione e tendenza a causare torsioni di punta).
##### Iperpotassiemia
>Vedi [[iperkaliemia#ECG|ECG nell'iperkaliemia]]
1. Riduzione della durata del potenziale d'azione
2. diminuzione della frequenza del pacemaker
3. diminuita aritmogenesi da pacemaker
##### Ipopotassiemia
>Vedi [[Ipokaliemia#A livello dell'ECG|ECG nell'ipokaliemia]]

1. Prolungamento della durata del potenziale d'azione
2. Aumentata frequenza del pacemaker
3. Aumentata aritmogenesi da pacemaker

### Modulazione nervosa
![](https://i.imgur.com/ZRKSzgr.png)

- Le correnti cardiache sono regolate dal sistema nervoso autonomo (SNA), che modula l'attività cardiaca attraverso afferenze autonomiche
	- **Adrenergiche**
		- Mediate da strutture come il ==ganglio stellato== e altri ==gangli della catena paravertebrale== nella regione toracica.
	- **Colinergiche**
		- Da ==afferenze vagali==
 
#### Modulazione del Cronotropismo

- La modulazione della **frequenza cardiaca**, o *cronotropismo*, avviene attraverso la modulazione parasimpatica o ortosimpatica delle correnti implicate nella [[#Fase 4 depolarizzazione lenta o *depolarizzazione diastolica (DD)*]]

##### Sistema catecolaminergico
 Incrementa la pendenza della depolarizzazione diastolica (DD) e, di conseguenza, la frequenza dell'attività spontanea del cuore
- In generale: 
	- [[Farmaci che attivano i recettori adrenergici ed altri simpaticomimetici#Recettori $ beta$|Interazione della noradrenalina (NA) con il recettore adrenergico β]]
	- [[Farmaci che attivano i recettori adrenergici ed altri simpaticomimetici#Effetti dell'attivazione dei recettori $ beta$-adrenergici]]
- L'aumentata attività del sistema nervoso simpatico è in grado di **incrementare notevolmente** la frequenza di attivazione delle ==cellule del nodo SA==, provocando tachicardia sinusale fino a oltre 200 battiti/min. 
	- Al contrario, l'aumentata frequenza di attivazione delle cellule di Purkinje ha maggiori limiti, inducendo raramente tachiaritmie ventricolari superiori a 120 battiti/min.

###### Azione sulla corrente $I_f$
- La noradrenalina attiva l'adenilato ciclasi
- Il cAMP si lega direttamente ai canali funny 
- Il pathway porta all'incremento della frazione di canali aperti quando al curva di attivazione si trasla verso destra
###### Azione sui canali $C_L$
- Il cAMP attiva la PKA 
- La PKA attiva i canali per il calcio di tipo long lasting 
- QUesto aumenta la pendenza della parte più tardiva della fase della DD

###### Azione sulle correnti $K_s$
- Aumento

##### Sistema colinergico
- [[Stimolanti dei recettori colinergici e farmaci inibitori delle colinesterasi#Sistema cardiovascolare|Interazione dell'acetilcolina con i recettori M2]]
- Il **tono vagale** è ==predominante nelle condizioni di riposo== e svolge un ruolo cruciale nella regolazione della frequenza cardiaca, riducendola da un valore di circa 100-120 battiti per minuto (bpm) a circa 70 bpm. 
	- Questa **riduzione** è il risultato di una ==inibizione== costitutiva mediata ==dalla corrente $I_f$== ([[Stimolanti dei recettori colinergici e farmaci inibitori delle colinesterasi#Azioni cardiache dirette|vedi]])
		- Stesso meccanismo di quella adrenergica ma al contrario
	- La **corrente $I_{K_{Ach}}$** entra in gioco solo in seguito a forti stimoli vagali, contribuendo a un'ulteriore diminuzione della frequenza cardiaca e inibendo l'attività atriale ([[Stimolanti dei recettori colinergici e farmaci inibitori delle colinesterasi#^548bba|vedi]])
		- L'aumento della conduttanza del K+ si oppone alla depolarizzazione della membrana, rallentando la velocità di crescita della fase 4 del potenziale d'azione.

#### Modulazione dell'Inotropismo 

- L'*inotropismo*, ossia la forza di contrazione del cuore, è ==anch'esso modulato dal SNA==. 
- In particolare, l'==attivazione adrenergica β== e l'==inibizione colinergica della corrente If== giocano un ruolo fondamentale in questo processo. 
	- L'azione del cAMP è mediata da meccanismi di fosforilazione dipendenti dalla PKA e **coinvolge** la corrente di calcio di tipo L ([[#Canali per il calcio di tipo L (long-lasting)|ICaL]]), che è responsabile della durata della fase di [[#Fase 2 *plateau*|plateau]] del potenziale d'azione e ha un effetto diretto sulla forza di contrazione. 

##### Noradrenalina
- La stimolazione dei recettori β porta a una ==fosforilazione della subunità α dei canali del calcio L==, aumentando così la corrente Ca2+ 
##### Acetilcolina
- In contrasto, l'azione parasimpatica, che agisce tramite i recettori M2, ==si oppone a quella adrenergica==.

>[!warning] Controllo intrinseco delle aritmie
> È interessante notare che i recettori M2 sono particolarmente ==abbondanti nel setto ventricolare e nel ventricolo sinistro==.
> Questa distribuzione suggerisce un controllo molto preciso del potenziale d'azione, evitando fenomeni di rientro e garantendo una risposta cardiaca adeguata alle esigenze fisiologiche.


---
# Reference:
[[Apparato cardiovascolare]]
### Testi
Conti
Harrison
Dubin


--- 
# Appendice:

[^2]: depolarizzazione veloce o fase 0
[^3]: [^3]: Soprattutto Na$^+$, K$^+$, Ca$^{2+}$ e Cl$^-$.
[^4]: Vale a dire che i canali selettivi per quello ione sono aperti.
[^5]: Il potenziale di membrana in corrispondenza del quale non verrebbe generata alcuna corrente ionica, anche se i canali fossero aperti.
[^6]: <iframe width="560" height="315" src="https://www.youtube.com/embed/ljPDM2k6iPM?si=3gWw57l-REqY9pmU&amp;start=27" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
[^7]: (a volte considerate insieme come "I$_K$")
[^8]: Determinate da alterazioni nel recupero dei canali dallo stato inattivo o da una durata del potenziale d'azione anomala.
[^9]: Niente, che ti aspettavi? Sicuramente non Fred Astaire
[^10]: Meccanismo simile a [[Condivisi/FarmacologiaBruno/Introduzione alla farmacologia dei farmaci che agiscono sul Sistema nervoso centrale#NMDA|NMDA]]
[^11]: Hyperpolarization-activated Cyclicc Nucleotide-gated