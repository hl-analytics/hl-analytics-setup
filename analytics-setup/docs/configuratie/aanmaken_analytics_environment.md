# Aanmaken van analytics-environment

Voor het werken met Python maken we een ```environment```. Een environment is een afgeschermde omgeving waarin je Python packages kan installeren en verwijderen. Per PC kan je meerdere environments maken, maar dat is doorgaans niet nodig. In de stappen hieronder wordt de standaard 'analytics'-environment gemaakt met daarin packages die veel worden gebruikt voor data science. Het aanmaken van de environment doe je 1x. Steeds als je daarna met Python wil werken activeer je de environment en start je Python.

1. Zorg dat [Anaconda is geinstalleerd](../installatie/installeer_python.md)

1. Download [deze repository](x-github-client://openRepo/https://github.com/hl-analytics/hl-analytics-setup) met [Github Desktop](../installatie/installeer_github_desktop.md)

1. Start [PowerShell](../aan_de_slag/powershell.md)

1. Ga naar de directory waar het bestand ```environment.yml``` staat. Bijvoorbeeld met:

    ```
    cd GitHub/hl-analytics-setup
    ```


1. Controleer dat je in de goede directory bent met:

    ```
    ls
    ```


1. Als je het volgende ziet, sta je in de goede directory:

    ```
    README.md	analytics-setup	environment.yml
    ```

1. Geef dan de volgende commando's:

    ```
    conda config --add channels conda-forge
    conda config --set channel_priority 'strict'
    conda install -n base -c conda-forge mamba
    mamba env create -f environment.yml
    ```

## Installeren packages
Installeer in de analytics-environment in ieder geval de analytics-tools-package. Hoe dat moet staat beschreven in de [README.md](https://github.com/hl-analytics/analytics-tools/blob/main/README.md)

1. Nu kun je werken in de analytics environment.

Ga nu naar [werken met analytics environment](../aan_de_slag/werken_met_analytics_environment.md)