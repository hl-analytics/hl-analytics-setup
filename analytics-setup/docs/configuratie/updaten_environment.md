# Updaten van environment
Van tijd tot tijd zal het bestand environment.yml worden aangevuld (andere versie van packages, nieuwe packages toegevoegd, oude verwijderd). Om je environment te updaten volg je de volgende stappen.

1. Update de reposity (doe een git pull & merge (of doe het via Github Desktop))
1. Start [PowerShell](../aan_de_slag/powershell.md)
1. Activeer de ```analytics```-environment:

    ```
    conda activate analytics
    ```
    
1. Ga naar de directory waar het bestand ```environment.yml``` staat
1. Geef het volgende commando:

    ```
    conda env update --file environment.yml  --prune
    ```
