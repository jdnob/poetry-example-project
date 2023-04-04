# poetry-example-project

# Installation

```bash
pip install poetry
poetry init
```
Dans le init, on renseigne l'ensemble des informations demandées, ainsi que les dépendances anciennements requises par le projet. 

# Configuration des repositories privées

cf doc : https://python-poetry.org/docs/repositories/

```bash
poetry config http-basic.mon_nexus <username> <password>

poetry source add mon_nexus https://mon_nexus.exemple/simple/
```
