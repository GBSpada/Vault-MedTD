2024-12-11 01:00
Stato: #idealibro 
Tag: #Farmacologia #Farmacologiagenerale 

---
![Farmacologia generale, relazione dose-effetto suddivisa nella componente farmacocinetica (relazione dose-concentrazione) ed in quella farmacodinamica (relazione concentrazione-effetto).](https://i.imgur.com/cICY7Ym.png)
	- Relazione dose-effetto:
		- farmacodinamica: rapporti tra *concentrazione* ed *effetto*
		- farmacocinetica: rapporti tra *dose* e *concentrazione*
	- Vi è un'importante relazione tra l'effetto terapeutico o tossico di un farmaco e la concentrazione del farmaco stesso
		- bisogna, comunque, considerare anche l'andamento temporale dei valori della concentrazione nel sito dell'effetto farmacologico
>[!info]- Tabelle sui parametri farmacocinetici e farmacodinamici di alcuni farmaci
>- ![Farmacologia generale, parametri farmacocinetici e farmacodinamici di alcuni farmaci 1 (tabella).](https://i.imgur.com/LIeTBK6.png)
>- ![Farmacologia generale, parametri farmacocinetici e farmacodinamici di alcuni farmaci 2 (tabella).](https://i.imgur.com/vU0MMYG.png)
# Farmacocinetica
- Dose "standard" di un farmaco
	- si basa su risultati di sperimentazioni cliniche controllate in volontari sani ed in pazienti con capacità di metabolizzazione del farmaco nella norma
	- molte condizioni fisiologiche e patologiche impongono *aggiustamenti posologici* nei singoli pazienti
- I due parametri farmacocinetici principali sono
	- **clearance**: capacità dell'organismo di eliminare il farmaco
	- **volume di distribuzione**: misura dello spazio apparente dell'organismo disponibile per contenere il farmaco
>[!info]- Modelli di distribuzione ed eliminazione di farmaci
>![Farmacologia generale, modelli di distribuzione ed eliminazione di farmaci.](https://i.imgur.com/EYPlM9S.png)
## Volume di distribuzione
>[!info]
> **Volume di distribuzione** (**V**): relazione che lega il quantitativo totale di farmaco nell'organismo con la concentrazione del farmaco stesso (C) nel sangue o nel plasma:
> - $V = \frac{\text{Quantitativo di farmaco nell'organismo}}{\text{C}}$

- Definibile rispetto a
	 - sangue ($C_{sangue}$)
	 - plasma ($C_{plasma}$)
	 - acqua plasmatica ($C_{\text{farmaco libero}}$)
 - V può superare di parecchio il volume dei compartimenti fisici del corpo, poiché esso è *apparentemente* necessario per contenere il quantitativo totale di farmaco presente nell'organismo (qualora esso fosse *omogeneamente* distribuito con la medesima concentrazione in sangue, plasma o acqua)
 - ![Farmacologia generale, volumi fisici (in L/kg di peso corporeo) di alcuni compartimenti dell'organismo umano nei quali i farmaci possono distribuirsi.](https://i.imgur.com/dKVCVMd.png)
## Clearance
>[!info]
>**Clearance**: per un farmaco, è il fattore che predice la velocità di eliminazione del farmaco in rapporto alla sua concentrazione:
>- $CL = \frac{\text{Velocità di eliminazione}}{\text{C}}$ → $\text{Velocità di eliminazione} = \text{CL x C}$
- Anch'essa è definibile rispetto a sangue, plasma o all'acqua plasmatica
- L'eliminazione farmacologica può coinvolgere processi che si svolgono in
	- rene → $CL_{renale} = \frac{\text{Velocità di eliminazione}_{rene}}{C}$
		- *clearance renale* = clearance di un farmaco immodificato nell'urina
	- fegato → $CL_{fegato} = \frac{\text{Velocità di eliminazione}_{fegato}}{C}$
		- l'eliminazione avviene per
			- biotrasformazione in uno o più metaboliti
			- escrezione del farmaco immodificato nella bile
			- attraverso entrambi i processi
	- altri organi → $CL_{altri organi} = \frac{\text{Velocità di eliminazione}_{\text{altri organi}}}{C}$
		- nb. nell'espressione altri organi possono essere inclusi i polmoni e altre sedi del metabolismo, ad es., il sangue o i polmoni
	- $CL_{sistemica} = CL_{renale} + CL_{fegato} + CL_{\text{altri organi}}$
- **Eliminazione di primo ordine**:
	- l'eliminazione non è saturabile
	- la velocità di eliminazione del farmaco è direttamente proporzionale alla concentrazione
	- $\text{Velocità di eliminazione} = \text{CL x C}$
	- in questo caso, la clearance può essere misurata calcolando l'*area sotto la curva* (*AUC*)
### A. Eliminazione saturabile
>Anche detta *eliminazione dose-* o *concentrazione-dipendente*, *di ordine misto*, *non-lineare* o *di Michaelis-Menten*
- La clearance varia a seconda della concentrazione del farmaco che si è raggiunta
	- la maggior parte delle vie di eliminazione dei farmaci diviene saturabile se la dose è sufficientemente elevata
	- $\text{Velocità di eliminazione} = \frac{V_{max}\text{ x C}}{K_m + \,C}$
		- $V_{max}$ = massima velocità di eliminazione
		- $K_m$ = concentrazione de farmaco alla quale la velocità di eliminazione del farmaco è pari al 50% della $V_{max}$
- Considerazioni:
	- a concentrazioni elevate (rispetto al valore di $K_m$), la velocità di eliminazione diventa quasi indipendente dalla concentrazione (*eliminazione di "ordine pseudo-zero"*)
	- se la velocità di somministrazione del farmaco supera la capacità di eliminazione, non può essere raggiunto uno stato stazionario (*steady-state*) e la concentrazione continuerà a crescere fintanto che continuerà la somministrazione del farmaco
>[!warning]
>- L'importanza dei farmaci ad eliminazione saturabile è importante per tre farmaci di uso comune: ==etanolo==, ==fenitoina== e ==acido acetilsalicilico==.
>- La clearance non ha un vero significato per i farmaci con eliminazione saturabile, e **l'AUC non dovrebbe essere usata per descrivere l'eliminazione di tali farmaci**.
### B. Eliminazione flusso-dipendente
- Alcuni farmaci vengono allontanati molto facilmente dall'organo di eliminazione
	- (addirittura eliminazione al primo passaggio del farmaco in esso)
	- l'eliminazione dipende dalla **velocità di rilascio del farmaco all'organo di eliminazione**
- Tali farmaci vengono detti *farmaci "ad elevata estrazione"*

>[!warning]
>Il legame alle proteine plasmatiche o a componenti cellulari del sangue può essere rilevante per quei farmaci estesamente legati che sono altamente estratti.
## Emivita
>[!definizione]
>**Emivita** ($t_{\frac{1}{2}}$): tempo richiesto per ridurre il quantitativo del farmaco nell'organismo del 50% durante l'eliminazione (o durante un'infusione costante).
>- In termini più farmacologici: indica il tempo necessario per
>	- raggiungere il 50% della concentrazione dello *steady state*[^1],
>	- ridurre la concentrazione ematica al 50% rispetto a quella dello *steady-state* dopo una modifica del regime posologico di somministrazione.
- L'andamento temporale del farmaco nell'organismo dipenderà sia dal *volume di distribuzione* che dalla *clearance*:               $t_{\frac{1}{2}} = \frac{0,7 \text{ x V}}{CL}$
	- 0,7 ≈ *ln(2)*
		- l'eliminazione di un farmaco può essere descritta da un processo esponenziale
		- il tempo richiesto per una riduzione di due volte della sua quantità è proporzionale al ln(2)
	- ![Farmacologia generale, andamento dell'accumulo e dell'eliminazione di un farmaco nel tempo durante un'infusione continua a velocità costante](https://i.imgur.com/x2932GF.png)
>[!warning]
>Stati patologici possono alterare clearance e volume di distribuzione, mentre un cambiamento dell'emivita non rispecchierà necessariamente una variazione nell'eliminazione del farmaco.

>[!warning]
>Nei farmaci con cinetica multicompartimentale, la "vera" emivita terminale sarà maggiore di quella calcolata con la semplice equazione.
## Accumulo del farmaco
- Quando le **somministrazioni** di un farmaco sono **ripetute**, il farmaco tenderà ad **accumularsi nell'organismo** fintanto che il **regime posologico non venga interrotto**
	- in teoria, il tempo necessario ad eliminare interamente una determinata dose somministrata è infinito
	- in pratica, se l'intervallo tra le due dosi < 4 emivite, si verificherà un accumulo
- Un utile indice di accumulo è il **fattore di accumulo**: $\text{Frazione di accumulo} = \frac{1}{\text{frazione di farmaco eliminata in ogni intervallo fra le dosi}} = \frac{1}{1\text{ - frazione residua di farmaco}}$
	- questo indice permette di prevedere il rapporto fra la concentrazione allo steady-state e la concentrazione che si misura dopo lo stesso lasso di tempo, in seguito a somministrazione della prima dose di farmaco
	- l'accumulo è *inversamente proporzionale* alla frazione della dose eliminata in ciascun intervallo tra le somministrazioni
	- le concentrazioni di picco allo steady-state, in caso di somministrazioni ripetute, saranno uguali alla concentrazione di picco dopo la prima dose moltiplicata per il fattore di accumulo
## Biodisponibilità
>[!info]
>**Biodisponibilità**: frazione di farmaco non modificato che raggiunge la circolazione sistemica a seguito di somministrazione attraverso una qualsiasi via.
- ![Farmacologia generale, confronto fra curve concentrazione-tempo in condizioni di differenti velocità di assorbimento ed entità della biodisponibilità.](https://i.imgur.com/IVsYtNh.png)
	- AUC proporzionale al grado di biodisponibilità di un farmaco, nel caso in cui la sua cinetica di eliminazione sia del primo ordine
	- es. ==somministrazione *per os*==: si assume una biodisponibilità = 1, caso non vero se
		- si ha assorbimento incompleto attraverso la parete intestinale
		- si ha effetto di primo passaggio da parte del fegato
### A. Entità dell'assorbimento
- A seguito di una somministrazione *per os*, un farmaco può essere assorbito in maniera parziale:
	- difetto di assorbimento da parte dell'intestino → es. solo il 70% della ==digossina== raggiunge la circolazione sistemica
	- troppa idrofilia (es. ==atenololo==) → incapacità di superare la membr. lipidica cellulare
	- troppa lipofilia (es. ==aciclovir==) → non sufficientemente solubile per attraversare gli strati acquosi della cellula
	- *trasportatore*, associato ad una *glicoproteina P*, che opera in senso inverso
		- secrezione attiva di farmaci dalle cellule della parete intestinale al lume intestinale
		- ingestione di succo di pompelmo → inibizione della glicoproteina P e del metabolismo intestinale → **aumento consistente dell'assorbimento del farmaco**
### B. Effetto di primo passaggio
>[!info]
>**Effetto di primo passaggio**: processo mediante cui una parte della dose somministrata viene metabolizzata nel fegato prima di raggiungere la circolazione sistemica, riducendo la quantità di farmaco attivo per l'organismo.
- Ulteriori livelli metabolici contribuenti alla riduzione della biodisponibilità:
	- parete intestinale (es. da *CYP3A4*)
	- sangue portale
	- il farmaco può anche essere escreto dal fegato nella bile
- *Rapporto di estrazione* (ER = *extration ratio*): $ER = \frac{CL_{fegato}}{Q}$
	- Q = flusso ematico nel fegato (normalmente 90 L/h in un soggetto del peso di 70kg)
	- espressione dell'influenza dell'eliminazione di primo passaggio sulla biodisponibilità
- *Biodisponibilità sistemica del farmaco*: $F = \text{f x (1 - ER)}$
- Es. pratico:
	- la ==morfina== viene quasi completamente assorbita (f=1)
		- perdita intestinale trascurabile
	- $ER = \frac{60 L/h/70 kg}{90 L/H/70 kg} = 0,67$ → $1 - ER = 0,33$ → biodisponibilità del 33%
### C. Velocità di assorbimento
- **Velocità di assorbimento**: determinata dal sito di somministrazione del farmaco e dalla forma farmaceutica
- Commento dell'immagine 3.4:
	- la forma B dovrebbe essere somministrata in quantità doppia rispetto ad A affinché  si possano raggiungere gli stessi livelli ematici
	- il farmaco somministrato nella forma A raggiunge la concentrazione bersaglio prima rispetto alla forma C
		- non solo, le concentrazioni ematiche di A raggiungono livelli superiori e rimangono al di sopra della concentrazione bersaglio per un tempo più lungo
	- nel caso di somministrazioni ripetute, A e C producono le stesse concentrazioni ematiche medie, anche se la forma A potrebbe presentare
		- una concentrazione massima un poco più alta
		- una concentrazione minima un poco più bassa
- **Assorbimento di ordine zero**: quando la sua velocità di assorbimento è indipendente dal quantitativo di farmaco ancora presente nell'intestino
	- es. quand'è determinata dalla velocità di svuotamento dello stomaco o da formulazioni farmaceutiche a rilascio controllato
- **Assorbimento di primo ordine**: quando l'intera dose viene disciolta nei liquidi gastrointestinali; dunque la velocità di assorbimento è proporzionale alla concentrazione
## Rapporto di estrazione ed effetto di primo passaggio
- La biodisponibilità non influenza la clearance sistemica, semmai è il contrario (ricorda: $ER = \frac{CL_{fegato}}{Q}$)
- Incrementare la dose per favorire un maggior assorbimento in seguito a somministrazione *per os* implica anche un aumento dei metaboliti del farmaco:
	- es. ==verapamil== e ==lidocaina== sono entrambi usati nel trattamento delle [[Aritmie|aritmie cardiache]], ma la lidocaina non viene mai somministrata per os: i suoi metaboliti contribuiscano alla tossicità osservata sul SNC
	- altri farmaci estratti in modo considerevole dal fegato: ==isoniazide==, ==morfina==, ==propanololo== e molti ==antidepressivi triciclici==
- **Differenze interindividuali** nella *funzionalità epatica* e nel *flusso ematico nel fegato*
	- mostreranno una marcata variabilità tra soggetto e soggetto nella biodisponibilità
	- possono spiegare le notevoli variazioni delle concentrazioni ematiche dei farmaci ad elevata estrazione a seguito della somministrazione di una stessa dose
	- ripercussioni sulla farmacocinetica:
		- farmaci ad elevata estraz. epatica → sottrazione dai siti di eliminazione epatica → notevole aumento della biodisponibilità
			- es. nella [[Cirrosi epatica|cirrosi epatica]] con shunt porto-sistemico
		- farmaci a bassa estraz. epatica → shunt circolatorio-epatico → piccola variazione nella biodisponibilità
			- es. ==cloropropamide==, ==diazepam==, ==fenitoina==, ==teofillina==, ==tolbutamide==, ==warfarin==
## Vie di somministrazione alternative ed effetto di primo passaggio
- Possono essere suddivise in due categorie:
	- **naturali**
		- prevedono che il farmaco penetri nell'organismo attraverso le sue barriere naturali
		- comprendono *vie enterali* e *cutanee*
	- **artificiali** (o **parenterali**)
		- necessitano di speciali dispositivi, quali le siringhe
		- vi si collocano *via endovenosa*, *intramuscolare*, *sottocutanea*, *intrarteriosa* ed *intratracheale*
- ![Farmacologia generale, vie di somministrazione, biodisponibilità e caratteristiche generali.](https://i.imgur.com/xr3B5zn.png)
- Vi sono varie motivazioni alla base dell'impiego clinico delle diverse vie di somministrazione dei farmaci:
	- praticità (es. via orale)
	- esigenza di rendere massime le concentrazioni nel sito d'azione e, nel contempo, minimizzarle in altre sedi (es. via topica)
	- prolungamento della fase di assorbimento (es. via transdermica)
	- evitare l'effetto di primo passaggio
>[!warning]- Ruolo del polmone
>Sebbene la somministrazione dei farmaci per via inalatoria eviti l'effetto di primo passaggio epatico, **il polmone può svolgere la funzione di sito di eliminazione di primo passaggio** mediante escrezione e, probabilmente, anche mediante metabolismo di farmaci somministrati per via parenterale.
### Via di somministrazione enterale
>[!info]
>In questo caso, il farmaco penetra nell'organismo attraverso il canale alimentare. A questo gruppo appartengono le vie *orale*, *sublinguale* e *rettale*.
#### Via orale
>Anche indicata col termine *per os* o con l'abbreviazione *PO*
- Decorso
	- il farmaco (sotto forma di *compresse*, *capsule*, *bustine*, *sciroppi*, *elisir*, ecc.) viene deglutito ed arriva allo stomaco
	- da qui, passa nell'intestino tenue
		- *sede d'elezione per l'assorbimento dei farmaci*
- Pro e contro
	- vantaggi
		- facilità a rapidità di somministrazione, che garantiscono un'ottima aderenza del paziente al regime terapeutico
	- svantaggi
		- inizio d'azione ritardato
		- assorbimento (spesso) incompleto
- *Tempo d'azione*
	- il tempo medio necessario per l'inizio dell'azione = *10-90 min*
	- dipende da
		- fattori intrinseci al paziente (es. tempo di svuotamento gastrico)
		- fattori estrinseci al paziente (caldo, freddo, viscosità dei cibi, ecc.)
	- implica un effetto di primo passaggio epatico, che riduce significativamente la biodisponibilità di molti farmaci
>[!info]
>*Per os* possono essere assunti tutti i farmaci che non vengono degradati dall'acidità gastrica e dagli enzimi presenti nel succo gastrico.
>- Questa limitazione riguarda alcune classi particolari di farmaci, come gli ormoni peptidici (*insulina*, *ossitocina*) ed alcuni chemioantibiotici (==penicillina G==, ==eritromicina==, ecc.)
>- N.B. Per alcune classi di farmaci sono disponibili in commercio formulazioni per somministrazione orale a rilascio controllato, *long acting, retard*, con lo scopo di prolungare l'effetto terapeutico (es. ==FANS==, ==analgesici==, ==antiaritmici==).
#### Via sublinguale
>Anche detta "buccale"
- Somministrazione di farmaci (*gocce*, *confetti*, *pastiglie*) al di sotto della lingua o nello spazio fra gengiva e guancia
	- il farmaco viene assorbito dai *vasi venosi del pavimento della bocca* tributari della vena cava superiore (arriva direttamente nel circ. sistemico ed all'organo bersaglio)
- Vantaggi:
	- riduzione del tempo dell'azione farmacologica (fra 5s e 15 min)
	- biodisponibilità maggiore del farmaco: ne impedisce il metabolismo pre-sistemico da parte del fegato
- Farmaci somministrati: ==nitroglicerina==, ==nifedipina==, ==morfina==, ecc.
#### Via rettale
- Processo:
	1. il farmaco, sotto forma di *supposta* (talora *microclisteri*), sia introdotto nel canale anale, subito al di là dello **sfintere anale esterno**;
	2. da qui, il farmaco arriva nel [[Zettelkasten/Intestino crasso#Vasi e nervi|retto]], dove la T corporea facilita lo scioglimento della supposta e l'assorbimento del principio attivo da parte della mucosa rettale
	3. il sangue refluo del retto viene veicolato dalle *vene rettali*, di cui
		- superiore → tributaria della vena porta
		- media ed inferiore → tributarie della vena cava inferiore
- La particolare anatomia venosa rettale fa sì che il farmaco arrivi per ca. 2/3 alla vena cava inferiore e, da qui, direttamente al circolo sistemico (**si evita l'effetto di primo passaggio**)
	- inizio dell'azione farmacologica e biodisponibilità >>> somministrazione orale
- Viene preferita per *neonati* o *adulti con problemi di deglutizione/patologie del digerente*
- Farmaci somministrati:
	- ==indometacina== (FANS),
	- ==metronidazolo== (chemioterapici),
	- ==diazepam==
		- assorbimento pari alla via endovenosa
		- utilissimo nelle convulsioni epilettiche nei bambini
	- farmaci basici (es. ==caffeina== ed ==ergotamina==)
### Via di somministrazione cutanea
#### Via topica
- Il farmaco, sotto forma di *crema*, *pomata* o *unguento*, svolga la sua azione terapeutica limitatamente alla superficie corporea dov'è stato applicato
	- forme particolari di somministrazione topica: *colliri*, *spray per inalazione*, *ovuli* o *candelette vaginali*, ecc.
- I farmaci da utilizzare devono avere **assorbimento** e conseguenti **effetti sistemici minimi**
	- alle volte non accade (es. colliri a base di ==$\beta$-bloccanti== o ==cloramfenicolo==, creme vaginali con estrogeni, ==tiabendazolo==)
#### Via transdermica
- Il farmaco, applicato sulla cute sotto forma di *cerotto* o utilizzando anche speciali dispositivi, venga assorbito e dia origine a una risposta sistemica
	- sedi più utilizzate: torace, superficie anteriore degli arti, (talora) zona retroauricolare
- **Buona aderenza del paziente**, grazie a
	- semplicità della somministrazione
	- mantenimento di concentrazioni ematiche efficaci a
		- 48-72 h (==scopolamina==)
		- 18-24 h (==nitroglicerina==)
		- 3-7 gg (==clonidina==, ==steroidi ovarici== e ==androgeni==)
>[!warning]
>Al fine di evitare fenomeni di *distrofia cutanea*, che limitano l'assorbimento del principio attivo, è opportuno consigliare al paziente di variare il sito di applicazione del cerotto.
### Via di somministrazione endovenosa
- Il farmaco viene **somministrato direttamente in circolo** (si salta la fase di assorbimento)
	- biodisponibilità pari al 100%
	- inizio dell'azione farmacologica immediato
	- seri rischi per la vita del paziente in caso di errori da parte di medici e/o personale paramedico
- Sedi preferite:
	- *vene antecubitali* (cefalica e basilica)
	- *vene del dorso della mano e del piede*
	- (in casi selezionati) vena temporale e vena safena
- Somministrazione
	1. direttamente nella vena attraverso una *siringa* (**bolo endovenoso**)
		- ==il farmaco va somministrato molto lentamente== (ca. 1-2 mL in 1 min), per evitare al paziente problemi di tipo cardiovascolare o respiratorio secondari all'eccessiva velocità con cui il farmaco arriva al miocardio o ai chemocettori del seno carotideo e dell'arco aortico
		- in caso di somministrazione lenta, si può sospendere immediatamente la somministrazione se si osservano effetti collaterali
		- **non** possono essere somministrati farmaci sotto forma di soluzioni e/o sospensioni acquose isotoniche
	2. diluizione del farmaco in opportune soluzioni (isotoniche o ipotoniche) e somministrato per *fleboclisi*[^2] (**infusione endovenosa**)
- Si possono somministrare anche farmaci irritanti (es. ==alcuni chemioterapici==), perché
	- diluiscono nell'intero circolo
	- l'endotelio vasale è privo di recettori dolorifici
>[!warning]
>Complicanze di una somministrazione endovenosa non fatta a regola d'arte:
>- *rottura della vena* → emorragia,
>- *periflebiti*,
>- *eventuali setticemie* (secondarie ad un'incompleta asepsi della zona cutanea dov'è stata effettuata la somministrazione).

>[!warning]
>N.B. In caso di infusione endovenosa con soluzioni ipotoniche (es. ==soluzione glucosata <5%==) o ipertoniche (==glicerolo==, ==mannitolo==), si può verificare *emolisi* o *agglutinazione degli eritrociti*.
### Via di somministrazione intramuscolare
- Sedi preferenziali: *quadrante supero-esterno del grande gluteo*, *deltoide*, *vasto laterale della coscia*
- Somministrazione:
	- possono essere iniettati ==farmaci== in forma di *soluzione* o *sospensione acquosa od oleosa* ed anche *emulsioni*
	- assorbimento massimizzato → max somministrazioni di 3-5 mL
		- (anche se la magg. parte dei farmaci che si somministrano mediante questa via è già fornita in fiale da 1 mL)
- Tempo medio di assorbimento:
	- favorito dalle caratter. tissutali e dal flusso ematico (a riposo ca. 0,02-0,07 mL/min)
	- varia fra 10 e 30 min
		- si prolunga anche fino a giorni in caso di soluzione oleosa (ormoni steroidei), di emulsione o di sospensione
	- più rapido nel vasto laterale della coscia
		- sede preferenziale per la somministrazione nei neonati (grande gluteo poco sviluppato)
### Via di somministrazione sottocutanea
- Somministrazione in *soluzione* o *sospensione acquosa*
- Assorbimento ad opera dei vasi del [[Tegumento#Derma|derma]], da cui si distribuisce al circolo distale
	- velocità di assorbimento non troppo ridotta rispetto a quella muscolare, ma il ==flusso ematico è minore rispetto al muscolo==
	- escamotage:
		- alcune preparazioni contengono *ialuronidasi* (fluidificante della matrice connettivale) per accelerare l'assorbimento
		- l'==adrenalina==, a piccole dosi, risulta utile qualora si volesse ritardare l'assorbimento, garantendo maggiore permanenza *in situ* (es. ==anestetici locali==)
- Somministrazione:
	- sedi preferenziali: *addome*, *braccio* o *cosce*
	- volume max ≈ 1 mL
		- in caso di quantità superiori, è buona norma frazionarle e somministrarle in sedi multiple
		- è possibile, comunque, somministrare su *cosce* e *superfici addominali anterolaterali* larghi volumi di liquidi (*ipodermoclisi*), specie se vi è urgenza di reidratazione
# L'effetto farmacologico nel tempo
## Effetti immediati
- SITUAZIONE PIÙ SEMPLICE: gli effetti di un farmaco sono direttamente correlati alla sua concentrazione plasmatica
- NELLA REALTÀ: la relazione tra concentrazione ed effetto farmacologico non è lineare (ricorda [[Recettori dei farmaci e farmacodinamica#Curve concentrazione-effetto e legame degli agonisti al recettore|questo modello]])
### Esempio esplicativo: enalapril
>Consideriamo l'effetto dell'==enalapril== (un inibitore dell'ACE) sull'*ACE plasmatico*
- Emivita ≈ 3h
	- a seguito di una somministrazione orale di 10 mg, la concentrazione plasmatica dopo 3h è pari a ca. 64 ng/mL
- Somministrazione:
	- viene somministrato una volta al giorno (passeranno ca. 7 emivite dal momento della massima concentrazione di picco alla fine dell'intervallo tra le somministrazioni)
- Inibizione dell'ACE:
	- calcolata usando il modello $E_{max}$, dove $E_{max}$ è del 100%
	- la $C_{50}$ è pari a ca. 1 ng/mL
- ![Farmacologia generale, concentrazioni ed effetti di un inibitore dell'ACE in funzione del tempo (espresso in h).](https://i.imgur.com/W0MfeNX.png)
	- descrizione:
		- 12 h (4 emivite) dopo il picco
			- le concentrazioni plasmatiche di enalapril sono di ca. il 16%
			- l'inibizione dell'ACE è diminuita solo del 20%
		- 24 h dopo il picco
			- la concentrazione plasmatica di enalapril è di ca. l'1%
			- l'ACE risulta ancora inibito del 33%
	- il **fattore chiave** sta nell'**alta concentrazione iniziale in rapporto alla $C_{50}$**
		- nonostante la concentrazione plasmatica sia calata a picco, è ancora la metà della $C_{50}$
		- fenomeno comune per ==inibitori dell'ACE== e per farmaci che competono a livello recettoriale (es. ==propanololo==)
	- considerazioni:
		- sono necessarie quattro emivite perché le concentrazioni si riducano in modo da produrre un effetto che scenda dall'80% al 20% dell'$E_{max}$
			- si perde il 15% dell'effetto ad ogni emivita in questo intervallo di concentrazione
		- a concentrazioni inferiori a $C_{50}$/4
			- l'*effetto* diventa *quasi direttamente proporzionale alla concentrazione*
			- l'*andamento temporale* dell'effetto *segue il declino esponenziale della concentrazione*
>[!warning]
>È solo quando la concentrazione è bassa rispetto alla $C_{50}$ che il concetto di "emivita dell' effetto farmacologico" assume significato.
## Effetti ritardati
- Le variazioni dell'intensità dell'effetto farmacologico risultano spesso ritardate rispetto ai cambiamenti delle concentrazioni plasmatiche
- Ritardo farmacocinetico
	- ordine dei *minuti*
		- probabilmente dovuto al **tempo necessario al farmaco per distribuirsi dal plasma ai siti d'azione**
		- utile a spiegare l'intervallo di tempo esistente fra un'iniezione endovenosa rapida di un agente attivo sul SNC (es. ==tiopental==) e la comparsa degli effetti
	- più elevato (ore o giorni)
		- rintracciabile nel **basso turnover di una sostanza fisiologica coinvolta nell'espressione dell'effetto farmacologico**
### Esempio esplicativo: warfarin
- Il ==warfarin== agisce come anticoagulante, inibendo l'*epossidasi epatica della vitamina K*
	- quest'azione si verifica prontamente
	- un'inibizione dell'enzima è - probabilmente - strettamente correlata alle concentrazioni plasmatiche del farmaco
- Effetto clinico
	- ovvero la variazione dell'*International Normalized Ratio* (INR)
	- riflette una riduzione della concentrazione del complesso protrombinico dei fattori della coagulazione
	- l'inibizione della vitamina K epossidasi riduce la sintesi dei fattori della coagulazione, ma il complesso ha una lunga emivita (ca. 14 h)
		- ciò determina il ritardo di
			- fattori della coagulazione nel raggiungimento del nuovo *steady-state*
			- manifestazione clinica degli effetti del farmaco a seguito della concentrazione plasmatica media del warfarin
## Effetti cumulativi
- Alcuni effetti farmacologici sono più obiettivamente correlati ad un'**azione cumulativa** che ad un'azione rapidamente reversibile
>[!info]
>Misure di esposizione cumulativa (es. AUC) si sono rivelate utili nella predizione della risposta al farmaco, nell'ottica del trattamento personalizzato.
### Esempio esplicativo: antibiotici amminoglicosidici
- La **tossicità renale** di questi farmaci (es. ==gentamicina==) è **maggiore** quando vengono somministrati **in infusione continua** rispetto alle somministrazioni frazionate
	- si ritiene sia per il suo *accumulo nella corteccia renale*
	- spiegazione
		- i due regimi posologici producono le stesse concentrazioni medie allo steady-state
		- le somministrazioni ripetute, però, producono concentrazioni di picco più alte, che saturano un meccanismo di captazione nella corticale del rene (per cui l'accumulo totale è minore e si ha nefrotossicità)
>[!warning]
>La differenza nella tossicità è, quindi, una diretta conseguenza dei differenti andamenti delle concentrazioni e del meccanismo saturabile di captazione.
### Esempio esplicativo: farmaci nelle terapie oncologiche
- Il loro effetto riflette, allo stesso modo, un'azione cumulativa:
	- es. l'entità del legame di un farmaco al DNA è *proporzionale* alla concentrazione del farmaco ed è, di solito, irreversibile
	- l'**effetto sulla crescita tumorale** = conseguenza dell'esposiz. cumulativa al farmaco
# Il metodo della concentrazione-bersaglio per la progettazione di un regime posologico razionale
>[!info]
>Un regime posologico razionale si basa sull'assunto dell'esistenza di una **concentrazione-bersaglio** (a livello della sede d'azione) capace di produrre il desiderato effetto terapeutico.
- Nel considerare i fattori farmacocinetici determinanti la relazione dose-concentrazione, è possibile un adattamento individuale del regime di dosaggio (per gl'intervalli, vedi la tabella 3.1 nella voce [[Farmacocinetica e farmacodinamica|Tabelle sui parametri farmacocinetici e farmacodinamici di alcuni farmaci]])
	- la concentrazione-bersaglio iniziale dovrebbe essere scelta nell'ambito dei *limiti inferiori degl'intervalli indicati*
- In alcuni casi, la concentrazione-bersaglio dipende dallo specifico obiettivo terapeutico
	- es. il controllo della [[Aritmie#Fibrillazione atriale|fibrillazione atriale]] con ==digossina==, spesso, ne richiede una di 2 ng/mL
	- es. lo [[Scompenso cardiaco|scompenso cardiaco]] viene, di solito, controllato adeguatamente con una di 1 ng/mL
## Dose di mantenimento
- Nella maggior parte dei casi, i farmaci vengono somministrati di modo da mantenere uno stato stazionario (*steady-state*) di farmaco nell'organismo
	- ciò si ottiene somministrando ogni volta un quantitativo di farmaco pari al farmaco eliminato dal momento dell'ultima somministrazione
- Parametri da tenere in considerazione:
	- [[Farmacocinetica e farmacodinamica#Clearance|clearance]]
	- velocità di somministrazione (*rate in*) = velocità di eliminazione (*rate out*)
- Sostituendo la C con la TC (*target concentration*) nell'equazione della clearance, si ottiene: $\text{Velocità di somministrazione}_{steady-state} = \text{Velocità di eliminazione}_{steady-state} = \text{CL x TC}$
	- se, però, il farmaco viene somministrato attraverso una via caratterizzata da una biodisponibilità inferiore al 100%, l'equazione va modificata: $\text{Velocità di somministrazione}_{orale} = \frac{\text{Velocità di somministrazione}}{F_{orale}}$
	- se vengono effettuate somministrazioni ripetute, la dose di mantenimento viene calcolata dalla $\text{Dose di mantenimento} = \text{Velocità di somministrazione x intervallo tra le dosi}$
>[!warning]
>Per determinare la concentrazione plasmatica media attesa per una certa velocità di somministrazione del farmaco o la velocità di somministrazione del farmaco per raggiungere una certa concentrazione-bersaglio:
>- serve solo conoscere la **clearance**;
>- **non** serve conoscere il *volume di distribuzione* e l'*emivita*.
- ![Farmacologia generale, relazione tra la frequenza di somministrazione e le concentrazioni plasmatiche minime e massime per concentrazione desiderata allo *steady-state* della teofillina.](https://i.imgur.com/pNoWxzw.png)
	- l'andamento delle concentrazioni nel tempo per differenti intervalli tra le somministrazioni mostra diversi valori di concentrazione massima e minima, sebbene la concentrazione media sia sempre pari a 10 mg/L
- *Steady-state*:
	- le stime della velocità di somministrazione e della concentrazione media, che possono essere calcolate a partire dalla *clearance*, sono indipendenti dal modello farmacocinetico adottato
	- al contrario, la determinazione della concentrazione massima e minima richiede ulteriori assunzioni sul modello farmacocinetico:
		- il [[Farmacocinetica e farmacodinamica#Accumulo del farmaco|fattore di accumulo]] presuppone che la cinetica del farmaco segua un modello monocompartimentale
		- la stima della concentrazione di picco presuppone che la velocità dell'assorbimento sia molto più rapida della velocità di eliminazione
### Calcolo della dose di mantenimento
- Per alleviare i sintomi di un [[Asma bronchiale#Ipersensibilità acuta|asma bronchiale acuta]], è necessaria una concentrazione-bersaglio di 10 mg/L di ==teofillina==
	- se il paziente non è un fumatore e non ha altre patologie, la dose è 2,8 L/h/70 kg
	- il farmaco viene somministrato per infusione endovenosa → F=1
	- $\text{Velocità di somministrazione} = \text{CL x TC} = \text{2,8 L/h/70kg x 10 mg/L} = \text{28 mg/h/70kg}$
- Se l'attacco asmatico regredisce, andrà mantenuto il livello del farmaco utilizzando teofillina orale
	- somministrazione ogni 12 h, usando una formulazione a rilascio prolungato per mimare l'infusione continua
	- $F_{orale}$ = 0,96
	- $\text{Dose di mantenimento} = \frac{\text{Velocità di somministr.}}{F} \text{ x Intervallo fra le dosi} = \frac{28 \text{ mg/h}}{0,96} \text{ x 12 h} = 350 \text{ mg}$
		- quindi una compressa da 350 mg ogni 12 h
		- se l'intervallo tra le somministrazioni è di 8 h, la dose ideale è di 233 mg
		- se il farmaco viene somministrato una volta al giorno, la dose ideale è di 700 mg
## La dose di carico
>[!info]
>**Dose di carico**: quando il tempo per raggiungere lo *steady-state* è notevole (es. farmaci a lunga emivita), è la dose in grado di far salire rapidamente la concentrazione plasmatica del farmaco fino alla concentrazione-bersaglio.
>- Per la maggior parte dei farmaci, può essere somministrata come singola dose attraverso la via di somministrazione prescelta.
- Se s'impiega una dose di carico per raggiungere la concentrazione-bersaglio, da [[Farmacocinetica e farmacodinamica#Volume di distribuzione|questa equazione]] si ha che
	- ![Farmacologia generale, equazione Dose di carico](https://i.imgur.com/lljN6Ln.png)
- Nella maggioranza delle situazioni, la cinetica di distribuzione viene considerata monocompartimentale
	1. in alcuni casi, però, la fase di distribuzione non può essere ignorata
	2. se la velocità d'assorbimento è rapida relativamente alla distribuzione, la concentrazione di farmaco calcolata può risultare ==considerevolmente più elevata==, dando insorgenza a gravi episodi di ==tossicità== (sebbene in modo transitorio)
	3. quindi, mentre la stima del *quantitativo* della dose di carico di un farmaco può essere abbastanza corretta, la *velocità di somministrazione* può essere cruciale nel prevenire concentrazioni eccessive
		- **è quasi sempre una buona norma somministrare lentamente il farmaco per IV**
- Se, però, il farmaco viene somministrato in dose ripetute, raggiungerà la concentrazione media allo *steady-state*, ma non quella di picco; dunque
	- $\text{Dose di carico}=\text{Dose di mantenimento x Fattore di accumulo}$
# Modifica della concentrazione-bersaglio: applicazione della farmacocinetica e della farmacodinamica nell'individuazione della dose
>Stati morbosi possono modificare tutti i parametri enunciati successivamente. In tali casi, la capacità di prevedere tali modifiche è molto importante nel corretto inquadramento posologico.
## Variabili farmacocinetiche
### A. Assorbimento
- Il quantitativo di farmaco che entra nell'organismo dipende da
	- *compliance* del paziente allo schema posologico prescritto
	- velocità ed entità del trasferimento del farmaco stesso dal suo sito di somministrazione al plasma
- Riscontro di concentrazioni plasmatiche di farmaco alterate:
	- sovradosaggio o sottodosaggio rispetto alla dose prescritta
	- difetti di assorbimento dell'intestino tenue
	- (raramente) difetti nei processi di fabbricazione della particolare formulazione del farmaco
#### La strategia per il raggiungimento della concentrazione bersaglio
- Questa strategia consiste in un processo di ottimizzazione della dose sulla base di un surrogato della risposta terapeutica, costituito dalle concentrazioni del farmaco:
	1. scegliere la concentrazione-bersaglio, TC;
	2. stimare il volume di distribuzione (V) e la *clearance* (CL) sulla base dei valori standard di popolazione e delle correzioni da apportare per tener conto di fattori quali il peso e la funzionalità;
	3. somministrare una dose di carico o una dose di mantenimento calcolata a partire da TC, V e CL;
	4. misurare la risposta del paziente e la concentrazione del farmaco;
	5. rivedere i valori di V e/o CL sulla base delle concentrazioni misurate;
	6. ripetere i punti 3-5, aggiustando la dose stimata per raggiungere la TC.
### B. Clearance
- Una clearance anomala può essere dovuta a ridotta funzionalità di **rene**, **fegato** o **cuore**
	- indicatore della loro **funzionalità**, spesso con una precisione maggiore di quella ottenibile da altri reperti clinici o di laboratorio (così come la [[Patologia clinica - Rene#Clearance della creatinina|creatinina]] per la funzionalità renale)
	- es. quando la clearance renale cambia rapidamente, la stima della clearance degli ==antibiotici amminoglicosidici== può risultare un indicatore della filtrazione glomerulare più accurato rispetto alla creatinina
- Malattie epatiche
	- riducono la clearance e prolungano l'emivita di molti farmaci
	- anche se, per molti farmaci, non sono state riscontrate alterazioni significative (non sempre viene intaccata la clearance intrinseca epatica)
	- al momento *non si ha un indicatore affidabile* della funzione metabolica epatica
### C. Volume di distribuzione
- Il volume apparente di distribuzione riflette l'equilibrio esistente tra
	- il legame di farmaco ai tessuti (↓ concentrazioni plasmatiche e ↑ volume stesso)
	- il legame del farmaco con le proteine plasmatiche (↑ concentrazioni plasmatiche, ↓ volume di distribuzione)
- Variazioni del legame coi tessuti o le proteine plasmatiche possono modificare il V:
	- es. nei soggetti anziani si ha riduzione della massa muscolare; dunque  si ha riduzione del volume di distribuzione della ==digossina== (si lega alle proteine muscolari)
	- se il farmaco non penetra bene nel tessuto adiposo, può essere sovrastimato nei soggetti obesi (es. sempre la ==digossina==)
		- il discorso non vale per farmaci come la ==teofillina==, che ha volume di distribuzione simile a quello dell'acqua corporea (il tess. adiposo ha contenuto d'acqua simile agli altri tessuti); dunque il V sarà proporzionale al peso corporeo anche negli obesi
	- un abnorme aumento di liquidi (es. [[Edema|edema]], ascite, versamenti pleurici) può aumentare notevolmente il volume di distribuzione di farmaci quali la ==gentamicina== (idrofili e con piccoli V)
### D. Emivita
- Le differenze tra CL e $t_{1/2}$ svolgono un ruolo importante nella definizione dei meccanismi sottesi agli effetti di una condizione patologica sui processi di distribuzione ed eliminazione del farmaco
	- es. ==diazepam== → l'emivita aumenta con l'età, ma la clearance non cambia
		- con l'età varia il volume di distribuzione
## Variabili farmacodinamiche
### A. Effetto massimo
- Tutte le risposte farmacologiche mostrano un effetto massimo ($E_{max}$) oltre cui non si verificheranno più ulteriori aumenti della risposta
- Il suo riconoscimento serve ad evitare un concomitante rischio di tossicità
### B. Sensibilità
- La sensibilità dell'organo bersaglio alle varie concentrazioni del farmaco è indicata dalla $C_{50}$
	- una ridotta sensibilità può essere rivelata osservando, in un paziente non manifestante miglioramenti, concentrazioni di farmaco di solito terapeutiche
- La mancata risposta può essere dovuta a
	- alterazione di normali processi fisiologici (es. l'[[Iperkaliemia|iperkaliemia]] riduce la risposta alla ==digossina==)
	- antagonismo farmacologico (es. i ==bloccanti dei canali del calcio== riducono l'effetto inotropo della digossina)
- Un'aumentata sensibilità al farmaco è, di solito, segnalata da un'esagerata risposta a dosi piccole o modeste del farmaco
# L'interpretazione delle misure delle concentrazioni plasmatiche del farmaco
## Clearance
- Fattore singolo più importante condizionante le concentrazioni del farmaco
	- la sua interpretazione dipende dalla comprensione dei tre fattori che la influenzano:
		- dose
		- flusso ematico dell'organo
		- funzione intrinseca di fegato/rene
- Modifiche nel legame proteico possono indurre che ve ne sia stata una variazione, ma i fattori modificanti il legame proteico sono altri:
	1. **concentrazione dell'albumina**
		- farmaci come ==fenitoina==, ==salicilati== e la ==disopiramide==
		- i livelli sono bassi in molti stati patologici (conseguente riduzione della conc. tot. del farmaco)
	2. **concentrazione dell'$\alpha$-glicoproteina acida**
		- importante proteina di legame per farmaci come ==chinidina==, ==lidocaina== e ==propanololo==
			- ne causa modifiche della concentrazione, ma non l'eliminazione
		- risulta aumentata nelle infiammazioni acute
	3. **legame proteico a capacità limitata**
		- concentrazioni terapeutiche di ==salicilati==, ==disopiramide== e ==prednisolone== hanno rivelato legami proteici dipendenti dalla concentrazione
		- raggiunge la saturazione ad alte concentrazioni, di fatti aumenti della velocità di somministrazione non determineranno elevazioni illimitate della conc. tot.
## Anamnesi posologica
- Essenziale per ottenere il massimo valore informativo delle misure di concentrazione di un farmaco
## Quando effettuare il prelievo per le misure di concentrazione
>Le informazioni sulla velocità e sull'entità dell'assorbimento in un paziente sono raramente importanti dal punto di vista clinico
- Assorbimento
	- avviene, di solito, durante le prime 2 h dalla somministrazione (orale) del farmaco
		- tentativi di misurare concentrazioni di picco subito dopo una somministrazione orale non risultano utili e compromettono la validità della misura
	- varia con l'assunzione di cibo, la postura e l'attività fisica
	- alcuni farmaci (es. ==digossina== e ==litio==) impiegano parecchie ore per distribuirsi ai tessuti:
		- digossina → prelievo dei campioni almeno dopo 6 h dopo l'ultima dose
		- litio → prelievo dei campioni immediatamente prima della dose successiva (di solito 24 h dopo l'ultima)
	- gli ==antibiotici amminoglicosidici== si distribuiscono piuttosto rapidamente, ma è prudente aspettare un'ora dopo la somministrazione della dose prima del prelievo
- Clearance
	- viene facilmente stimata dalla velocità di somministrazione e dalla concentrazione media allo *steady-state*
		- i prelievi dovrebbero essere accuratamente programmati
		- una volta raggiunto (dopo almeno 3 emivite di regime posologico costante), un campione ottenuto in prossimità del punto medio dell'intervallo tra due somministrazioni sarà vicino alla conc. media di steady-state
## Stime iniziali del volume di distribuzione e della clearance
### A. Volume di distribuzione
- Se il paziente è obeso, il V dei farmaci che non penetrano facilmente il tessuto adiposo dovrebbe essere calcolato dalla massa libera da grasso (*fat-free mass*, FFM)
	- per la donna: FFM (kg) = $\frac{\text{37,99 x }HTM^2 \text{ x WT}}{\text{35,98 x }HTM^2 \text{ x WT}}$
	- per l'uomo: FFM (kg) = $\frac{\text{42,92 x }HTM^2 \text{ x WT}}{\text{30,93 x }HTM^2 \text{ x WT}}$
- Nei farmaci con volumi di distribuzione alterati in pazienti obesi, il peso va corretto come segue:
	1. sottrarre dal peso corporeo la stima del peso del liquido accumulato in eccesso;
	2. usare il restante peso corporeo "normale" per calcolare il volume di distribuzione;
	3. aggiungere alla fine, al volume di distribuzione così calcolato, 1 L/kg stimato di liquido accumulato
### B. Clearance
- Come detto prima, la clearance renale può essere stimata in base alla creatinina
- La velocità stimata di produzione della creatinina è, nella donna, l'85% del valore calcolato:
	- le donne hanno minori masse muscolari per kg di peso corporeo
	- la massa muscolare, come frazione del peso corporeo, diminuisce con l'età (appare nell'*equazione di Cockcroft-Gault*)
- La **diminuzione della funzionalità renale** con l'**età** è **indipendente dalla diminuzione della produzione di creatinina**
- Accorgimenti:
	- nei pazienti obesi, si dovrebbe usare la FFM piuttosto che il peso corporeo totale
	- nei pazienti con gravi patologie, dovrebbe essere introdotta una correzione che tenga conto del deperimento muscolare
## La revisione delle stime individuali del volume di distribuzione e della clearance
- Un approccio di buon senso confronta le predizioni dei parametri farmacocinetici e le concentrazioni attese coi valori effettivamente misurati:
	1. se le concentrazioni differiscono più del 20%, va effettuata una revisione di V e CL
	2. se la modifica calcolata risulta in un aumento superiore al 100% o in una riduzione superiore al 50% nel V e nella CL, è necessaria una ==revisione critica== di
		- assunti relativi al momento del prelievo
		- anamnesi posologica
- Es. se un paziente sta assumendo 0,25 mg/g di ==digossina==, la concentrazione attesa dovrebbe essere ca. 1 ng/mL
	- valore basato su
		- biodisponibilità media del 70%
		- clearance totale di ca. 7 L/h ($CL_{renale} = 4\text{ L/h}$, $CL_{non renale} = 3\text{ L/h}$)
	- se il paziente presenta un'[[Scompenso cardiaco|insufficienza cardiaca]], la clearance epatica (non renale) potrebbe risultare dimezzata per via di *congestione epatica* ed *ipossia*, in modo che la $CL_{tot}$ sia 5,5 L/h
		- la concentrazione attesa è, quindi, 1,3 ng/mL
	- questo approccio implica una correzione della CL a 3,5 L/h
		- più piccola del valore atteso, può essere l'espressione di un'ulteriore compromissione della funzione renale (sempre per l'ins. cardiaca)
>[!warning]
>Affinché il metodo enunciato risulti affidabile, dev'essere trascorso un periodo pari ad almeno una settimana di somministrazione regolare (cioè 3-4 emivite).







---
# Reference
[[Farmacologia]]



[^1]: *Steady state* (o "*stato stazionario*"): condizione in cui la concentrazione di un farmaco nel plasma rimane costante nel tempo, in seguito a somministrazioni ripetute o un'infusione continua. In questo stato, la velocità con cui il farmaco viene somministrato è uguale alla velocità con cui viene eliminato dal corpo.
[^2]: dal gr. _φλέψ_ (_flébs_) = vena e _klysis_ = lavaggio, infusione di sostanze liquide direttamente in una vena.