20-09-2023 17:38
Stato: #ideaLez
Tag: #Bioinformatica 

## Intro: La struttura dati
- Il progetto da sviluppare consiste nell'analisi di un set di dati di espressione genica.
- In particolare, l'insieme di dati o dataset D è definito come una tripla (S, G, class), dove S rappresenta un insieme di campioni, G un insieme di geni e class un attributo binario che indica la popolazione.
	- Per ogni campione s, D contiene la popolazione cui s appartiene e la misura dell'attività, ossia l'espressione, di ogni gene.
- Segue un esempio di dataset organizzato in forma tabellare
### La tabella
| D   | class | g1   | g2   | g3   | ... | gk  |
| --- | ----- | ---- | ---- | ---- | --- | --- |
| s1  | p1    | l1-1 | l1-2 | l1-3 | ... | l1-k   |
| sn  | pn    | ln-1 | ln-2 | ln-3 | ... | ln-k   | 

#### I parametri
- **P** indica la popolazione di appartanenza del campione **S***.
- **Li,j** indica il livello di espressione del gene **gj** per il campione **si**.

### Il codice
#### Funzione get per tutta la tabella
```python
def get2(series, value, class_values):

    gse = GEOparse.get_GEO(geo=series)
    platform_ids = gse.metadata['platform_id']
    samples = gse.phenotype_data.index#['geo_accession']
    classes = gse.phenotype_data['title']

    for i in classes.index:
        classes[i] = class_values[classes[i].find(value) < 0]
       
    columns = gse.gsms[samples[0]].table['ID_REF']
    ns = len(samples)
    ng = len(columns)
    ls = []

    for i in range(ns):
        s = gse.gsms[samples[i]].table
        c_drop = s.columns[s.columns != "VALUE"]
        s = s.drop(c_drop, axis=1).transpose()
        s.insert(0,"CLASS",classes[i])
        s.insert(1,"SAMPLE_ID",samples[i])
        ls.append(s)
    df = pd.concat(ls)
    df.index = [*range(ns)]
    df.columns = np.block([np.array(['CLASS', 'SAMPLE_ID']), columns.values])
    
    if len(platform_ids) != 1:
        warnings.warn("Sono presenti piattaforme multiple, viene restituita una lista di tabelle gpls")
        gpls = []
        for pl in platform_ids:
            gpls.append(gse.gpls[pl].table)
    else:
        gpls = gse.gpls[platform_ids[0]].table
    return df, gse, gpls

#ESEMPIO DI CHIAMATA VISTO A LEZIONE: df, gse, gpls = gse_data.get2('GSE68849','Influenza',['Influenza','No virus']) 
```

#### Ottenimento e stampa

```python

# Recupero tabella
df, gse, gpls = gse_databru.get2("GSE38783", "T0", ['Endothelial cell at T0', 'Endothelial cell at T1'])

print("-----------------------------------------------------------------")
dfs= df.sort_values("CLASS")
print(dfs)
print("-----------------------------------------------------------------\n")

#Eliminazione delle prime due colonne dato che non sono numeriche
print("-----------------------------------------------------------------")
print("Data Frame sorted")
dfs=df.sort_values("CLASS")
print(dfs)
COLS=dfs.columns[2:len(df.columns)]
print("-----------------------------------------------------------------")
print("-----------------------------------------------------------------\n")   
```



## Analisi
- Le attività da condurre sono atte ad estrarre dai dati informazioni circa i geni discriminanti, ovvero i geni potenzialmente più influenti nel distinguere tra le due popolazioni, e rientrano nella seguente suddivisione base
### FASE I: Studio del contesto
#### Analisi dello scenario
>Inizia con una descrizione dettagliata del dataset che stai utilizzando, inclusi i campioni, i geni e l'attributo di classe. Usa librerie come Pandas per caricare e visualizzare il dataset iniziale.

