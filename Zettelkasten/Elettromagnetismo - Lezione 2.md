---
stato: "#ideaLez"
tags:
  - "#Elettromagnetismo"
  - Fisica
---
0-10-2023 11:43

--- 

## Modelli matematici per descrivere le grandezze fisiche
### Campi scalari
> Grandezze fisiche rappresentabili mediante una funzione vettoriale$$\phi(x,y,z) = x^2 + 2y$$ 
### Campi vettoriali
> 	Grandezze fisiche rappresentabili mediante una funzione vettoriale $$ A(x,y,z) = \hat{x}Ax(x,y,z) + \hat{y}Ay(x,y,z) + \hat{z}Az(x,y,z) $$

#### Vettore
##### Modulo
$$|a| = \sqrt{{a_x}^2 + {a_y}^2 + {a_z}^2}$$
### Numeri complessi
$$z = a+ jb$$
$j = \sqrt{-1}$ + $a = \text{parte reale}$ + $b = \text{parte immaginaria}$
- b va a modellare la parte immaginaria o la fase
#### Rappresentazione in forma cartesiana
> Fondamentale per teoria dei circuiti
##### Caso dell'impedenza
$$Impedenza = R+j\omega L$$
- La resistenza $R$ è la parte reale
	- Nelle resistenze infatti si ha un valore reale che corrisponde ad un valore ==attivo== di impedenza
- Le altre componenti $j\omega L$ sono immaginarie 
	- Negli **induttori** o ad esempio **capacitatori** si ha un'impedenza di tipo ==reattivo== perché dipende dalla potenza e non è legato ad una 
#### Rappresentazione in forma polare


## Octave

```
# pulizia output
clc  

# assegnazione variabili
a = 1 # ritorna a = 1 (come nel terminale python)
a = 1; # il punto e virgola permette di omettere il return

# liberare una variabile
clear a

# definizione di un vettore
b = [1 2 3] # vettore riga
c = [1;2;3] # vettore colonna
## Comandi per generare vettori

### linspace
t = linspace(a,b,c)  # start, numero di punti, intervallo
#### esempio
t = linspace(0,10,101) # trova 10 punti a partire da zero a 101 con un intervallo regolare

### parametri di un vettore t 
t = 0:1:10 # a partire da 0 tutti i numeri con una spaziatura di 1 
#### output 
0 1 2 3 4 4 5 6 7 8 9 10

### Grafico onda
#### Equazione
t = linspace(0,10,101);
A = 2;
f = 1/3; # per i grossi numeri 1e6 è equivalente a f = 1*(10^6) = f = 100000
s = A*cos(2*pi*f*t) 

#### Grafico
figure
plot(t,s) # t sta sull'asse delle ascisse, s sulle ordinate
```

## Modulazione
### FM
$s(t) = Acos(2\pi ft)$
- Al posto di f si mette il risultato un altro segnale 
### AM
```
t = linspace(0,10,101);
A = sin(2*pi*f*t); # utilizziamo un vettore invece di uno scalare come input dell'ampiezza dell'onda
f = 1/3;
sm = A.*cos(2*pi*f*t)  # usare il punto è necessario per effettuare il prodotto cartesiano tra i due vettori
```

```
t = linspace(0,10,101);
A = rand(1,length(t)) # generare un vettore aleatorio per randomizzare il segnale di input dell'ampiezza del vettore
f = 1/3;
sm = A.*cos(2*pi*f*t)  # usare il punto è necessario per effettuare il prodotto cartesiano tra i due vettori
```






---

# Reference
[[Elettromagnetismo e teoria dei circuiti - Lezioni]]














--- 
# Reference