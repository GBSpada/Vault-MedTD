27-02-2023 22:16
Stato: #ideaL
Tag: #BasiDiDati 

## Intro
SQL è un linguaggio con varie funzionalità, contiene si ail DDL (Data Definition Language) che il DML ( Data Manipulation Language), Ne esistono varie versione e dal 1983 è diventato uno standard.
## Comandi
### Creazione
#### Create table
> Definisce uno schema di relazione e ne crea un'istanza vuota in cui specifica ATTRIBUTI,DOMINI e VINCOLI
##### Dominio
I domini si dividono in
##### ELEMENTARI o PREDEFINITI
```
- CARATTERE (caratteri o stringhe)
- NUMERICI (esatti e approsimati)
- DATA
- ORA
- INTERVALLI DI TEMPO 
- BOOLEANI o BLOB\CLOB (binary\character large object {per grandi immagini e testi})
```

- ##### Definiti dall'utente
> Semplici ma riutilizzabili
```
[CREATE DOMAIN Voto AS SMALLINT DEFAULT NULL CHECK(value>=18 AND value<=30)]
```
##### Vincoli intrarelazionali
- Not null
- unique 
    - definisce chiavi
- PRIMARY KEY 
    - se forma da solo la chiave
- CHECK
##### Vincoli interrelazionali
###### CHECK
##### REFERENCES 
> Crea un legame tra i valori di un attributo di una tabella schiavo e quelli di un  attributo di una tabella matrice esterna
###### Sintassi
```
ATTRIBUTO(slave) dominio REFERENCES tabella master (ATTRIBUTO(master))
``` 
##### FOREIGN KEY
> Crea un legame tra i valori di più attributi di una tabella schiavo e quelli di più attributi di una tabella master esterna
###### Sintassi
Va indicato dopo la definizione degli attributi !
```   
FOREIGN KEY (ATTRIBUTI(s)) REFERENCES ATTRIBUTI(M)
```
#### Modifiche degli schemi
##### ALTER
##### DROP
#### Definizione degli indici
Rilevante per le prestazioni ma è a livello fisico e non logico, in passato era importante perché era l'unico mezzo per definire le chiavi
```  
CREATE INDEX
```

### Interrogazione
#### Operazioni sui dati
``` 
SELECT
    interrogazione [lista attributi]
FROM 
    interrogazione [lista tabelle]
WHERE 
    interrogazione [condizione]
INSERT
    modifica "into" [inserisce]
DELETE
    modifica "from" [cancella]
UPDATE
    modifica [aggiornamento]
ABBREVIAZIONI
    esempio
        SELECT 
             P.Nome AS N
             P.Reddito AS R
         FROM
             Persone AS P
         WHERE
             P.Eta<30
```

#### [[6_SQL.pdf#page=21|Condizione like]]
#### AND o OR 
Applicati ad una condizione per congiungerne un'altra
#### Distinct 
Usato per selezionare i valori diversi in una occorrenza o relazione di occorrenze select distinct cognome nome
#### JOIN
Collega le due tabelle
##### FROM E JOIN
==FROM== viene usato se si ricerca in una sola relazione, il DBMS utilizza ==JOIN== se ci sono più relazioni nella ricerca (o prodotti cartesiani). Il ==JOIN== inoltre può essere esplicitato o meno come comando ed avere condizione esplicita con :
```ON [FROM Tabella {.. JOIN Tabella ON Cond JOIN}   ```
>La capacità dei DBMS di ottimizzare le interrogazioni rende non necessario preoccuparsi dell'efficienza quando si specifica un interrogazione è perciò più importante preoccuparsi della chiarezza
##### NATURAL JOIN
Collega le tabelle con la loro relazione comune 
##### OUTER JOIN 
Collega le due tabelle mediante la condizione espressa con l'ON.
- **Left, Right, Full** dichiarano qual è il metro di paragone
#### ORDER BY
Ordina i risultati mediante la condizione/attributo esplicitato
```ORDER BY Nome ```
#### UNION
Consente di unire i risultati e i duplicati vengono eliminati anche dalle proiezioni a meno che non si usi l'==ALL== 
- Si fa solo a livello esterno e non nidificato
#### EXCEPT
Consente di effettuare una differenza
- si può esprimere anche con i SELECT nidificati
#### INTERSECT
Consente di fare un'intersezione

#### INTERROGAZIONI NIDIFICATE
Permettono il confronto tra un attributo e il risultato di una sotto interrogazione 
```
SELECT Nome, Reddito
FROM Persone
WHERE Nome = 
    SELECT Padre
    FROM Paternità
    WHERE Figlio = "Franco" 
```
#### ANY, IN, ALL 
##### IN e NOT IN
Possono essere usati per costruire intersezioni e differenze di tabelle
##### ANY 
Usato nelle clausole
##### WHERE 
Si tratta di un confronto che risulta vero se è vero per almeno uno dei valori dell'elenco, 
##### ALL 
Vero se il confronto è vero per tutti gli elementi

