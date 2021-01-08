
# Configureren

Om het werken makkelijk te maken worden hieronder een aantal stappen gegeven die het werken eenvoudig maken. Het zijn stappen die je maar 1x doet, als je Anaconda hebt geinstalleerd.

## Voorbereiding
 Bij het werken met python is het vaak gebruikelijk om packages af te korten. Bijvoorbeeld: ```import pandas as pd```.
 Daarnaast is het handig dat je jupyter lab altijd opent in dezelfde directory. Hieronder wordt een profile aangemaakt waarmee je dat kan configureren.

LET OP: hieronder wordt gesproken over een directory met een punt voor de naam (```.ipython```). Dat betekent op Windows vaak dat je het bestand of de directory niet ziet in Explorer (het is een 'hidden'-directory). Ook toont Windows niet standaard de extensie van een bestand (.zip, .xlsx, .py etc). Ook dat is onhandig voor het werken met python en R. 
Om beiden toch zichtbaar te maken volg je de instructies [hier] (https://support.winzip.com/hc/en-us/articles/115011457948-How-to-configure-Windows-to-show-file-extensions-and-hidden-files) voor Windows 10.

## Standaard imports
Controleer of de volgende directory bestaat:

1. op MacOS: /Users/<gebruikersnaam>/.ipython/profile_default/startup
1. op Linux: /home/<gebruikersnaam>/.ipython/profile_default/startup
1. op Windows: C:\Users\gebruikersnaam\.ipython\profile_default\startup


Als dat *niet* zo is, start dan PowerShell en geef het volgende commando:

```
ipython profile create
```

Maak in de ```startup```-directory een bestand ```01-analytics.py``` (LET OP: eindigt dus op .py en niet op .txt oid) en zet daar in:
 
```python
import numpy as np
import pandas as pd
import altair as alt
import os
``` 

Iedere keer dat je nu een notebook gebruikt, zijn deze imports al gedaan.

## Opstarten-directory Jupyter lab
Als je Jupyter lab opstart zie je standaard in de linkernavigatie de bestanden en directories van de plek waar je het commando gaf om jupyter lab te starten. Dat is onhandig. Je wil eigenlijk altijd dat je daar de directory ziet waar je je notebooks of python-code opslaat. Hieronder zetten een voorkeur voor Jupyter lab om dat te kunnen.

Op het volgende bestand:

1. op MacOS: /Users/<gebruikersnaam>/.jupyter/jupyter_notebook_config.py
1. op Linux: /home/<gebruikersnaam>/.jupyter/jupyter_notebook_config.py
1. op Windows: C:\Users\gebruikersnaam\.jupyter/jupyter_notebook_config.py

Zoek in het bestand naar de regel die begint met ```#c.NotebookApp.notebook_dir =```

Haal bij die regel het ```#```-teken weg.

Vul achter het ```=```-teken het pad naar de directory in waar je altijd wil starten. Het handigste is de directory waar Github alle lokale repositories opslaat. 

```
...
#  will be loaded in alphabetical order.
#c.NotebookApp.nbserver_extensions = {}

## The directory to use for notebooks and kernels.
c.NotebookApp.notebook_dir = 'C:\Users\<gebruikersnaam>\Github'

## Whether to open in a browser after starting. The specific browser used is
#  platform dependent and determined by the python standard library `webbrowser`
#  module, unless it is overridden using the --browser (NotebookApp.browser)
....
```

Sla het bestand op en sluit het bestand af.
