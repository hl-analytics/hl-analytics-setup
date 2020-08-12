# Waar is dit voor?
Na installatie van Anaconda is het handig om een python-environment te maken. Dat kan je beschouwen als een afgeschermde omgeving waarin je python packages kan installeren. Door een standaard environment te maken met packages die we binnen HL-analytics gebruiken, werkt het hele team met dezelfde packages. Zo'n environment maak je 1x en daarna start je ```jupyter lab```.


# Maak analytics environment
Maak de analytics python environment voor HL met het commonda hieronder. Dat doe je in de directory waar je deze repository hebt gedownload. Je hoeft dit maar 1x te doen.

    conda env create -f environment.yml
    
# Gebruik
Iedere keer dat je in deze environment wil werken start je die omgeving activeer in PowerShell met:

    conda activate analytics
    
Daarna start je Jupyter lab met:

    jupyter lab
