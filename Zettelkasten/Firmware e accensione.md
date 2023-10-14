21-07-2023 04:00
Stato: #ideaLez 
Tag: #ArchitettureDiCalcolo #SistemiOperativi

> Programma atto ad inizializzare i diversi componenti del sistema (registri, controllori etc), ponte tra hardware e software

>[!warning] Nota bene :
>Deve caricare nella memoria il sistema operativo e avviarne l'esecuzione
>- Recupera il kernel attraverso il master boot record dell'hard disk e lo carica nella RAM

## Step
1. Si accende la macchina
2. La ROM esegue il bootstrap
3. Il bootstrap controlla che ci sia la RAM
4. Il bootstrap carica il sistema operativo in RAM
5. Parte l'esecuzione del kernel del SO
6. Il kernel avvia il caricamento dei programmi aggiuntivi, dei programmi di sistema e degli applicativi




---
# References 
[[Architetture e Sist. di calcolo - Sbobine]]