#### EXIST 
Controlla se vengono restituite righe dall'esecuzione della sottoquery, è vera se la SELECT nidificata produce righe come risultato.
==NOT EXIST fa il contrario== QUANTIFICAZIONE ESISTENZIALE
#### OPERATORI AGGREGATI 
##### COUNT: 
Conteggio occorrenze 
```   
SELECT count(*) as 
```
##### AVG 
Average ci da una media delle occorrenze 
```   
SELECT avg(attributo)as...
```
##### MIN 
Restituisce le occorrenze minime
```   
es il reddito minimo
WHERE Reddito = SELECT min(Reddito) 
                FROM Persone 
```
##### MAX 
Ci restituisce le occorrenze massime.
```   
es reddito massimo
WHERE Reddito = SELECT max(Reddito) 
                FROM Persone
```

##### Operatori aggregati e raggruppamenti 
###### GROUP BY 
Raggruppa le occorrenze uguali
###### HAVING
Condizione che indica di avere una determinata caratteristica

#### INSERIMENTO
l'ordinamento degli attributi e dei valori è significativo le due liste debbono avere lo stesso numero di elementi, se la lista di attributi è ammessa si fa riferimento a tutti gli attributi della relazione secondo l'ordine in cui sono stati definiti, se la lista degli attributi non contiene tutti gli attributi della relazione per gli attributi della relazione per gli altri viene inserito NULL e un valore di default.

[[6_SQL.pdf#page=21|Condizione like]]
[[Cuomo SQL.pdf]]

---
## Cose TOTO
![|400](https://i.imgur.com/WSbAPYU.png)

```   
SELECT DISTINCT Z.Padre
FROM Paternita as Z
WHERE NOT EXISTS (
    SELECT *
    FROM Paternita as W, Persone as P
    WHERE W.Padre = Z.Padre AND W.Figlio= P.Nome
    AND P.Reddito <= 20)
```

- I padri per i quali non esiste neanche un figlio che guadagna <=20

- La query per ogni padre di paternità legge le tabelle per mezzo della sottoquery quando il padre indicato con W è uguale a quello indicato con Z e allo stesso tempo P (nome della tabella persone) è uguale a quello di W e il reddito della persona P (e quindi vista la prendente uguaglianza anche al figlio del padre Z e W) è >= 20

Una dopo l’altra si considerano le righe della tabella paternità:

-        Fissata la riga _r,_ essa determina il valore di Z,padre e di Z.figlio. se il suo risultato non è una tabella vuota allora il risultato di Z.padre farà parte del risultato della query.

-        Quindi la sottoquery considera il Reddito di un solo figlio, quello della riga r

### COMANDO CHECK

CHECK è un comando che ti permette di aggiungere un vincolo (o condizione) alla tua query, per esempio controlla che la tua età sia giusta facendo 
```
Check (Età= Anno_DI_Nascita + Anno_Corrente)
```

#### Viste

Create View *NomeVista* [*lista attributi*] AS

Select …

From …

Where

**Select ***

**From *Nome Vista***

Questo secondo comando ti permette di eseguire la vista, un po' come se fosse un richiamo di funzione

Esempio pratico:

CREATE VIEW ImpiegatiAmmin (Nome, Cognome, Stipendio) AS

SELECT Nome,Cognome,Stipendio

FROM Impiegato

Where Dipart = 'Amministrazione’ AND Stipendio > 10

SELECT *

FROM ImpiegatiAmmin

-Equivale a (e viene eseguita come)

SELECT Nome,Cognome,Stipendio

FROM Impiegato

WHERE Dipart = 'Amministrazione’ AND Stipendio > 10

Aggiornamento Viste (LEGGI IL TESTO PARI PASSO ALL’ESEMPIO PER CAPIRE)

Basta aggiungere dopo la stringa messa in where *nome valore occorrenza da voler cambiare in caso di necessità* “With  Check Option”, successivamente quando si vuole cambiare il valore si usa il comando “Uptade *nome view*” poi sotto “set *nome occorrenza*= *nuovo valore occorrenza*” e poi aggiungi in quale tupla della tabella va modificato questo valore con “where *Attributo* = *Valore Occorrenza attributo*”

È usato solo su viste che contengono aggiornamenti alle tabelle di base e assicurano che solo i dati visibili nella vista possano essere inseriti,  aggiornati o eliminati dalla vista.

create view ImpiegatiAmminPoveri as

select *

from ImpiegatiAmmin

where Stipendio < 50

with check option

update ImpiegatiAmminPoveri

set stipendio = 60

where cognome = Rossi'
# References 

[[Basi di dati - Slide Irina]]
![[6_SQL.pdf]]