##### Funzione get per i parametri dello "scenario"
```python
def get(series, class_name):

    gse = GEOparse.get_GEO(geo=series)
    platform_ids = gse.metadata['platform_id']
    samples = gse.phenotype_data.index#['geo_accession']
    classes = gse.phenotype_data[class_name]
    columns = gse.gsms[samples[0]].table['ID_REF']
    
    ns = len(samples)
    ng = len(columns)
    ls = []

    for i in range(ns):
        s = gse.gsms[samples[i]].table
        c_drop = s.columns[s.columns != "VALUE"]
        s = s.drop(c_drop, axis=1).transpose()
        s.insert(0,"CLASS",classes[i])
        s.insert(1,"SAMPLE_ID",samples[i])
        ls.append(s)
    df = pd.concat(ls)
    df.index = [*range(ns)]
    df.columns = np.block([np.array(['CLASS', 'SAMPLE_ID']), columns.values])

    if len(platform_ids) != 1:
        warnings.warn("Sono presenti piattaforme multiple, viene restituita una lista di tabelle gpls")
        gpls = []
        for pl in platform_ids:
            gpls.append(gse.gpls[pl].table)
    else:
        gpls = gse.gpls[platform_ids[0]].table
    return df, gse, gpls

#ESEMPIO DI CHIAMATA VISTO A LEZIONE: df, gse, gpls = gse_data.get('GSE68849','characteristics_ch1.1.agent') 
```


###### Applicazione
```python
 #Metadati,  informazioni sui dati

print("-----------------------------------------------------------------")
print("INFORMAZIONI SUI DATI")
print("-----------------------------------------------------------------")
print("Le chiavi delle colonne sono:\n",gse.metadata.keys())
print("Il titolo è:\n",gse.metadata["title"])
print("La data di pubblicazione è:\n",gse.metadata["status"])
print("La data di presentazione è:\n",gse.metadata["submission_date"])
print("Ultimo aggiornamento avvenuto in data:\n",gse.metadata['last_update_date'])
print("Identificativo di Pubmed:\n",gse.metadata["pubmed_id"])
print("Sommario esperimento:\n",gse.metadata["summary"])
print("Metodologia esperimento:\n",gse.metadata["overall_design"])
print("Tipologia dati:\n",gse.metadata["type"])
print("I ricercatori che hanno contribuito sono:\n",gse.metadata["contributor"])
print("I codici di ogni singolo campione studiato sono:\n",gse.metadata["sample_id"])
print("I file supplementari ma non normalizzati sono:\n",gse.metadata["supplementary_file"])
print("La piattaforma utilizzata per ottenere i dati dal microarrayè :\n",gse.metadata["platform_id"])
print("ID della tassonomia della piattaforma, ovvero la specie presa in considerazione è:\n",gse.metadata["platform_taxid"])
print("Sito web in cui è presente una breve relazione del progetto:\n",gse.metadata["relation"])
print("-----------------------------------------------------------------")
print("-----------------------------------------------------------------\n")
  
#Dati sul fenotipo
print("-----------------------------------------------------------------")
print("INFORMAZIONI SUI FENOTIPI")
print("Le chiavi del fenotipo sono:\n",gse.phenotype_data.keys())
print("I titoli dei campioni sono:\n",gse.phenotype_data["title"])
print("I tipi di geni studiati sono:\n",gse.phenotype_data["type"])
print("I canali dei microarray sono:\n",gse.phenotype_data["channel_count"])
print("Le componenti studiate sono:\n",gse.phenotype_data["source_name_ch1"])
print("Organismo da cui è stato prelevato il  campione è:\n",gse.phenotype_data["organism_ch1"])

#Non ci sono informazioni su donatore e popolazione di appartenenza
#1)gse.phenotype_data["characteristics_ch1.0.donor"] 2)gse.phenotype_data["characteristics_ch1.1.agent"]
print("-----------------------------------------------------------------")
print("-----------------------------------------------------------------\n")


```
#### Analisi preliminare dei dati
>	Esegui un'analisi esplorativa dei dati, calcolando statistiche di base, creando grafici di distribuzione e heatmap per visualizzare le relazioni tra campioni e geni. Usa Pandas, Matplotlib e Seaborn per queste analisi iniziali.

