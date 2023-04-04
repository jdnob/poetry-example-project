# poetry-example-project

# Installation

```bash
pip install poetry
poetry init
```
Dans le init, on renseigne l'ensemble des informations demandées, ainsi que les dépendances anciennements requises par le projet. 
Il est possible de copier 

Sinon, pour importer a posteriori un contenu requirements.txt
```bash
poetry add $( cat requirements.txt )
```

ou une simple dépendance : 
```bash
poetry add pytest
```


## Initialisation du répertoire
```
poetry-exemple-project
    poetry_example_project/
        __init__.py
        hello.py
    tests/
        __init__.py
        test_hello.py
    .pyproject.toml
    README.md
    poetry.lock
    .gitignore
```

Puis exécuter la commande suivante : 
```bash
poetry run pytest
```

# Configuration des repositories privés

cf doc : https://python-poetry.org/docs/repositories/

```bash
poetry source add --default mon_nexus https://mon_nexus.exemple/simple/
poetry source add mon_nexus_prod https://mon_nexus_prod.exemple/simple/

poetry config http-basic.mon_nexus <username> <password>
poetry config http-basic.mon_nexus_prod <username> <password>
```

Pour publier spécifiquement sur le repository mon_nexus_prod : 
```bash
poetry publish --repository=mon_nexus_prod
```

# Mettre à jour une version

En cas de mise à jour dynamique du projet (par exemple, dans le cas de CI/CD)

```bash
poetry version 0.1.1
```