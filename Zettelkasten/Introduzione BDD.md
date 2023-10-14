10-02-2023 15:40
Stato: #ideaL
Tag: #BasiDiDati #ProgettazioneBdd

## Intro
- Il dato 
    - è una rappresentazione oggettiva e non interpretata della realtà
        - **No elaborazione**
    - **Dizionario**
        - Ciò che è immediatamente presente alla conoscenza, prima di ogni elaborazione; (in informatica) elementi di informazione costituiti da simboli che debbono essere elaborati
- L’informazione
    -  è una visione della realtà che deriva dall’**elaborazione e interpretazione dei dati**, ossia il significato che associamo ai dati attraverso la contestualizzazione.
    - **Dizionario**
        - Notizia, dato o elemento che consente di avere conoscenza più o meno esatta di fatti, situazioni, modi di essere
## Piramide conoscenza
![[Piramide conoscenza.png|500]]

## File utilizzati
- Insieme ordinato di byte
    - Il contenuto viene interpretato associando i byte ad un significato
#### CSV
- Dati separati da virgola
#### Markup
- Definisci struttura e il significato con tag
## Sistema informativo 
- Componente di una organizzazione che gestisce le informazioni di interesse, cioé utilizzate per il perseguimento degli scopi dell’organizzazione
### Elementi principali
- Dati
    - Materia prima-grezza
    - Più stabili dei sistemi che li gestiscono
- Procedure
    - Per acquisire, elaborare dati e produrre informazioni
- Persone
    - Sovraintendono a tali procedure
- Infrastruttura 
    - Mezzi e strumenti necessari
- Principi di fondo
    - Caratterizzano il sistema e ne determinano il comportamento
### Sanitario
- Un insieme ordinato di elementi che raccolgono, eleborano, scambiano ed archiviano dati, con lo scopo di fornire informazioni alle persone che svolgano attività legate alla salute umana ed animale.
### Rispetto all'informatico
![[sistema informatico vs informativo.png]]
## Base di dati
> Insieme organizzato di dati utilizzati per il supporto allo svolgimento delle attività di un ente (azienda, ufficio, persona)
- Condivise
    - Sono infatti integrate tra più settori
- Crea collegamento tra gli archivi
    - ![[Dati anagrafici pazienti.png|300]]

### Organizzazione
- Ogni base di dati ha
    - Schema
        - Ne descrive la struttura (aspetto intensionale)
            - Es.: le intestazioni delle tabelle
    - Istanza
        - I valori attuali, che possono cambiare anche molto rapidamente (aspetto estensionale)
            - Es.: il “corpo” di ciascuna tabella

## DBMS
- Sistema di gestione dati
    - Db2, oracle, sqlserver, mysql, postgresql, access
- Vantaggi
    - Affidabilità
    - Ripristino
    - Moli di dati
    - Condivisione
    - **Riduzione**
        - Ridondanza
            - Una ripetizione
        - Inconsistenza
            - Due istanze sono diverse
- Differenze coi File system
    - Nei sistemi operativi
    - Forme di condivisione basilari
    - I DBMS ti forniscono più strumenti in maniera integrata
### Descrizione dei dati
- Nei DBMS
    - Esiste una porzione della base di dati (il catalogo o dizionario) che contiene una descrizione centralizzata dei dati, che può essere utilizzata dai vari programmi
- **I dati vengono rappresentati a più livelli**
    - Ti permette di rendere indipendenti i dati dalla loro rappresentazione fisica
        - Così modifichi i dati senza necessariamente modificare i programmi
#### Modello dei dati
- Due principali ^4e46aa
    - *Logici* ^a86e6b
        - Maggiore livello di astrazione
            - ==Relazionale==
                - **Tabelle**
            - A oggetti
        - A puntatori, riferimenti espliciti
            - ==Reticolare==
                - A **grafo**
            - ==Gerarchico==
                - Ad **albero**
        - Semistrutturati e flessibili
            - **NoSQL**
    - *Concettuali*
        - **MODELLO ER** ^2d402e
        - Rappresentano i dati in modo indipendente da ogni sistema 
            - Descrivono i concetti del mondo reale
            - Non sono comprese componenti realizzative
        - Importanza
            - Servono per ragionare sulla realtà di interesse indipendentemente dagli aspetti realizzativi
            - Prevedono efficaci rappresentazioni grafiche 
            - Permettono di rappresentare le classi di oggetti di interesse e le loro correlazioni
- **GRAFI**
> Un grafo G è una coppia (V, E) dove V è un insieme di elementi e E ⊆ V × V è un sottoinsieme del prodotto cartesiano di V per se stesso. Gli elementi di V sono detti nodi (o vertici) e quelli di E sono detti archi (o spigoli).  Es. V={1,2,3,4}, E={(1,2),(2,3),(2,4),(3,4), (2,1),(3,2),(4,2),(4,3)}
- Distinguiamo in
    - **Non orientati**
        - La relazione E è simmetrica, quindi per ogni arco (a,b) in E esiste anche un arco (b,a) in E
        - **Alberi**
            -  Grafo connesso e privo di cicli
                - Due vertici infatti sono connessi da uno e un solo cammino
                - Origina da un *nodo radice*
                    - Non ha archi entranti
    - **Orientati**
        - Dove la relazione E non è simmetrica ed esiste una relazione d'ordine tra i nodi (graficamente, al posto di linee si usano le frecce).

### Architettura del DBMS
![[Architettura standard ANSI per DBMS.png|400]]
#### Schema logico
- Non dipende da quello fisico
    - Una tabella va bene su carta o su pc
#### Schema interno o fisico
> Rappresentazione dello schema logico per mezzo di strutture di memorizzazione
#### Schema esterno
> Descrizione di parte della base di dati
- Ciò a cui si fa accesso
- Due forme
    - **Indipendenza fisica**
        - Il livello logico ed esterno non dipendono dal fisico
    - **Indipendenza logica**
        - Il livello esterno non dipende dal logico
### Gestione delle transazioni
> Insieme di operazioni da considerare indivisibile *atomico*, corretto anche in presenza di *concorrenza* e con effetti *definitivi*
#### Atomiche
- Se prelevi soldi da A devi necessariamente versare su B
#### Concorrenti
- Accesso o modifica simultanea dei dati
- L'accesso alla variabile implica che sia necessariamente occupata
- SEMAFORI
#### Permanenti
- La conclusione positiva di una transazione corrisponde ad un impegno eterno

---

# References 

[[Basi di dati - Slide Irina]]
![[1_Introduzione (lez 1-3) 1.pdf]]