##### Statistiche di base
```python

#Estrapolazione delle medie
m1=dfs[0:11][COLS].mean()
m2=dfs[12:23][COLS].mean()

#Differenza media in valore assoluto (abs)
print("-----------------------------------------------------------------")
print("Differenza media tra le popolazioni")
dm=np.abs(m1-m2)
print(dm)
print("-----------------------------------------------------------------")
print("-----------------------------------------------------------------\n")

#Ricerca della posizione in cui si trova il massimo valore
print("-----------------------------------------------------------------")
print("Massimo valore di differenza media tra le popolazioni")
amdm = np.argmax(dm)
print ()
print("La colonna con la massima differenza media è:\n",amdm)
print("-----------------------------------------------------------------")
print("-----------------------------------------------------------------\n")

#Verifica della sonda
print("La sonda corrispondente è:\n",COLS[amdm])
i=COLS[amdm]
sonda=gpls[gpls.ID==i]
print(sonda)
print(sonda.T) 
```
##### Grafici
###### Volcano plot
```python
#VULCANO-plot
print("-----------------------------------------------------------------")
print("Valori degli assi del Vulcano-plot")

#L'asse delle x rappresenta la differenza tra le medie delle due popolazioni
m1=dfs[0:18][COLS].mean()
m2=dfs[18:36][COLS].mean()
assex=dm=np.log2(m1/m2)
print("l'asse delle x è:\n",dm)

#L'asse delle y rappresenta il -log10 del p-value
assey=-1*np.log10(pv)
print("l'asse delle y è:\n",assey)
print("-----------------------------------------------------------------")
print("-----------------------------------------------------------------\n")

##############################

plt.plot(assex,assey,'b .')
plt.show()

#applicazione della correzione p-value con formazione Vulcano-plot annesso

assey2=-1*np.log10(pvcorretto)
plt.plot(assex,assey2,'b *')
plt.show()

#Trovare i punti esterni del grafico
id1 = (assex>1) +(assex<-1)
id2 = assey>2
ids_volcano = (id1*id2)
ids_volcano
np.sum(ids_volcano)
plt.plot(assex,assey,'r.',assex[ids_volcano],assey[ids_volcano],'g.')
plt.show()

id3 = (assex>1) +(assex<-1)
id4 = assey2>3.2
ids_volcano2 = (id3*id4)
ids_volcano2
np.sum(ids_volcano2)
plt.plot(assex,assey2,'r*',assex[ids_volcano2],assey2[ids_volcano2],'g*')
plt.show()

print("-----------------------------------------------------------------")

print("Punti esterni nel grafico")
print("I valori esterni sono:\n",np.sum(ids_volcano))

print("-----------------------------------------------------------------")
print("-----------------------------------------------------------------\n")
  

#GENI CORRISPONDENTI AL VOLCANO PLOT
print("-----------------------------------------------------------------")
print("GENI CORRISPONDENTI AL VOLCANO PLOT")

ids_volcano_20 = np.argsort(ids_volcano)[0:20]
ids_vp = COLS[ids_volcano_20]
genes_vp = []

for i in range(15):
    gvp = gpls[gpls.ID == ids_vp[i]]['Gene Symbol'].values[0]
    if str(gvp) != 'nan':
        genes_vp.append(gpls[gpls.ID == ids_vp[i]]["Gene Symbol"].values[0])
print("geni senza correzione:\n",genes_vp)

print("-----------------------------------------------------------------")

#############################################

ids_volcano2_20 = np.argsort(ids_volcano2)[0:20]
ids_vp = COLS[ids_volcano2_20]

genes_vp2 = []
for i in range(20):
    gvp2 = gpls[gpls.ID == ids_vp[i]]['Gene Symbol'].values[0]
    if str(gvp2) != 'nan':
        genes_vp2.append(gpls[gpls.ID == ids_vp[i]]["Gene Symbol"].values[0])
print("geni con correzione:\n",genes_vp2)

print("-----------------------------------------------------------------")
print("-----------------------------------------------------------------\n") 
```
###### Heatmap
```python
#Heat-Map
#dfs[0:12]
m1=dfs[0:18][COLS].mean()
m2=dfs[18:36][COLS].mean()
dm=np.abs(m1-m2)
np.argsort(dm)

n1=18
n2=18
score = dm/np.sqrt(dfs[0:18][COLS].var()*2/n1 + dfs[18:36][COLS].var()*2/n2)
ids = np.argsort(dm)

#HEATMAP delle prime 20 (grafico in verticale)
plt.imshow(dfs[COLS[ids[0:20]]],cmap=plt.cm.coolwarm)    #prime 20
plt.show()
  
#HEATMAP delle ultime 20 (grafico in verticale)
plt.imshow(dfs[COLS[ids[len(ids)-20:len(ids)]]],cmap=plt.cm.coolwarm)    #ultime 20
plt.show() 
```

