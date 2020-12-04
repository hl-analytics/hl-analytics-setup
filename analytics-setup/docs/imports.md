
# Standaard imports
Vaak beginnen die met een aantal standaard imports, zoals ```import pandas as pd```. Voor vrijwel alle analyses is data nodig en vaak staat die op de gedeelde onedrive. Het pad waar die data staat verschilt per gebruiker of per per PC. Om zowel die standaard imports als het juiste pad naar de data in alle notebooks beschikbaar te hebben (en ze dus niet steeds opnieuwe te hoeven opgeven), kunnen er standaard imports worden gedaan.\

Controleer of de volgende directory bestaat:

1. op MacOS: /Users/<gebruikersnaam>/.ipython/profile_default/startup
1. op Linux: /home/<gebruikersnaam>/.ipython/profile_default/startup
1. op Windows: C:\Users\gebruikersnaam\.ipython\profile_default\startup

Als dat *niet* zo is, geef dan het volgende commando:

```
ipython profile create
```

Maak in die directory een bestand ```01-analytics.py``` (LET OP: eindigt dus op .py en niet op .txt oid) en zet daar in:
 
```python
import numpy as np
import pandas as pd
import altair as alt
import os
``` 

Iedere keer dat je nu een notebook gebruikt, zijn deze imports al gedaan.
