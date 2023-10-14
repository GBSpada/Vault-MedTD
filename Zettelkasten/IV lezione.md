06-03-2023 20:31
Stato: #ideaLez
Tag: #Bioinformatica 

# Fasta

- Fast-Alignment
- Estensione .fasta
## Costituzione
- 2 righe
    - Obbligatoria
        - Descrive la sequenza e comincia con il carattere >
    - Opzionali
        - Seguita da un identificatore della sequenza id3
        - Seguita da uno spazio + un commento sul tipo di sequenza
### Esempio
>\> id3 348u32brtb42fhjbekqf
>        La II riga è la sequenza vera e propria

> \> id3 organismo 
> ACTAAGTCCAGATT
> TGCAAATGCTGAT

## Importazione file fasta in python
### Lib
```python
import Bio 
import Bio.SeqIO 
```
### Iteratore
```python 
f=Bio.SeqIO.parse("example.fasta", "fasta")
```

- .parse analizza il contenuto del file e controlla che la sintassi sia corretta
- f rappresenta un iteratore che permette di scorrere nel file
#### Lista di sequenze
```python
seqs = list(Bio.SeqIO.parse("example.fasta", "fasta"))
```
#### Dizionario
> [!warning]
> Da errore per sequenze con stesso id


```python
seqs_dict = Bio.SeqIO.to_dict(Bio.SeqIO.parse("example.fasta", "fasta"))

seqs_dict["id1"] # per accedere alla prima seq
```

#### Singola sequenza
```python
seqs = list (Bio.SeqIO.read("example.fasta", "fasta")) 
```

# BLAST
- Migliora la velocità senza perdere in termini di qualità
- Metodo ==EURISTICO== 
    - [[Euristica|Definizione di euristica]]
- Nasce per cercare in un dato

```python
l = (len(seqDNA) - (len(seqDNA) % 3)) - 1
# l - 2 corrisponde alla posizione 0 della sequenza mentre l - 1 corrisponde alla posizione 1 della medesima
```






---



# References
[[Bioinformatica - Sbobine e slide]]