### FASE II: Analisi
#### Estrazione di feature discriminanti
##### Ottenere dalle tecniche studiate un punteggio per ogni feature
> Utilizza le tecniche di selezione delle feature per identificare i geni discriminanti. Puoi utilizzare test statistici come il t-test o il Mann-Whitney U-test per le feature continue e la mutua informazione per le feature categoriche. Librerie come scikit-learn, scipy e PyOD possono essere utilizzate per queste analisi.
- Il punteggio può essere ad es il p-value

###### T-test
```python
#calcolare il p value utilizzando il t-student

s,pv= sc.stats.ttest_ind(dfs[0:11][COLS],dfs[12:23][COLS])  

#Riordinamento
print("-----------------------------------------------------------------")
print("P-values e indici dei p-value")
ids=np.argsort(pv)
print("I p-value calcolati con il t-test sono:\n",pv)
print("Gli indici ordinati dei p-value sono:\n",ids)

print("-----------------------------------------------------------------")
print("-----------------------------------------------------------------\n")

#Geni delle prime 20 colonne su cui applichiamo il T-test

ids_tt = COLS[ids[0:20]]
genes_tt = []

for i in range(20):
    genes_tt.append(gpls[gpls.ID == ids_tt[i]]['Gene Symbol'])

print("-----------------------------------------------------------------")

print("Stampa dello scraping sui geni")

print(genes_tt)
print("-----------------------------------------------------------------")
print("-----------------------------------------------------------------\n")
```
- Correzione di benjamini-hochberg
```python
#CORREZIONE DI BENJAMINI

print("-----------------------------------------------------------------")

print("Valori ids e p-value corretto")
posizionei=[*range(1,len(ids)+1)]
pvcorretto=(pv*posizionei)/(len(pv))
ids_corretto=np.argsort(pvcorretto)
print("ids e p-value corretti sono:\n",ids_corretto,pvcorretto)

print("-----------------------------------------------------------------")
print("-----------------------------------------------------------------\n")
```
###### Mutua informazione
```python
#CALCOLO MUTUA INFORMAZIONE
sc2 = sk.feature_selection.mutual_info_classif(dfs[COLS], dfs.CLASS)
np.sort(sc2)

print("-----------------------------------------------------------------")
print("Geni Mutua Informazione")

ids_m = np.argsort(sc2)[len(sc2) - 20:len(sc2)]
ids_mi = COLS[ids_m]

genes_mi = []
for i in range(20):
    gmi = gpls[gpls.ID == ids_mi[i]]['Gene Symbol'].values[0]
    if str(gmi) != 'nan':
        genes_mi.append(gpls[gpls.ID == ids_mi[i]]["Gene Symbol"].values[0])genes_mi

print(genes_mi)
print("-----------------------------------------------------------------")
print("-----------------------------------------------------------------\n") 
```


###### SAM test
```python
print("-----------------------------------------------------------------")
print("SAM-test")

P1 = dfs[0:18][COLS]
P2 = dfs[18:36][COLS]

#####################################

def sam(P1, P2, s0=1):
    n1 = len(P1)
    n2 = len(P2)
    s1 = ((P1 - P1.mean()) ** 2).sum()
    s2 = ((P2 - P2.mean()) ** 2).sum()
    a = (1 / n1 + 1 / n2) / (n1 + n2 - 2)
    s = np.sqrt(a * (s1 + s2))
    d = (P1.mean() - P2.mean()) / (s + s0)
    return d

print("SAMTEST1\n",sam(P1, P2))

#####################################
def score(df, n1, P=5, s0=1):
    d = sam(df[0:n1], df[n1:len(df)], s0)
    dp = np.zeros(df.shape[1])
    for p in range(P):
        dfp = df.sample(frac=1)
        dp = dp + sam(dfp[0:n1], dfp[n1:len(df)], s0)
        dp = dp / P
        return np.abs(d - dp)

sc1 = score(dfs[COLS], 18)
np.sort(sc1)
np.argsort(sc1)
print("SAMTEST2\n",sc1)

print("-----------------------------------------------------------------")
print("-----------------------------------------------------------------\n")  

######################################
sc1=score(dfs[COLS],5)
np.sort(sc1)  

#GENI CORRISPONDENTI AL SAM-TEST
print("-----------------------------------------------------------------")
print("Geni SAM-test")

ids_sam=np.argsort(sc1)[len(sc1)-20:len(sc1)]
ids_st = COLS[ids_sam]

genes_st = []
for i in range(20):
    gst = gpls[gpls.ID == ids_st[i]]['Gene Symbol'].values[0];
    if str(gst) != 'nan':
        genes_st.append(gpls[gpls.ID == ids_st[i]]["Gene Symbol"].values[0])genes_st
print(genes_st)

print("-----------------------------------------------------------------")
print("-----------------------------------------------------------------\n") 
```


