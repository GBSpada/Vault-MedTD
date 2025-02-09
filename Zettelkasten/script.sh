
#!/bin/bash

# Nome della cartella da creare
target_dir="Cartella_Fisiologia_Resp"

# Creare la cartella, se non esiste già
mkdir -p "$target_dir"

# Directory corrente (puoi modificarla)
source_dir="/home/gbspada/Vault-MedTD/Zettelkasten"

# Cercare i file che contengono entrambe le stringhe e copiarli nella Cartella_Fisiologia_Digerente
find "$source_dir" -type f | while read -r file; do
  # Controlla se il file contiene entrambe le stringhe
  if grep -qF "Fisiologia" "$file" 2>/dev/null && grep -qF "Respiratorio" "$file" 2>/dev/null; then
    # Copia il file nella cartella di destinazione
    cp -- "$file" "$target_dir" 2>/dev/null || echo "Impossibile copiare il file: $file"
  fi
done
echo "Tutti i file contenenti 'x' e 'y' sono stati copiati in '$target_dir'."
