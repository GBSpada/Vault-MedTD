10-02-2023 18:36
Stato: #ideaL
Tag: #BasiDiDati #ProgettazioneBdd 

## Fasi del ciclo di vita di un sistema informativo
![Fasi del ciclo di vita di un sistema informativo.png|500](https://i.imgur.com/RIPaFDh.png)
## Raccolta e analisi dei requisiti
### Esempi
#### BDD bibliografica
![](https://i.imgur.com/7PIkOQG.png)
#### BDD società di formazione
![](https://i.imgur.com/r1kp3n3.png)
![](https://i.imgur.com/Udlguto.png)
![](https://i.imgur.com/u6P4dS5.png)
![](https://i.imgur.com/2GFfS59.png)
##### Frasi specifiche
- Di carattere generale
    - ![](https://i.imgur.com/6cCYwZG.png)
- Relative ai partecipanti
    - ![](https://i.imgur.com/4OFS8Fs.png)
- Relative ai datori di lavoro
    - ![](https://i.imgur.com/w5ExIcR.png)
- Relative ai corsi
    - ![](https://i.imgur.com/sd7QOyq.png)
- Relative a tipi specifici di partecipanti
    - ![](https://i.imgur.com/QzYovCn.png)
- Relative ai docenti
    - ![](https://i.imgur.com/jFKhfJd.png)


## Progettazione
- [[Introduzione BDD#Architettura del DBMS]]
![](https://i.imgur.com/cbXIcwT.png)
### Progettazione concettuale
- Modello ER 
    - [[Introduzione BDD#^2d402e]]
#### I costrutti del modello [[2. Metodologie e modelli]]
##### Entità
> Classe di oggetti (fatti, persone, cose) della realtà di interesse con proprietà comuni e con esistenza “autonoma”
- ![Entità](https://i.imgur.com/bU6Fti8.png)
- Entità vs Istanza (occorrenza) di entità
    - L'occorrenza è l'elemento della classe
    - Nello schema ER si rappresentano le entità, non le singole istanze


##### Relationship
> Legame logico fra due o più entità, rilevante nell'applicazione di interesse
![Entità-relazione](https://i.imgur.com/PfivGot.png)
- Esempi
    - Residenza
        - Fra persona e città
    - Frequenza
        - Tra studente e corso
###### Occorrenze di relazioni
![Occorrenze di relazioni](https://i.imgur.com/GB4NcBv.png)
> Una occorrenza di una relationship n-aria è una n-upla di occorrenze di entità, una per ciascuna entità coinvolta
> > Nel caso binario:
>    Una occorrenza di una relationship binaria è una coppia di occorrenze di entità, una per ciascuna entità coinvolta

**Nota bene**
- ==SU UNA RELAZIONE LE OCCORRENZE NON POSSONO ESSERE RIPETUTE==
- In quel caso basta fare una **Promozione di relazione** ![Promozione di una relazione](https://i.imgur.com/nTi2dso.png)
    ###### Due relazioni sulle stesse entità
```mermaid 
graph LR
A[impiegato]; B{Sede di lavoro}
C{Residenza}
D{Città}

A --> B --> D
A --> C --> D
```
###### Relazioni n-aria
```mermaid
graph TD
A[Fornitore]
B{Fornitura};
C[Prodotto]
D[Reparto]

A --> B --> D
C --> B
```



##### Attributo
##### Identificatore
##### Generalizzazione
#### Quali costrutti utilizzare?
- se ha proprietà significative e descrive oggetti con esistenza autonoma
    - entità
- se è semplice e non ha proprietà
    - attributo
- se correla due o più concetti 
    - relationship
- se è caso particolare di un altro 
    - generalizzazione
#### Design pattern
> Soluzioni a problemi comuni
- Reificazione di attributo di entità
    - ![](https://i.imgur.com/fPntfZf.png)
- Part of
    - ![](https://i.imgur.com/TQvacoz.png)
- Istance of
    - ![](https://i.imgur.com/Bqfoas5.png)
- Reificazione di relazione binaria
    - ![](https://i.imgur.com/7Kq5Xgp.png)
- Reificazione di relazione ricorsiva
    - ![](https://i.imgur.com/5KLI1pq.png)
- Reificazione di attributo relazione
    - ![](https://i.imgur.com/NuG4UEP.png)

#### Storicizzazione di un concetto
##### Esempio 1
![](https://i.imgur.com/ZT5bdip.png)

##### Esempio 2
![](https://i.imgur.com/PcebzDU.png)
    ##### Evoluzione di concetto
![](https://i.imgur.com/NGZCExX.png)
#### Relazione ternaria
![](https://i.imgur.com/mCry0QR.png)

#### Esempio società di formazione
- Schema scheletro
    - ![](https://i.imgur.com/fkpn1kU.png)
- Aggiungendo partecipanti, datori di lavoro e tipi specifici di partecipanti
    - ![](https://i.imgur.com/jLVsVTL.png)
- 
### Progettazione logica




## Modelli
![[Introduzione BDD#^4e46aa]]

---
# References 

[[Basi di dati - Slide Irina]]

<iframe height= 800 width= 100% src="https://drive.google.com/file/d/1jp6lrOaQe2fMydmt-ioW3OlYnpRFywCp/view?usp=share_link"></iframe>
<iframe height= 800 width= 100% src="https://drive.google.com/file/d/1mCxAnAOS_2G24mIrtJktxYYLay1XtJf0/view?usp=share_link"></iframe>
