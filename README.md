# Waar is dit voor?
Om Python te kunnen gebruiken op de PC van Hogeschool Leiden gebruiken we Anaconda. Voor het werken met Python maken we een python-environment: een afgeschermde omgeving waarin je python packages kan installeren en verwijderen. Per PC kan je meerdere environments maken, maar dat is doorgaans niet nodig. We maken een standaard 'analytics'-environment met packages die we veel gebruiken. Daarnaast maken we een aantal standaard imports aan zodat het hele team met dezelfde packages werkt en een aantal standaard variabelen. Hoe je die environment maakt staat hieronder beschreven. Het aanmaken van de environment doe je 1x. Steeds als je daarna met Python wil werken activeer je de environment en start je Python.

# Aanmaken `analytics`-environment
1. zorg dat Anaconda is geinstalleerd
1. download deze repository met Github Desktop
1. start PowerShell
1. ga naar de directory waar het bestand ```environment.yml``` staat
1. geef het volgende commando:

    ```
    conda env create -f environment.yml
    ```

1. nu wordt de environment aangemaakt

# Configureren van environment
Veel van het analysewerk gebeurt in Jupyter Notebooks. 

## Standaard imports
Vaak beginnen die met een aantal standaard imports, zoals ```import pandas as pd```. Voor vrijwel alle analyses is data nodig en vaak staat die op de gedeelde onedrive. Het pad waar die data staat verschilt per gebruiker of per per PC. Om zowel die standaard imports als het juiste pad naar de data in alle notebooks beschikbaar te hebben (en ze dus niet steeds opnieuwe te hoeven opgeven), kunnen er standaard imports worden gedaan.\

1. controleer of de volgende directory bestaat:

    1. op MacOS: /Users/<gebruikersnaam>/.ipython/profile_default/startup
    1. op Linux: /home/<gebruikersnaam>/.ipython/profile_default/startup
    1. op Windows: C:\Users\<gebruikersnaam>\.ipython\profile_default\startup

1. als dat *niet* zo is, geef dan het volgende commando:
    ```
    ipython profile create
    ```

1. maak in die directory een bestand ```01-analytics.py``` (LET OP: eindigt dus op .py en niet op .txt oid) en zet daar in:
 
    ```
    import numpy as np
    import pandas as pd
    import altair as alt
    
    ANALYTICS_DATA_PATH_2019="<pad naar directory met data>"
    # voorbeeld van pad op Windows:
    # "G:\Data\IR-data - data\2020-2021"
    ANALYTICS_DATA_PATH_2020="<pad naar directory met data>"
    ``` 
1. ieder keer dat je nu een notebook gebruikt, zijn deze imports al gedaan.


# Starten van environment
1. activeer de environment (dat doe je in het vervolg iedere keer dat je in deze environment wil werken)

    ```
    conda activate analytics
    ```
1. daarna start je bijvoorbeeld Jupyter lab met:

    ```
    jupyter lab
    ```
    
# Updaten van environment
Van tijd tot tijd zal het bestand environment.yml worden aangevuld (andere versie van packages, nieuwe packages toegevoegd, oude verwijderd). Om je environment te updaten volg je de volgende stappen.

1. update de reposity (doe een git pull & merge (of doe het via Github Desktop))
1. start PowerShell
1. activeer de ```analytics```-environment:

    ```
    conda activate analytics
    ```
    
1. ga naar de directory waar het bestand ```environment.yml``` staat
1. geef het volgende commando:

    ```
    conda env update --file environment.yml  --prune
    ```
