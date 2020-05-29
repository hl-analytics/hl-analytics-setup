# Waar is dit voor?
Na installatie van Anaconda is het handig om een python-environment te maken. Dat kan je beschouwen als een afgeschermde omgeving waarin je python packages kan installeren. Het bestand environment.yml bevat alle packages die we gebruiken bij HL en je kan er dus een environment mee maken die alles bevat wat je nodig hebt.

# Maak analytics environment
Configuratie van python environment voor HL


    conda env create -f environment.yml
    
# Gebruik
De omgeving activeer je in PowerShell met:

    conda activate analytics
    