###### Z-test
```python
#Z-test

print("-----------------------------------------------------------------")
print("Z-test")

n1=18
n2=18

##############################

score = dm / np.sqrt(dfs[0:18][COLS].var()**2 / n1 + dfs[13:23][COLS].var() * 2 / n2)
scoreO = np.sort(score)

##############################

pv1 = sc.stats.norm.cdf(score)
pv1_Or = np.sort(pv1)
i = [*range(1, len(pv1_Or) + 1)]
pv1_Orc = (pv1_Or / i) * len(pv1_Or)

##############################

pv2 = 1 - sc.stats.norm.cdf(score)
pv2_Or = np.sort(pv2)
i = [*range(1, len(pv2_Or) + 1)]
pv2_Orc = (pv2_Or / i) * len(pv2_Or)


print("Le medie che hanno una maggiore probabilità di esssere osservate sono:\n",pv2)
print("pv2 ordinato è:\n", pv2_Or)
print("pv2 corretto è:\n", pv2_Orc)
print("Le medie che hanno una minore probabilità di esssere osservate sono:\n", pv1)
print("il pv1 ordinato è:\n",pv2_Or)
print("il pv1 corretto è:\n",pv2_Orc)

print("-----------------------------------------------------------------")
print("-----------------------------------------------------------------\n")
  

#GENI CORRISPONDENTI DELLO Z-TEST

print("-----------------------------------------------------------------")
print("Geni dello Z-test")

pv2_oc_z = np.argsort(pvcorretto)[0:20]
ids_zt = COLS[pv2_oc_z]
genes_zt = []

for i in range(20):
    gzt = gpls[gpls.ID == ids_zt[i]]['Gene Symbol'].values[0]
    if str(gzt) != 'nan':
        genes_zt.append(gpls[gpls.ID == ids_zt[i]]["Gene Symbol"].values[0])genes_zt

print (genes_zt)
print("-----------------------------------------------------------------")
print("-----------------------------------------------------------------\n") 
```
###### U-test
```python
print("-----------------------------------------------------------------")
print ("Geni dell'U-test")

st, pv = sc.stats.mannwhitneyu(dfs[0:18][COLS], dfs[18:36][COLS])
pvU_O = np.sort(pvcorretto)
i = [*range(1, len(pvU_O) + 1)]
pvu_oc = (pvU_O/ i) * len(pvU_O)

ids_i = np.argsort(pvu_oc)[0:20]
ids_ut = COLS[ids_i]
genes_ut = []

for i in range(20)
    gut = gpls[gpls.ID == ids_ut[i]]['Gene Symbol'].values[0]
    if str(gut) != 'nan':
        genes_ut.append(gpls[gpls.ID == ids_ut[i]]["Gene Symbol"].values[0])genes_ut

print(genes_ut)

print("-----------------------------------------------------------------")
print("-----------------------------------------------------------------\n") 
```
##### Ordinare e selezionare le feature che massimizzano o che minimizzano il punteggio
> Ordina le feature in base al punteggio calcolato e seleziona le feature più significative. Puoi utilizzare Pandas per l'ordinamento e la selezione delle feature.

