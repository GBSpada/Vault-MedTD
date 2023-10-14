29-01-2023 15:17
Stato: #ideaLez 
Tag: #InfoAngelob 

![[Pasted image 20230129154303.png]]
- Ricominciamo dai booleani
    - [[Concetto di Variabile]]
    - Può essere o vero o falso
    - Ti permette di porre delle condizioni
        - **Esempio**
            - Scrivi un programma che stampi a schermo tutti i numeri fino a 100 ma da 10 in poi stampa solo le decine (10,20,30)
            - **Output richiesto**
                - 1,2,3......10,20,30.....100
            - **Ragionamento**
                - Si potrebbe teoricamente spezzare in due parti
                    - Una per incrementi unitari
                    - L'altra per incrementi di decine
                - In realtà ci servono
                    - Un modo per ripetere operazioni
                        - **Cicli**
                            - Susseguirsi di operazioni
                            - **WHILE**
                            - **FOR**
                                - Alternativo
                                - In termini matematici è l'ooperatore per ogni
                                    - ![[Pasted image 20230129153653.png]]
                                - Pseudocodice
                                    - ![[Pasted image 20230129153720.png]]
                                - In C
                                    - ![[Pasted image 20230129153801.png]]
                    - Un modo per controllare le operazioni
                        - **Condizioni**
                            - Interrogativi
                                - Presentano **condizioni**
                                    - Descritte tramite **operatori**: == , != , >= , <=
                                - Hanno **risultati** veri o falsi: entrano in gioco i **bool**
                                - Due tipi principali
                                    - **IF**
                                        - Singolo
                                        - Implica una alternativa
                                            - **SE-ALLORA**
                                            - Se non vedi un else comunque in assembly c'è un NOP
                                    - **WHILE**
                                        - Iterato/ripetuto
                                        - Può essere sia un ciclo sia un interrogativo
            - **Codice**
                - [[Esempio cicli e condizioni]]
--- 