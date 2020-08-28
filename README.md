# Waar is dit voor?
Een python-environment kan je beschouwen als een afgeschermde omgeving waarin je python packages kan installeren. Door een standaard environment te maken met packages die we binnen HL-analytics gebruiken, werkt het hele team met dezelfde packages. Zo'n environment maak je 1x op iedere PC/werkomgeving. Nadat de environment is gemaakt, start je iedere keer dat je wil werken met data die environment op.


# Aanmaken analytics-environment
De volgende stappen voor je 1x uit op iedere PC waar je met Python wil werken.
1. Op de PC waar je de analytics-environment wil maken, doe je een checkout van deze repository met Github Desktop
1. Start PowerShell
1. Ga naar de directory waar deze repository staat, bijv. met:

    cd Documents/GithHub/hl-analytics-setup
    
1. Je cursor staat nu in de directory waar ook het bestand ```environment.yml``` staat.

1. Maak de analytics python environment:

    conda env create -f environment.yml

# Configureren
Om een aantal zaken te vergemakkelijken

# Gebruik
Iedere keer dat je in deze environment wil werken start je die omgeving activeer in PowerShell met:

    conda activate analytics
    
Daarna start je Jupyter lab met:

    jupyter lab
