# Aanmaken van analytics-environment

Voor het werken met Python maken we een ```environment```. Een environment is een afgeschermde omgeving waarin je Python packages kan installeren en verwijderen. Per PC kan je meerdere environments maken, maar dat is doorgaans niet nodig. In de stappen hieronder wordt de standaard 'analytics'-environment gemaakt met daarin packages die veel worden gebruikt voor data science. Het aanmaken van de environment doe je 1x. Steeds als je daarna met Python wil werken activeer je de environment en start je Python.

1. Zorg dat [Anaconda is geinstalleerd](../installatie/installeer_python.md)

1. Via [deze link](x-github-client://openRepo/https://github.com/hl-analytics/hl-analytics-setup) opent [Github Desktop](../installatie/installeer_github_desktop.md)

1. Noteer het ```Local path``` (dat heb je dadelijk nodig) en kies voor 'Clone a repository'

1. Start op Windows: [Windows PowerShell](../aan_de_slag/powershell.md) of op een Mac Terminal

1. Ga naar Local path waar het bestand ```environment.yml``` staat. Bijvoorbeeld met:

    ```
    cd GitHub/hl-analytics-setup
    ```

1. Controleer of je in de goede directory bent met:

    ```
    ls
    ```
    
    of

    ```
    dir
    ```

1. Als je het volgende ziet, sta je in de goede directory:

    ```
    README.md
    analytics-setup
    environment.yml
    ```

1. Afhankelijk van de vraag of je bij Anaconda hebt geinstalleerd als administrator ('For all users') kan je in de volgende stap ```Anaconda Prompt``` of ```Anaconda Prompt als Admin``` opstarten. Als je dat gedaan hebt, geef het commando:
    ```
    conda init
    ```

1. Sluit dan alle terminals af.

1. Start vervolgens weer PowerShell op en geef dan, steeds op een nieuwe regel, de volgende commando's:

    ```
    conda config --add channels conda-forge
    ```
    Dit gaat snel, geen feedback op je prompt.
    ```
    conda config --set channel_priority 'strict'
    ```
    Dit gaat snel, geen feedback op je prompt.
    ```
    conda install -n base -c conda-forge mamba
    ```
    Dit duurt iets langer, doorgaans 5 minuten. Hij vraagt nog om bevestiging, geef dan op  ```Y```.
    ```
    mamba env create -f environment.yml
    ```
    Dit duurt nog wat langer, je krijgt feedback op je prompt

## Installeren packages
Installeer in de analytics-environment in ieder geval de analytics-tools-package. Hoe dat moet staat beschreven in de [README.md](https://github.com/hl-analytics/analytics-tools/blob/main/README.md)

1. Nu kun je werken in de analytics environment.

Ga nu naar [werken met analytics environment](../aan_de_slag/werken_met_analytics_environment.md)