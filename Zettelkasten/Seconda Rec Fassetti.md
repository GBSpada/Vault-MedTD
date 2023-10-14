05-03-2023 01:00
Stato: #ideaLez
Tag: #Bioinformatica 


>[!warning]
>Bisogna lavorare con array ordinati per classe
## Z-test
- Per comprendere quanto significative siano le correlazioni statistiche trovate
- Sull'esempio della differenza di media infatti
    - Bisogna rapportare le differenze di medie (ad esempio) al valore totale
### Formula
```python
score = (m1-m2)/sqrt(var1^2/n1 + var2^2/n2) 
# n1,n2 = numero elementi nelle popolazioni
# var1,var2 = varianze delle popolazioni 1 e 2
```

#### Sul caso della differenza di medie
```python
n1 = 5
n2 = 5
score = dm/np.sqrt(dfs[0:5][cols].var()**2/n1 + dfs[0:5][cols].var()**2/n2)
```
##### Effetti
![Ritorno score|300](https://i.imgur.com/gSnFvlP.png)
- Ci vengono ritornati i valori di probabilità da inserire su una normale
#### Calcolo della normale
```python
sc.stats.norm.cdf(0.183853) 
OUTPUT: 0.5729...
```
- Il valore dello z test "0.183853" corrisponde ad una probabilità del 57%
```python
1-sc.stats.norm.cdf(0.183853)
OUTPUT 0.427064...
```
#### P.value
https://it.wikipedia.org/wiki/Valore_p
```python
pv1 = sc.stats.norm.cdf(score)
```
```python
pv2 = 1-sc.stats.norm.cdf(score) # per prendere la parte a destra della curva gaussiana
```
##### Effetti
![Ritorno ](https://i.imgur.com/L9vVfVt.png)
![](https://i.imgur.com/LcMrMis.png)

## Student T-test
- Ritorna i geni che hanno un comportamento più diverso tra le varie popolazioni
- Ipotesi di normalità della distribuzione
    - Assume che i valori siano su una normali
    - Di conseguenza che una somigli all'altra poiché entrambi espressione di una macropopolazione
```python
st,pv = sc.stats.ttest_ind(dfs[0:5][cols,dfs[5:10][cols]]) 
col_tt = np.argsort(pv)
col_tt[0:5]
cols[col_tt[0:5]]

OUTPUT
Colonne con i comportamenti più diversi
```
Maggiore è la differenza di media maggiore è la significatività
### Volcano plot
> Per individuare graficamente i geni che meritano di essere indagati.
> In genere in alto a destra ci stanno quelli più interessanti

![|400](https://www.htgmolecular.com/assets/htg/imgs/volcano_plot.JPG)
#### immagine bho
![Volcano plot|300](https://training.galaxyproject.org/training-material/topics/transcriptomics/images/rna-seq-viz-with-volcanoplot/volcanoplot_top10.png)

```python
plt.plot(np.log2(dfs[0:5].mean()/dfs[5:10].mean()),-1*mnp.log10(pv), '.')  # sull'asse delle x il logaritmo in base due del rapporto delle medie
```
#### Libreria plot
```python
import matplotlib 
```

### Heatmap
- Un grafico a cui possiamo passare le due popolazioni
- La colorazione corrisponde al livello di espressione genica
![Heatmap immagine|400](https://upload.wikimedia.org/wikipedia/commons/thumb/4/48/Heatmap.png/1200px-Heatmap.png)
```python
import gseapy.plot
gp.plot.heatmap(dfs[0:5][cols])
```
## Test U di *Man* e Whitney
<iframe height= 200 width= 100% src="https://it.wikipedia.org/wiki/Test_di_Wilcoxon-Mann-Whitney#:~:text=Il%20test%20di%20Wilcoxon%20e%20il%20test%20di%20Mann%2DWhitney%20(anche%20noto%20come%20test%20U%20di%20Mann%2DWhitney)%20sono%20due%20dei%20pi%C3%B9%20potenti%20test%20non%20parametrici%20per%20verificare%2C%20in%20presenza%20di%20valori%20ordinali%20provenienti%20da%20una%20distribuzione%20continua%2C%20se%20due%20campioni%20statistici%20provengono%20dalla%20stessa%20popolazione."></iframe>

### Formula

```python
st, pv = sc.stats.mannwithneyu(dfs[0:5][cols],dfs[5:10][cols])
# R sta per rango
U1 = n1*n2 + (n1*(n1+1))/2 - R1 
U2 = n1*n2 + (n1*(n1+1))/2 - R2
U = min(U1, U2)
```

### Esempio
```python
voti = [24,26,25,26,26,28,28] 
        s1 s2 s3 s4 s5 s6 s7
```
- 1 posto: studente6, studente7
- 2 posto: s2, s4, s5
- 3 posto: s3
- 4 posto: s1
Ranking classico (4,2,3,2,2,1,1)
#### Secondo Mann Whitney
- Si smezzano il posto
    - s6 = 1,5 
    - s7 = 1,5
- s2 = 4
- s4 = 4
- s5 = 4
- s3 = 6

## SAM Test: significance analysis for microarray
- Fondamentalmente differenza di media corretta sfruttando la varianza ed un fattore di scalatura
- ==A differenza degli altri restituisce uno score, non un p.value==
    - Conviene applicare la correzione di Benjamini-Hochberg
![[Benjamini Hochberg 1.pdf#page=28]]


```python
def sam(P1,P2, S0 = 1):
    # lunghezze delle popolazioni
    n1 = len(P1) 
    n2 = len(P2)
    # somma degli scarti quadratici dalla media (somma di varianze)
    s1 = (P1 - P1.mean())^2.sum() 
    s2 = (P2 - P2.mean())^2.sum()
    # fattore di scalatura
    a = (1/n1 + 1/n2)/(n1 + n2 -2) 
    # radice della somma delle somme di varianze per il fattore di scalatura
    s = np.sqrt(a*(s1 + s2)) 
    # statistica di test
    d = (P1.mean() - P2.mean())/(s + s0) 
    return d
```
### Esempio di utilizzo di funzioni con valore di default passato come argomento 
```python
# in questo caso la funzione necessita di 3 parametri
def sommak(x, y, k)
    return (x+y)*k
# in questo caso gli è stato passs
def sommak1(x, y, k=1) 
    return (x+y)*k


```
### Differenza di medie con le popolazioni prese a caso
#### Popolazione casuale/valori mischiati
```python
dfs = df.sort_values('CLASS')
dfp = dfs.sample(frac=0.5)
```
![Output frac randomico](https://i.imgur.com/Lo7CF2J.png)
#### Funzione per calcolo dello score
```python
def score(df, n1, P=5 , s0=1) # P: num popolazioni random da generare
    # sam test quindi popolazioni ordinate
    d = sam(df[0:n1], df[n1:len(df)], s0)
    # shape restituisce righe e colonne, con [1] solo colonne
    dp = np.zeros(df.shape[1]) 
    for p in range(P): # per 5 volte farà i sam su pop casuali
        dfp = dfs.sample(frac = 1)
        dp = dp + sam(dfp[0:1], dfp[n1:len(df)],s0)
    dp = dp/P
    return np.abs(d-dp)
```
##### Richiamo
- Colonne più significative secondo il sam test
```python
sc = score(dfs[cols], 5) 
```
    ###### Output
![Colonne più significative sam test](https://i.imgur.com/4KjKpKc.png)
###### ArgSort dell'output
```python
 
```

[[bioinfo]]