25-02-2023 17:38
Stato: #ideaL
Tag: #BasiDiDati 

Si vuole realizzare una base di dati inerente all’organizzazione di un sistema di smistamento all’interno del sistema sanitario calabrese, che si occupa di smistare ogni paziente in base alle sue esigenze di cura. Sul territorio calabrese ci sono varie STRUTTURE OSPEDALIERE: essi sono caratterizzati da DENOMINAZIONE, ID struttura (unico per ogni centro ospedaliero), INDIRIZZO (con VIA, N° CIVICO, CAP), NUMERO TELEFONICO, … . Inoltre, ad ogni PROVINCIA deve essere associato almeno un numero minimo di strutture. La provincia ha come identificatore il NOME. In ogni centro vengono ospitati vari PAZIENTI, caratterizzati da NOME, COGNOME, GENERE (maschio o femmina), CF o CODICE IDENTIFICATIVO, NUMERO TESSERA SANIATRIA, INDIRIZZO DI RESIDENZA (con CITTA’, PROVINCIA, VIA, N° CIVICO, CAP), PATOLOGIA (NOME, GRADO DI COMPLESSITÀ), PERMANENZA (DATA D’INGRESSO, DATA DI USCITA). Durante la permanenza al centro, ciascun paziente è assegnato ad un REPARTO, identificato da UN NOME SPECIFICO + NUMERO DI REPARTO specifico, NUMERO PAZIENTI OSPITATI. In aggiunta, i pazienti si dividono in PAZIENTI REGISTRATI o PAZIENTI NON REGISTRATI (usufruiscono del centro per la prima volta). Ad ogni paziente è associata una TERAPIA da eseguire, questa è caratterizzata da: FARMACI DA ASSUMERE, INTERVENTO DA ESEGUIRE ecc Ogni INTERVENTO di un paziente viene effettuato presso 1 ospedale e possiede NUMERO PROGRESSIVO (identificante), TIPO INTERVENTO, REPARTO e DATA. Si vuole delineare anche il PERSONALE OPERATIVO, identificato da CF, E-MAIL, NOME, COGNOME, TELEFONO. Il personale si divide in: MEDICI (NOME, COGNOME, CF, GRADO, SPECIALISTICA, STIPENDIO, ), PROFESSIONISTI SANITARI ( NOME, COGNOME, CF, SPECIALISTICA, STIPENDIO)


---
# References 

[[Basi di dati - Slide Irina]]
