05-03-2023 19:29
Stato: #ideaLez
Tag: #Bioinformatica 


> [!Definizione]
> Per ontologia si intende, in un'accezione ristretta, **lo studio dell'essere come insieme degli enti, limitatamente a ciò che sembra esistere in concreto o risultare anche solo pensabile**, dunque secondo quanto sembrerebbe attestato dai sensi o dalla psiche.


- Nasce per uniformare i termini necessari a comunicare
- Diversa da albero perché si possono seguire più percorsi

==**Tre rappresentazioni**==
- Formale 
    - Segue delle regole standard e rigide per stabilire in maniera sintetica e precisa un concetto
- Condivisa
    - Utilizzare gli stessi termini condivisi dalla comunità scientifica in modo da intendere tutti lo stesso concetto
- Esplicita
    - Stabilire delle relazioni e dei vincoli dei concett

==**Dominio**==
>Del dominio si individuano i concetti che lo identificano
 L’ontologia è concentrata su un dominio particolare come se il mondo fosse diviso in domini

- ==Esempio==
    - Ontologia del dominio 
        - **Cibo**
    - Concetti
        - Frutta, Verdura, Cereali

- Nell'albero, salendo si incontrano i termini che *generalizzano*, scendendo si trovano i termini che specificano
    - Frutta è una *generalizzazione* di mele
    - Mele è una *specificazione*
- Commestibile è una *proprietà*
    - Proprietà di cibo quindi tutte le sottocategorie sono commestibili

==**Vocabolario controllato**==
- Fornisce un unico modo di rappresentare la conoscenze
- Fornito dai progettisti
- Si oppone al vocabolario naturale 
**Relazione**
- Terrestre è una sottocategoria di animale
- *Zampe* non è una sottocategoria ma è una *relazione di possedimento*

## Gene Ontology
- Acronimo = GO
- Per navigare esistono due strumenti 
    - **AmiGO**
        - La ricerca in automatico
    - **QuickGO**
        - All'interno di AmiGO
        - Più organizzato e meglio dal punto di vista grafico
- Possiede
    - Un *vocabolario controllato*
    - Annotazioni per diffondere i dati in maniera più fruibile per gli utenti
    - Gene enrichment
- I **termini** si dividono in
    - Termini associati alle **funzioni molecolari**
    - Associati alle **componenti cellulari**
    - Associati ai **processi biologici**
- **PROBLEMA**
    - Alcuni termini si possono trovare in più ontologie
        - ==Esempio== : citocromo C che è tutte e 3
    - La GO deve lavorare in modo indipendente dalla specie
    - Per evitare di dover cercare citocromo C in tutte e 3
        - Si raccolgono tutte le ontologie sotto un dominio fittizio che sarà quello di ricerca: **FAKE** 
- **Relazioni**
    - Sottocategorie 
        - Il trasporto del glucosio è una sottocategoria delle sostanze organiche 
    - è parte di 
        - Il nucleo della cellula ad esempio
    - Regola
        - Regola il processo principale
            - Tipo gli enzimi nella glicolisi
        - Opzionale nella ricerca
- **Informazioni**
    - **Essenziali**
        - Informazioni di base del concetto
    - **Opzionali**







---
# References
<iframe height= 800 width= 100% src="https://docs.google.com/document/d/1jJ0nbQuOsEvgCwtFmzpYQM00tYSs_x-V/edit "></iframe>