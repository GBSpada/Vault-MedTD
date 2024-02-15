---
stato: "#Lezioni"
tags:
  - "#DataMining"
  - "#DataScience"
---
02-10-2023 10:07

--- 

## Intro
### Basic
```R
rm(list=ls()) # rimuove tutte le variabili nell'ambiente di lavoro
somma <- 15
somma + 20
```

### Vettore
```R
vettore <- c(1,4,3) # c serve a concatenare
somma_vettore <- sum(vettore)
lunghezza_vettore <- length(vettore)
```

### Costruzione grafici e funzioni

#### Scatter plot
- Grafico di dispersione (scatter plot) utilizzando i vettori "lunghezza" e "altezza" come dati. I parametri `xlab` e `ylab` vengono utilizzati per etichettare gli assi x e y del grafico con "lunghezza della scarpa (cm)" e "altezza (cm)", rispettivamente. Il parametro `col="red"` imposta il colore dei punti nel grafico su rosso, e `pch=16` imposta il tipo di punto come un cerchio vuoto.

```R
lunghezza <- c(29.7, 29.7, 31.4, 31.8, 27.6) 
altezza <- c(175.3,177.8,185.4,175.3,172.7)

plot(lunghezza, altezza, xlab="lungezza della scarpa (cm)", ylab="altezza (cm)", col="red",pch=16 )

```


### Esercizi
```R
data <- read.delim("adipose_Visceral2.txt")
# Questa istruzione legge i dati da un file chiamato "adipose_Visceral2.txt" e li memorizza nel dataframe "data". Presumibilmente, il file contiene dati tabellari separati da tabulazioni o spazi, poiché stai utilizzando `read.delim`

head(data)
# Questo comando visualizza le prime righe del dataframe "my_data".

kruskal.test(RHOA ~ AGE, data=data)
# Il comando `kruskal.test` viene utilizzato per eseguire un test Kruskal-Wallis per determinare se ci sono differenze significative tra i gruppi di dati.

boxplot(data$RHOA~data$AGE,main='RHOA',xlab='AGE',ylab='TPM',names.arg=c('20-29','30-39','40-49','50-59','60-69','70-79'),col=brewer.pal(n=6,name="PuRd"))
# Questa istruzione crea un boxplot per visualizzare la distribuzione della variabile "RHOA" in base alla variabile "AGE". I parametri `main`, `xlab`, e `ylab` vengono utilizzati per etichettare il grafico. Il parametro `names.arg` specifica le etichette sull'asse x per ciascun intervallo di età. Il parametro `col` imposta il colore del boxplot utilizzando una paletta di colori ("PuRd" da "RColorBrewer").

dev.off()
# Questa istruzione chiude il dispositivo grafico corrente. È spesso utilizzata quando si salva un grafico in un file o quando si desidera passare a un diverso dispositivo grafico.
```


---
# Reference: [[Data mining e Bioimmagini - Libri]]