• Alcuni punteggi, come il p-value, vanno minimizzati
• Altri punteggi, come la mutua informazione, vanno massimizzati
##### Recap tecniche principali
###### Filtri:
- Test statistici quali T-test, U-test, SAM-test
- Mutua informazione
- Alberi di decisione
###### Golose:
> Considera l'applicazione di algoritmi di classificazione, clustering e outlier detection per ulteriori analisi. Ad esempio, puoi utilizzare algoritmi come Random Forest, Support Vector Machine o K-Means per la classificazione e il clustering. PyOD offre diverse tecniche per la rilevazione degli outlier.


- Tecniche di classificazione, clustering, outlier detection

### FASE III: Validazione dei risultati
#### Gene set enrichment analysis
- Utilizza GSEA per identificare i pathways biologici o le funzioni cellulari associate alle feature selezionate. Potresti utilizzare la libreria gseapy per questa fase.

```python
lista_tt = ['Bag3', 'Pqlc1', 'Xirp1', 'Gp5', 'Rab11fip5', 'Srpk3', 'Lims1', 'Nrap', 'Prpf19', 'Enah', 'Akirin2', 'Wfs1', 'Slmap', 'Pdcd7', 'Hspb8', 'Lmna', 'Wdr1', 'Hspa1l', 'Rfk', 'Map3k8', 'Mterfd3', 'Recql5', 'Tpsab1', 'Chst2', 'Trak2', 'Mrvi1', 'Fasl', 'Fam83f', 'Dlx1as', 'AI596198', 'Fgf6', 'Six5', 'Nr0b2', 'Dfna5', 'H2-K1', 'Ryr3', 'Vmn2r30', 'Ccdc186', 'Il5ra', 'Ate1', 'Stk11ip', 'Soat2', 'Phrf1', 'AA517864', 'Trpm7', 'C77027', 'Ankrd2', 'Fas', 'Il4', 'Il10', 'Cyth3', 'Ctsk', 'Traf4', 'Pck2', 'Rars2', 'Habp2', 'Tyms-ps', 'Fgfr2', 'Hoxb3', 'Nusap1', 'Myl2', 'Swap70', 'Nr1i3', 'Nisch', 'Mmp13', 'Mme', 'Cant1', 'Cyfip2', 'Dlx5', 'Eif4ebp1', 'Lclat1', 'Hsph1', 'Nme1', 'Prkar1a', 'Amot', 'Ly6f', 'Galnt4', 'Csrp3']

et = gp.enrichr(gene_list=lista_tt,gene_sets=['GO_Biological_Process_2021', 'GO_Molecular_Function_2021', 'GO_Cellular_Component_2021'])et.results
et_2 = gp.enrichr(gene_list=lista_tt, gene_sets=['GO_Biological_Process_2021'])

Lista_term_Ttest = []
for i in et_2.results["Term"]:
    Lista_term_Ttest.append(i)
print(Lista_term_Ttest)

print(et.results) 
```



#### Anomaly detection
> Tecnica utilizzata nell'ambito dell'analisi dei dati per identificare osservazioni o punti dati insoliti o anomali che si discostano significativamente dalla maggior parte degli altri dati. Questi punti dati possono rappresentare eventi rari, errori nei dati, comportamenti inusuali o casi di interesse speciale.
```python
od = pyod.models.knn.KNN(n_neighbors=3)
od.fit(dfs[0:10][COLS])
print(od.labels_)
```
#### Studio della letteratura collegata
- Confronta i risultati ottenuti con la letteratura scientifica per confermare le tue scoperte e acquisire una comprensione più approfondita del contesto biologico.
### FASE IV: Presentazione dei risultati
- Organizza i risultati in un rapporto o una presentazione che includa una descrizione dettagliata delle feature selezionate, le analisi effettuate e le interpretazioni biologiche.
- Assicurati di includere grafici, heatmap e visualizzazioni che supportino le tue conclusioni.
- Fornisci anche il codice sorgente in modo che i risultati possano essere riprodotti.




## In sintesi
In generale la scelta delle tecniche è guidata dai dati,quindi sulla base del dataset in esame è possibile definire liberamente quanto approfondire i punti sopra elencati.
La valutazione si basa sulla capacità di applicare con criterio le tecniche studiate, l'abilità di selezionare criticamente quali punti approfondire e ampio risalto viene dato alla fase di verifica della conoscenza biologica estratta




---
# References
[[Bioinformatica - Sbobine e slide]]