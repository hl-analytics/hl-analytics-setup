# Werken met de analytics-environment


## 'The shell is your friend'. 
Echt waar, dus start [PowerShell](powershell.md).

Iedere keer dat je wil werken met Python start je met PowerShell de ```analytics``` environment. Het maakt niet uit in welke directory je dat doet.

Je start de environment met:

```
conda activate analytics
```

Daarna start je Jupyter lab met:

```
jupyter lab
```

## Conventies bij notebooks

1. Probeer niet elkaars notebook te gebruiken, maar maak een kopie van het notebook
1. Hanteer het volgende stramien: ```20210101 - <naam> - <titel>.ipynb```
1. Als je functies maakt, gebruik dan in de naamgeving de conventies die gelden bij Python (zie [hier](https://visualgit.readthedocs.io/en/latest/pages/naming_convention.html)).
1. Probeer volgens het functional programming-principe te werken. Dat wil zeggen, probeer in je notebook te werken met functies die iets ontvangen (een dataframe bijv.) en die ook weer iets teruggeeft (een dataframe :).
1. Werken met notebooks is handig, maar niet voor alles. Als je notebook groter wordt, je meer 'draaiende onderdelen' hebt, dan loont het de moeite om met modules te gaan werken. Een Python-module is niet meer dan een tekst-bestand dat niet eindigtop .txt maar op .py.
1. Test en probeer je functie in je notebook, ben je tevreden zet 'm dan in een ```.py```-bestand. Dat maakt het ook voor anderen makkelijk om in hun eigen notebook met je code te werken.



