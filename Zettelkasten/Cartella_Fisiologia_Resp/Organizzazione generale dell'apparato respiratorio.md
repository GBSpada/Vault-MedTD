---
tags:
  - Fisiologia
sistema/apparato:
  - Respiratorio
stato: ideaL
---
30-12-2022 01:26

--- 

#### Cascata dell'ossigeno ^b3c071

I gas respiratori, che devono essere trasferiti dall'aria ambientale alle cellule o viceversa, fluiscono lungo un percorso detto **sistema respiratorio**, sospinti da una *forza motrice* - la pressione parziale dei gas in questione - che consente di superare le [[#resistenze al flusso respiratorio]] disseminate lungo il percorso stesso.

Poiché la resistenza è il reciproco della conduttanza si può descrivere, ipotizzando una resistenza globale data dalla somma di tutte le resistenze in serie (RT):


##### Movimento dei gas

- I gas si comportano in ossequio alle **[[leggi di Dalton]]**
	- Sulle lunghe distanze si parla di **movimenti convettivi**
		- [[#Convezione ventilatoria]]
		- [[#Convezione circolatoria]]
	- Sulle brevi distanze si parla di [[Scambi gassosi]] ed avvengono
		- A livello della **membrana alveolare o capillare** 
		- A livello **dei tessuti**
- In ==flusso== di questi gas può essere
	- **Passivo**
		- Non richiede il concorso di altra forza motrice
	- **Attivo**
		- Su distanze maggiori
			- Dall'ambiente agli alveoli
			- Dai capillari polmonari a quelli periferici
		- Richiede ==generazione di flussi convettivi== di maggiore entità
			- Sostenuti da forze esterne
- Nel sangue è ottimizzato energeticamente grazie all'**emoglobina**

##### Resistenze al flusso respiratorio

-  Il transito di questi gas lungo il sistema respiratorio incontra continuamente delle resistenze 
- Essendo queste ==molto complesse da valutare== -e non sempre significative- si valutano a cavallo di quattro particolari movimenti di gas (convezioni/scambi):
	- Aria inspirata - aria alveolare: [[#Convezione ventilatoria]]
	- Aria alveolare - sangue arterioso: [[#Trasferimento dei gas a livello alveolo-capillare]]
	- Sangue arterioso - sangue venoso misto: [[#Convezione circolatoria]]
	- Sangue venoso misto - mitocondri: [[#Diffusione dei gas a livello tessutale]]
- La [[Pressione parziale]] dell'O2 viene valutata in questi momenti specifici, stessa cosa per quella della CO2 


>[!warning] Nota bene:
>![](https://i.imgur.com/egAuqSU.png)


##### Convezione ventilatoria
- Sostenuta dalla ventilazione polmonare che permette il movimento d'aria tra l'ambiente e gli alveoli polmonari e viceversa
	- La forza motrice è data dal ==gradiente pressorio tra aria ambiente e aria alveolare== 
- Solo una parte è funzionale ed è detta *ventilazione alveolare (VA)*
    - Il resto rimane nel cosiddetto *spazio morto (VD)*

$$V_{O}= V_{A}\beta_g(P_{IO_2}-P_{AO_2})$$
- Per descrivere la convezione ventilatoria passiamo per la definizione di flusso di ossigeno (dato che l'aria inspirata ha solo la pressione parziale dell'ossigeno) dove:
###### Termini
 - $V_{O_2}$:
    - **Flusso di ossigeno** (ml/min o L/min).
    - Rappresenta la quantità di ossigeno trasportata in un'unità di tempo, influenzata dalla ventilazione alveolare e dal gradiente di pressione dell'ossigeno.
- $V_A$:    
    - **Ventilazione alveolare** (ml/min o L/min).
    - Volume di aria che raggiunge gli alveoli per unità di tempo, escludendo lo spazio morto anatomico.
- $\beta_g$:
    - **Solubilità del gas** (dimensionale o ml O2_2/ml aria · mmHg).
    - Fattore di proporzionalità che descrive la capacità del gas (ossigeno) di dissolversi nel sangue o nell'aria alveolare, spesso legato alla legge di Henry.
- $P_{IO_2}$:
    - **Pressione parziale di ossigeno inspirato** (mmHg o kPa).
    - Determinata dalla frazione di ossigeno nell'aria inspirata e dalla pressione atmosferica totale
- $P_{AO_2}$:
    - **Pressione parziale di ossigeno alveolare** (mmHg o kPa).
    - Determinata dall'equilibrio tra l'ossigeno introdotto dalla ventilazione e il suo consumo metabolico. È calcolabile con l'*equazione dei gas alveolari*
##### Trasferimento dei gas a livello alveolo-capillare	
- Consente il flusso di gas **dall'aria alveolare al sangue arterioso o dal venoso misto all'aria alveolare**
	- ==Il flusso è sostenuto da differenze di pressione tra questi due compartimenti==
- Essendo una tappa molto complessa consideriamo soltanto
	- La capacità di ==diffusione polmonare dei gas== respiratori
	- Le **differenze di pressione** dei suddetti gas
$$V_{O_{2}=}K_{L}D_{L}(P_{AO_2}-P_{aO_2})$$
###### Termini
- $P_{aO_2}$ 
	- **Pressione parziale** di $O_2$ nel sangue arterioso
- $D_L$ 
	- [[Scambi gassosi#Capacità di diffusione]] per l'$O_2$ tra l'alveolo ed il capillare 
- $K_L$
	- **Costante di proporzionalità** che tiene conto degli effetti dell'eterogenea distribuzione del rapporto ventilazione-perfusione
	- ==Determinabile solo indirettamente==

##### Convezione circolatoria

- Trasporta i gas nel sangue arterioso **dal polmone ai tessuti**
	- Resa possibile dall'**attività del cuore come pompa** 
		- Il ==flusso è dato dal gradiente pressorio tra sangue arterioso e sangue venoso misto==
	- Sfrutta l'==emoglobina== come trasportatore

$$V_{O_{2}}=Q\beta_b(P_{aO_2}-P_{vO_2})$$
###### Termini
- $\beta_b$
	- **Coefficiente di trasporto dell'ossigeno in fase ematica**
	- Corrisponde alla ==pendenza media della curva di dissociazione dell'emoglobina per l'O2==
		- Poiché la *curva è sigmoidale*: ==non linearità del modello== a cascata dell'ossigeno (vedi biochimica)
- $P_{vO_2}$ 
	- **Pressione parziale** di O2 nel sangue venoso misto
- Q
	- **Gittata cardiaca**

##### Diffusione dei gas a livello tessutale
- Sostiene il **flusso dei gas dai capillari periferifici ai mitocondri**
	- ==Due parti== concettualmente indipendenti ma talmente embricate da essere ==difficilmente discernibili==
		- Diffusione periferica
		- Utilizzo mitocondriale
- In questo caso la forza motrice per il flusso di ossigeno è data dal ==gradiente pressorio tra sangue venoso misto e mitocondri==

$$V_{O_2}=G_p P_{vO_2}$$

###### Termini
- $G_p$
	- Teorica conduttanza periferica globale
	- Include 
		- Diffusione a livello dei capillari periferici
		- Volume mitocondriale
		- Flusso facilitato per la mioglobina
	- Non è direttamente misurabile

##### Sistema di controllo della respirazione
- La respirazione è gestita a livello nervoso da vie altamente specializzate costitute da: 
	- **Afferenze**
		- Principali
			- Chemiocettori ==periferici==
				- *Glomo carotideo e glomi aortici*
			- Chemiocettori ==centrali==
				- A livello del quarto ventricolo: *area postrema*
		- Accessorie
	- **Nuclei e processazione**
		- *Centro generatore del ritmo respiratorio di base*
			- Nel bulbo
		- Rete di integrazione e modulazione
			- Diffusa nel ==tronco encefalico==
	- **Efferenze** integrate
		- Polmonari, Cardiache, Vascolari
>[!info] Le efferenze respiratorie
>A causa dell'onere meccanico dato dalla ventilazione, la ==muscolatura== implicata, nonostante la natura vegetativa del fenomeno, è ==striata== ed innervata da ==efferenze motorie somatiche==

##### Omeostasi gassosa e pH
- In ogni liquido corporeo la CO2 si trova in equilibrio con gli H+
	- Vedi [[Introduzione - farmacologia#Ionizzazione di acidi e basi deboli; l'equazione di Henderson-Hasselbalch]]
- Si genera quindi un doppio sistema di controllo dell'omeostasi gassosa renale-polmonare ([[Patologia Generale - McCance#Equilibrio acido-base]])

###### Valori di riferimento **universali**
- **CO2**
	- [[Pressione parziale gas]] nell'aria alveolare e nel sangue: 40 mmHg
	- 250 mL prodotte ogni minuto dal metabolismo
- **Ossigeno**
	- 300 mL consumati ogni minuto dal metabolismo
- **pH del sangue arterioso**
	- 7,4
- **Volume della ventilazione alveolare**
	- 5 L al minuto 
	- ==Uguale alla gittata cardiaca==]]
>[!info] Perché i muscoli respiratori sono striati
>- Le dimensioni dei muscoli necessari a ventilare, nonostante si tratti di una funzione vegetativa, implicano necessariamente la presenza di tessuto muscolare scheletrico anziché liscio.
>- La ventilazione polmonare è quindi l'unico meccanismo vegetativo mediato da efferenze motorie somatiche e non viscerali
#### Basi morfofunzionali del sistema respiratorio
##### Polmoni e gabbia toracica
###### Accoppiamento meccanico gabbia toracica-polmoni

>  ==Le proprietà meccaniche del sistema toraco-polmonare sono definibili come la somma delle proprietà meccaniche del polmone e della gabbia toracica prese singolarmente==

- Poiché i polmoni sono circondati direttamente dalle pleure e queste ultime ricoprono la gabbia toracica allora ogni movimento dei polmoni è accompagnato ad uno della gabbia toracica.
###### Muscoli respiratori e meccanica respiratoria
![](https://i.imgur.com/hmI1HP5.png)


- Questa è una rassegna a grandi linee dell'anatomia e della funzionalità macroscopica, per i dettagli fisici e fisiologici vedi
    - [[Effetti della contrazione dei muscoli respiratori sul grafico PV]]
- **Muscoli inspiratori principali**
    - Muscoli **intercostali**
        - **Esterni**
            - Innervati dai nervi intercostali corrispondenti
            - Orientamento fibre muscolari
                - Dall'alto in basso
                - Dall'estremità prossimale delle coste a quella distale
                - ==Implicazioni funzionali== 
                    - Poiché il braccio di leva della costa inferiore è più lungo di quello della costa superiore:
                        - Le fibre muscolari trasmettono più forza alla costa inferiore elevandola e espandendola
        - **Interni**
            - Hanno le fibre disposte in senso opposto rispetto agli esterni
            - ==Leva più favorevole sulla costa superiore==
                - Al momento della contrazione si abbassa con diminuzione del volume della gabbia toracica
    - **Diaframma**
        - In generale
            - Separa la gabbia toracica dalla cavità addominale
            - Innervato dal nervo frenico
        - ==Quando si contrae==
            - Si ==abbassa aumentando il volume della gabbia toracica==
            - Innalza le coste su cui si inserisce
            - Comprime in direzione caudale i visceri addominali
        - Contribuisce dal 60 all'80% dell'inspirazione
- **Muscoli inspiratori accessori** 
    - ==Scaleni==
        - Sollevano e fissano le prime due coste
    - ==Sternocleidomastoidei==
        - Sollevano lo sterno in avanti contribuendo all'aumento del diametro anteroposteriore della gabbia toracica
    - ==Del collo e del dorso==
        - Innalzano la cintura pettorale aumentando la superficie di sezione della gabbia toracica
        - Estendono il dorso aumentando la lunghezza rostro-caudale
    - ==Genioglosso, genioioideo, sternoioideo e sternotiroideo==
        - Contraendosi impediscono il collasso della laringofaringe
    - ==Muscoli della laringe e delle vie aeree superiori==
        - Diminuiscono la resistenza al flusso respiratorio
##### Vie aeree
###### Struttura vie aeree
###### Fisica delle vie aeree
##### Alveoli e capillari
###### Organizzazione e struttura degli alveoli
###### Popolazioni cellulari del polmone]]
#### [[Organizzazione dello studio della funzione respiratoria]]















--- 
# Reference:
[[Apparato respiratorio]]

