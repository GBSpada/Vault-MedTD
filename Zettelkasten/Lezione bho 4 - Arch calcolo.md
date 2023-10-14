05-05-2023 10:49
Stato: #ideaLez 
Tag: #SistemiOperativi

## Strutture dati del kernel
### Hash map
- Questa è la funzione di hash modulo (solo un tipo)
$$ h(k) = k\space MOD \space n$$
- Con una tabella hash prendi un valore con un tempo costante e con un tempo costante puoi ritrovarlo
- Se il numero degli elementi è piccolo il tempo è costante 
	- In seguito diventa n/k
	- A causa dei possibili conflitti, se ci sono due elementi uguali si inseriscono in un bucket e complica molto la cosa
- MOD sta per modulo
	- Qualsiasi numero modulo 10 darà da 0 e 9
#### Conflitti
- Sono molto più frequenti di quanto sembra
- Per evitarlo servono le cosiddette funzioni di ==hash perfette== o (consistent)
	- Garantiscono che non si creino accumuli e liste di collisione troppo grandi
- ![Liste di collisione](https://i.imgur.com/fG6wLXv.png)
	- In ognuno di questi nodi della lista di collisione è presente il valore k della chiave, il valore stesso e poi il puntatore all'indirizzo successivo
#### Nome utente e Password
- Ari tiempi
	- Si faceva un file disponibile all'amministratore con nomi utenti e password
- Step intermedio
	- Nel file non si inserisce la password associata all'user ma si utilizza l'output della funzione hash 
>[!warning] Nota bene :
> LE FUNZIONI DI HASH NON SONO INVERTIBILI QUINDI NON ESSENDO BIUNIVOCHE NON SI POSSONO OTTENERE LE PASSWORD A PARTIRE DALL'OUTPUT DELL'HASH
- Adesso si utilizzano le **tabelle di hash** per gestire milioni e milioni di utenti
#### Tabelle di hash
| -   | -   | -     | -    | -       | -               |     |
| --- | --- | ----- | ---- | ------- | --------------- | --- |
| x   | --> | PIPPO | H(P) | pointer | asifjoasjfoiajs |  pointer   | 
> Struttura dati fondamentale

### Bitmap
>Una bitmap è una stringa di n caratteri binari utilizzabile per rappresentarlo stato di n elementi (ad es.. 0 risorsa disponibile, 1 risorsa occupata

## Sistemi operativi open source
- Disponibili in formato sorgente e non come codice binario compilato
>[!warning] open-source != software libero:
>Software libero permette la modifica e la ridistribuzione senza costi
>Open source non necessariamente
### Richard stallman
- GNU e concetto di *copyleft*
### Linux
- Distro


# Progettazione sistema operativo
- Bisogna innanzitutto capire, a cosa serve? Che servizi offre?
- Servizi user oriented
	- Interfaccia utente
	- Esecuzione di programmi
	- Operazioni di I/O
		- Sistema di buffer-caching
			- Ogni periferica è collegata ha un controller collegato ad un buffer
		- Interfaccia generale per i driver dei dispositivi
		- Driver per dispositivi hardware specifici
	- Gestione del file system
		- In file è un insieme di informazioni definite dal suo creatore 
		- Le directory sono dei file particolari
		- Funzioni
			- Creare e cancellare file e directory
			- Creare link hard etc
			- Backup dei file su memorie non volatili etc
	- Comunicazioni
		- Permettono di scambiare informazioni fra processi di esecuzione ssullo stesso elaboratore
		- O memoria condivisa o scambio di messaggi
			- Nel primo caso i due processi hanno memorie sovrapposte e usano quell'area intersecata per scambiare dati
		- Funzioni di rilevamento di errori
			- Tenere traccia di eccessivo uso di CPU o di accesso ad aeree off limits 
	- Gestione memoria principale
		- La memoria è costituita d a una sequenza di word con i loro indirizzi
		- Il sistema operativo può
			- Tenere traccia di quali parti della memoria sono correttamente usate
			- Da aggiungere
	- Gestione della memoria secondaria
		- La memoria secondaria è fondamentalmente il disco rigido
		- Allocare la memoria 
			- Molto complesso, problemi di *frammentazione*
	- Accesso alla rete
		- Protocolli CPIP
- Funzioni addizionali
	- Allocazione di risorse
		- *Starvation*
			- Può capitare che a dei processi non vengano allocate proprio delle risorse
			- Può essere controllato
	- Accounting e contabilizzazione dell'uso delle risorse
	- Protezione e sicurezza
- Gestione dei processi
	- un Processo è un programma in esecuzione
		- Servono determinate Risorse
			- Cpu memoria file e dispositivi IO
	- L'OS fa queste attività
		- Creazione e terminazione di processi
		- Sospensione e ripristino dei processi
			- Non è cosa da niente
			- Killing
				- Deallocazione della memoria RAM
			- Sospensione
				- La ram viene salvata su disco
				- Può avvenire a diversi livelli
					- Il PC può sembrare spento ma la RAM viene tenuta accesa
					- In seguito viene fatta la copia della ram su disco e viene ricopiato in seguito sulla ram
		- Meccanismi per 
			- Sincronizzare i processi
			- Far comunicare i processi
				- BHOOOOOOOOo
			- Gestione dello stallo
				- Deadlock
				- tutti i processi del sistema sono bloccati in attesa di altri eventi che sono bloccati

# OS
## Interfaccia utente
- Sulla shell si possono scrivere file SH o BAT di script per eseguire operazioni ripetitive
- 






























---
# References 
[[Architetture e Sist. di calcolo - Slide e lezioni]]
