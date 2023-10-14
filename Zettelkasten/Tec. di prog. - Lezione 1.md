12-06-2023 14:46
Stato: #ideaLez 
Tag: #TecnicheDiProgrammazione 

# Strutture dati
> Per tipo di dati si intende la semantica interpretativa dei booleani in memoria
> Per struttura dati si intende una "mappatura logica dei dati" da un livello logico ad un livello fisico con informazioni omogenee
## Array/vettore
> Struttura dati omogenea che contiene un numero finito n di elementi dello stesso tipo
### Su python
```python
lista = [] 
```
#### Accesso ai dati
- Si fa mediante indice 
## Record
> Struttura dati eterogenea o omogenea, gli elementi sono detti campi
- Su python devono essere definite delle classi specifiche per questa struttura dati
### Cartella clinica in pseudocodice
```C
struct cartella clinica begin
	int numero cartella
	char paziente[100]
	...
	struct diagnosi di ingresso begin
		char data e ora[20]
		char icd9[5]
		char note[1000]
	end struct
	...
end struct
```
#### L'accesso ai campi
- Si fa mediante l'operatore "" . ""
```python
cartella_clinica.paziente # accede al campo paziente
```
## Alberi
>-  Struttura dati gerarchica in cui **ogni nodo ha un padre e ogni padre ha \[0,n\[ figli**
>-  Chi non ha figli è definito **foglia**
>-  Una parte di albero è definita sottoalbero

### Esempio in medicina: classificazione ICD10 delle malattie
![ICD10](https://i.imgur.com/EbWupJb.png)

## Grafi
> Insieme di elementi detti nodi o vertici  collegati fra loro da archi o lati eventualmente dotati di etichette


# OOP in python
> **LINGUAGGIO UTILE BASIC**:
> Attributi: proprietà dell'oggetto
> Metodi: azioni che si possono fare, fondamentalmente si tratta di funzioni interne alle classi 
> Costruttore: un metodo che permette di costruire oggetti a cui si possono assegnare i suoi attributi

## Step1: definire la classe
### Esempio 1: classe computer
- Definiamo una classe computer
```python
class PC: # class nome_classe
# Costruttore che letteralmente assembla i pc con le loro componenti
    def __init__(self, m, c, g, r, hd): 
        self.marca = m # la variabile m di input sarà la marca
        self.cpu = c # same fino all'hard disk
        self.gpu = g
        self.ram = r
        self.hard_disk = hd 
# Primo metodo, una funzione che specifica un'azione che si può fare con il computer
    def accensione(self):
        print("Il computer " + self.marca + " si sta accendendo")
        
# Secondo metodo
    def calcolo(self):
        print("Il computer " + self.cpu + " sta calcolando")
        
# Adesso creiamo l'oggetto pc_1 sfruttando il costruttore della classe PC e gli assegnamo tutti gli attributi del caso
pc_1 = PC("Asus", "i7 12th gen", "nvidia", 8, 1000)
# Richiamiamo il metodo accensione della classe PC che al posto di self.marca printerà pc_1.marca
pc_1.accensione()
```


### Sintassi più dettagliatamente e generica

```python
class NomeClasse:
    def __init__(self, att1, att2):
        self.attributo1 = att1
        self.attributo2 = att2

    def metodo1(self):
        # codice del metodo 1

    def metodo2(self):
        # codice del metodo 2
 
```

### Spiegazione riga per riga

#### Definizione della classe
- `class NomeClasse:` definisce una classe chiamata "NomeClasse".
	- Gli oggetti (i vari pc_1, pc_2 etc) che verranno fatti si chiameranno col nome della classe
#### Costruttore e attributi
- `def __init__(self, attributo1, attributo2)`: Questo è il metodo speciale chiamato "costruttore". Quando si crea un oggetto, esso potrà avere come attributi quelli che sono stati dati inizialmente al costruttore (i parametri tra parentesi cioè attributo1 e attributo2). Il attributo `self` rappresenta l'oggetto stesso ed è come se lo usassimo per omettere di scrivere ogni volta il nome della classe 
	- ad esempio noi usiamo self.cpu MA SOLO NELLA DEFINIZIONE DELLA CLASSE per dire PC.cpu)
- `self.attributo1 = l'attributo 1` e `self.attributo = letteralmente l'attributo2`: Queste righe assegnano i valori dei parametri di input agli attributi dell'oggetto. L'uso di `self` indica che gli attributi appartengono all'oggetto stesso. 
- Ad esempio: self.gpu = g per dire che se da input ti passo g allora g sarà la variabile assegnata all'attributo gpu

####  Metodi
- `def metodo1(self):` e `def metodo2(self):`: Questi sono metodi definiti nella classe. I metodi sono funzioni associate agli oggetti di una classe e possono accedere agli attributi dell'oggetto utilizzando `self`.
	- All'interno dei metodi, è possibile accedere agli attributi dell'oggetto utilizzando `self.nome_attributo` e chiamare altri metodi della classe utilizzando `self.nome_metodo()`.
		- Ad esempio in un metodo possiamo scrivere: print("cacca di colore" + self.colorecacca +"complimenti") e ci ritorna l'attributo colorecacca

## Step 2: creare oggetti e lavorare con la classe

### Definire un oggetto in una classe
`oggetto = NomeClasse(argomento1, argomento2)`
- Questo crea un nuovo oggetto istanza della classe "NomeClasse", inizializzando gli attributi con i valori specificati tramite gli argomenti.
	- pc_1 = PC(e tutti gli attributi del caso da assegnare)
### Ottenere gli attributi e i metodi di un oggetto
- Si possono quindi accedere agli attributi e chiamare i metodi dell'oggetto utilizzando la seguente sintassi:
`oggetto.nome_attributo ; oggetto.nome_metodo()`

## Step 3: recap con codice del prof

```python
class physioPump: # define
	def__init__ (self, stat, id, value):
	# status on/off, id identificativo, valore della pressione: sono tutti gli attributi che verranno assegnati agli oggetti della classe physioPump
		self.status = stat # la variabile di input stato rappresenterà lo status dell'oggetto
		self.identità = id # la variabile di input id rappresenterà l'identità dell'oggetto
		self.value = value # la variabile di input value rappresenterà il valore dell'oggetto
	def whoAmI(self): # metodo che permette di stampare gli attributi identità,status e value dell'oggetto
		print(self.identità)
		print(self.status)
		print(self.value)
	def setMyStatus(self,s): # metodo per far si che l'attributo status sia impostato alla variabile s di input
		self.status = s # se lo stato era on e noi da input cambiamo la variabile s in off allora richiamando il metodo setMyStatus resettiamo status che quindi sarà off
	def setMyValue(self, val):
		self.value = val # stessa storia del precedente metodo, aggiornamo il value utilizzando quello della variabile val

new = PhysioPump(1,2,3) # non serve a una minchia lo ha messo così a caso
newPump = PhysioPump("spento", 123, 0) #  Assegno questi attributi alla pompa
newPump.whoAmI() # Printa questi attributi
newPump.setMyStatus("Acceso") # cambia l'attributo status
newPump.setMyValue(12) # cambia l'attributo value
newPump.whoAmI() # printa di nuovo gli attributi per farti vedere che sono cambiati
```

# Modello a runtime per la gestione della memoria

>[!info]- Definizione chat gpt
Un modello a runtime è un tipo di modello che viene utilizzato durante l'esecuzione di un programma o di un sistema per prendere decisioni o svolgere determinate azioni in tempo reale. Immagina di avere un programma che deve adattarsi alle condizioni o alle situazioni che si presentano durante il suo funzionamento. Il modello a runtime viene utilizzato per comprendere l'ambiente in cui il programma si trova e per prendere decisioni basate su quelle informazioni.
Per fare un esempio più concreto, immagina di guidare una macchina. Durante il tragitto, la macchina deve adattarsi al traffico, alle condizioni meteorologiche e alle varie situazioni che si presentano lungo la strada. Il modello a runtime in questo caso è rappresentato dalle informazioni che il conducente raccoglie in tempo reale: come il traffico attuale, le condizioni della strada, la velocità degli altri veicoli, ecc. Utilizzando queste informazioni, il conducente prende decisioni come cambiare corsia, rallentare o accelerare.
In modo simile, un modello a runtime in informatica è come un "conducente" che monitora l'esecuzione di un programma e prende decisioni in base alle informazioni che vengono raccolte durante l'esecuzione. Ad esempio, un'applicazione potrebbe adattare il suo comportamento in base alla velocità della connessione di rete, alle risorse disponibili nel sistema, all'interazione dell'utente o a qualsiasi altra informazione rilevante per il suo funzionamento.
Il modello a runtime può essere implementato utilizzando algoritmi, regole o logiche specifiche che consentono al programma di valutare le condizioni in tempo reale e di agire di conseguenza. L'obiettivo è quello di rendere il programma più adattabile, efficiente e in grado di prendere decisioni appropriate durante l'esecuzione, senza la necessità di modifiche o riavvii del programma stesso.
In sostanza, un modello a runtime è come una guida che aiuta un programma a prendere decisioni in tempo reale, basandosi sulle informazioni che vengono rilevate durante il suo funzionamento, consentendo così al programma di adattarsi alle circostanze e migliorare la sua performance o esperienza utente.>

## Esecuzione di metodi: RECORD DI ATTIVAZIONE SU UNO STACK
>[!warning] Nota bene :
>La gestione della memoria per l'esecuzione dei metodi si basa sui record di attivazione

### Record di attivazione in generale
>Struttura dati utilizzata nel contesto dell'esecuzione di programmi per gestire l'invocazione di una funzione o di un procedimento (detto anche subroutine o metodo)

#### Contenuto del record
> Un record di attivazione memorizza le **informazioni necessarie a una singola attivazione di un metodo**

- Queste informazioni consentono alla funzione di sapere da dove è stata chiamata, accedere ai parametri e alle variabili locali, e tornare al punto di chiamata una volta completata l'esecuzione.

1. Indirizzo di ritorno: L'indirizzo di memoria del punto nel programma da cui è stata chiamata la funzione. Questo consente alla funzione di sapere dove tornare una volta completata l'esecuzione.
2. Puntatore alla funzione: Un riferimento alla funzione stessa che viene chiamata. Questo consente alla funzione di accedere al proprio codice e ai propri dati.
3. Parametri: I valori dei parametri passati alla funzione durante la sua chiamata. Questi parametri vengono solitamente memorizzati nello stack di chiamate insieme al record di attivazione.
4. Variabili locali: Le variabili locali dichiarate all'interno della funzione. Queste variabili vengono allocate nello stack di chiamate e vengono memorizzate nel record di attivazione per essere accessibili durante l'esecuzione della funzione.
5. Spazio per i dati temporanei: Lo spazio riservato per le variabili temporanee o per altri dati temporanei utilizzati durante l'esecuzione della funzione.
6. Puntatore al record di attivazione precedente: Un riferimento al record di attivazione dell'invocante della funzione. Questo consente di creare una catena di record di attivazione per gestire le chiamate annidate di funzioni.

#### Esecuzione di un metodo
- All’invocazione, viene allocato un record di attivazione
- Alla terminazione, il record di attivazione viene deallocato

### Esempio della classe quadruplo

```python
class Quadruplo:
    def somma(a, b):
        c = a + b
        return c

    @staticmethod
    def doppio(n):
        d = Quadruplo.somma(n, n)
        return d

    @staticmethod
    def main():
        a, b, c = 0, 0, 0
        a = 2
        b = Quadruplo.somma(a, a)
        c = Quadruplo.doppio(b)

# Chiamata alla funzione main
Quadruplo.main()
```
#### Step di esecuzione
1. Si accede alla classe quadruplo
```python
Quadruplo. 
```
2. Si esegue il main ![recordatt2](https://i.imgur.com/D5ugxDv.png)
```python
.main()
a, b, c = 0, 0, 0
```
3. Assegnazione a una variabile: a = 2 ![recordatt3](https://i.imgur.com/ig68lLM.png)
```python
a = 2 
```
4. Il metodo main invoca il metodo somma ![recordatt4](https://i.imgur.com/PM0Vedt.png)
```python
b = Quadruplo.somma(a,a) 
```
5. viene eseguita l'assegnazione c = a+b ![recordatt5](https://i.imgur.com/osa32VS.png)
```python
def somma(a, b):
        c = a + b
```
6. Viene eseguita l'istruzione **return c** di **somma** ![](https://i.imgur.com/xw285Oi.png)
```python
vabb si capisce quale pezzo di codice viene letto 
```
7. Assegnazione definitiva nel main della variabile b ![](https://i.imgur.com/jbpenkz.png)
8. Invocazione nel **main** del metodo **doppio** ![Recordatt8](https://i.imgur.com/2bCLWUW.png)
```python
c = Quadruplo.doppio(b)
```
9. Invocazione e attivazione di somma ![RecordAtt9](https://i.imgur.com/7iabECF.png)
```python
d = Quadruplo.somma(n, n)
```
10. Viene eseguita l'assegnazione di c ![recordatt10](https://i.imgur.com/8idMQNK.png)
```python
c = a + b
```
11. Viene eseguita l'istruzione **return c** ![Recordatt11](https://i.imgur.com/5YcCGug.png)
```python
return c 
```
12. Viene completata l'assegnazione alla variabile **d** ![Recod att12](https://i.imgur.com/Gvuy855.png)
13. Viene eseguita l'istruzione **return d** di **doppio** ![recordatt13](https://i.imgur.com/smiHRb2.png)
 ```python
 return d
```
14. assegnazione alla variabile c definitiva ![recordatt14](https://i.imgur.com/JhPtaqB.png)
```
No codice, si continua nel main
```
15. termina anche l'esecuzione del metodo **main** ![Recordatt15](https://i.imgur.com/tJ6USY4.png)
```python
No code 
```

---
# References 
[[Tecniche di programmazione - Lezioni e tirocinio]]
![[Lezion1__Introduzione.pdf]]