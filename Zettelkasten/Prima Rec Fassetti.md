03-03-2023 19:25
Stato: #ideaLez
Tag: #Bioinformatica 

## GEO in generale
- I dati
    - Sono forniti dalla piattaforma GEO
        - Sviluppata dalla ncbi
        - Gene expression omnibus
        - Contiene dataset di espressione genica
            - Utilizzati da vari centri di ricerca nel mondo 
            - Sottomessi alla piattaforma GEO, per potere essere studiati dai loro ingegneri, in seguito ad esperimenti, in maniera tale da poter essere sfruttati in seguito da chi ne ha bisogno
    - Guidano l'analisi
        - Data-Driven approach

## Parsing, analisi del file
Si usa il pacchetto GEOparse per la lettura dei dati sulla piattaforma GEO
```Python
import GEOparse
```
Ogni gene è codificato da un codice che mettiamo tra le virgolette nel metodo get_GEO
I dati vengono salvati nella variabile gse
**Sintassi**
```python
gse = GEOparse,get_GEO(geo='') 
```
**Esempio**
```python
 gse = GEOparse.get_GEO(geo='GSE68849') 
```
### Struttura dei dati: 
#### Metadati
Informazioni generali che riguardano i dati, si ottengono tramite il comando
```python
gse.metadata  
```
Per ottenere la lista delle chiavi del *dictionary* metadata:
```python
gse.metadata.keys()
```
Per ottenere, ad esempioe , il **titolo** della stringa
```python
 gse.metadata['codice GSE'] # Inserire chiave da aprire per la lettura
```
##### Pubmed
> [!Warning]
> PubmedID
>     PubMed è un sito medico che raccoglie pubblicazioni
```python
gse.metadata['pubmedID'] 
    # Per ottenere il lavoro scientifico/esperimento del gruppo di ricerca in questione
```
##### ID dei campioni umani usati
```python
gse.metadata['sample_id'] 
```
##### Responsabile dei dati
```python
gse.metadata['contact_name'] 
```
##### Codice tassonomico
###### Piattaforma
```python
gse.metadata['platform_taxid'] # Per capire su quale specie lavora la piattaforma

```
###### Campione
```python
gse.metadata['sample_taxid'] # Per capire di che specie è il campione
```

#### GSE: Serie 
##### Libreria
Per tutte le operazioni bisogna importare il pacchetto gse_data
```python
import gse.data 
```
##### Fenotipo: informazioni specifiche del campione
```python
gse.phenotype_data['title']
gse.phenotype_data['geo_accession']
gse.phenotype_data['status']
gse.phenotype_data['submission_date']
gse.phenotype_data['last_update_date']
gse.phenotype_data['type']
gse.phenotype_data['channel_count']
gse.phenotype_data['source_name_ch1']
gse.phenotype_data['organism_ch1']
gse.phenotype_data['taxid_ch1']
gse.phenotype_data['characteristics_ch1.0.donor']
gse.phenotype_data['characteristics_ch1.1.agent']  # di quale popolazione fa parte il campione
gse.phenotype_data['characteristics_ch1.2.cell_type']  # 
gse.phenotype_data['treatment_protocotol_ch1]
gse.phenotype_data['growth_protocol_ch1']
gse.phenotype_data['molecule_ch1']
```
##### Campioni
```python
gse.gsms # lista campioni/samples
```
###### Singolo campione 
```python
s = gse.gsms[samples[identificativo]] # identificativo è semplicemente un numero (1,2,3 etc)
s.table # informazioni sulla tabella
s.table.columns # informazioni sulle colonne
#### GPL: Piattaforma
    #### DF: Dataframe

Studio del contesto
##### Campioni

```
##### [[Microarray|Nel caso dei microarray]]: sonda
Il comando sulle colonne fatto prima ritorna come risultato:
```python
Index(['ID_REF', 'VALUE']) # Ci sono altri attributi che non servono in questo caso
```

|ID_REF | VALUE |
|----- | ------- |
|ILM_1762337 | 215.2480|


>ID_REF
> Codice identificativo della sonda
> Non si tratta dell'identificativo del gene

>Value
>Valore di espressione del gene

#### GSE: Piattaforma
```python
gse.gpls # Informazioni sulle piattaforme 

```
###### Metadati della piattaforma
```python
gse.metadata['platform_id'] # id piattaforma ad esempio {'GPL10558'}
gse.gpls['platform_ID'].metadata # estarae i dati
```
###### Tabella
```python
gse.gpls['platform_id'].table 
```
**Colonne tabella**
```python
 gse.gpls['platform_id'].table.columns # elenco colonne
```
##### Codice per la sonda
```python
# GPL = codice piattaforma
# GSE = Codice che ci ha dato
sonda = gse.gpls['GPL'].table[gse.gpls['GPL'].table.ID == 1]
df, gse, gpls = gse_data.get('GSE', 'characteristics_ch1.1.agent') 
sonda = gpls[gpls.ID == 1]
```
- df
    - Dati organizzati in tabelle
- gs
    - Tutti i dati
- gpls
    - Info piattaforme
- GSE******
    - un codice di serie
- Characteristics_ch etc
    - Restituisce un data array e poi restituisce il resto
#### DF: Dataframe
##### Sort
```python
dfs = df.sort_values() # Ordina i dati per classe
```

Esempio 

| CLASS       | DATI    |
| ----------- | ------- |
| Influenza A | Dato 8  | 
| Influenza A | Dato 3  |
| Influenza A | Dato 6  |
| Influenza A | Dato 1  |
| Influenza B | Dato 30 |

##### Media
All'interno del dataframe ordinato ad esempio
```python
dfs[0:5].mean()
```
Il problema è che le prime 2 colonne non sono numeriche, non potendo farci la media :
```python
cols = df.columns[2:len(df.columns)] 
```
###### Medie delle popolazioni 1 e 2
```python
m1 = dfs[0:5][cols].mean() 
m2 = dfs[5:10][cols].mean() 
```
###### Valore assoluto della differenza tra le medie
```python
dm = np.abs(m1-m2) # dm = differenza medie
```
##### Posizione e valore del massimo
```python
np.max(x) # valore massimo
np.argmax(x) # argomento/posizione del valore massimo
```
Se al posto di x mettessimo dm restituirebbe la
##### Indici dei valori in ordine crescente
```python
t = np.array([int1,int2,int2 etc]) # l'array 
z = np.sort(t) # un array fatto dagli elementi di t in ordine crescente
r = np.argsort(t) # un array composto dagli indici degli elementi dell'array Z
```
##### Simboli
```python
top = t[n-10:n] # i valori massimi
syms = []
for g in top:
    syms.append(gpls[gpls.ID == cols[g]].Symbol)
```