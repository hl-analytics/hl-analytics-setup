
# Configureren

Om het werken makkelijk te maken worden hieronder een aantal stappen gegeven die het werken eenvoudig maken. Het zijn stappen die je maar 1x doet, als je Anaconda hebt geinstalleerd.

## Opstarten-directory Jupyter lab
Als je Jupyter lab opstart zie je standaard in de linkernavigatie de bestanden en directories van de plek waar je het commando gaf om jupyter lab te starten. Dat is onhandig. Je wil eigenlijk altijd dat je daar de directory ziet waar je je notebooks of python-code opslaat. Hieronder zetten een voorkeur voor Jupyter lab om dat te kunnen.

Op het volgende bestand:

1. op MacOS: /Users/<gebruikersnaam>/.jupyter/jupyter_notebook_config.py
1. op Linux: /home/<gebruikersnaam>/.jupyter/jupyter_notebook_config.py
1. op Windows: C:/Users/gebruikersnaam/.jupyter/jupyter_notebook_config.py

Zoek in het bestand naar de regel die begint met ```#c.NotebookApp.notebook_dir =```

Haal bij die regel het ```#```-teken weg.

Vul achter het ```=```-teken het pad naar de directory in waar je altijd wil starten. Het handigste is de directory waar Github alle lokale repositories opslaat. 

```
...
#  will be loaded in alphabetical order.
#c.NotebookApp.nbserver_extensions = {}

## The directory to use for notebooks and kernels.
c.NotebookApp.notebook_dir = 'C:/Users/<gebruikersnaam>/Github'

## Whether to open in a browser after starting. The specific browser used is
#  platform dependent and determined by the python standard library `webbrowser`
#  module, unless it is overridden using the --browser (NotebookApp.browser)
....
```

Sla het bestand op en sluit het bestand af.
