# AudiPlaywrightCucumber

Pojet d'automatisation des tests fonctionnels effectués sur Audi.fr

## Prerequis

### Node version >=12

Une version stable est disponible [ici](https://nodejs.org/dist/latest-v12.x/)
Pour installer nodeJS sans droits d'admin : https://theshravan.net/blog/how-to-use-node-and-npm-without-installation-or-admin-rights/

### Java >=v18

## Installation du projet

1. Récupérer le projet :

https://github.com/FuchsBastien/AudiPlaywrightCucumber.git

2. Ouvrir le projet avec Visual Studio (ou autre IDE)

3. Installer les dépendances (`npm install`)


## Execution des tests en local

1. Configurer le fichier de configuration (_cucumber.json)

Les valeurs a modifier sont principalement :
- path
chemin des fichiers features
- require
chemin des actions génériques
- format
chemin des rapports de test


2. Exéxuter la commande dans le terminal

```nodejs
$ npm run test
```

## Générateur d'actions en code playwright 

2. Exéxuter la commande dans le terminal

```nodejs
$ npx playwright codegen https://www.audi.fr/
```


## Génération du rapport d'exécution

Pour chaque feature exécutée, un fichier .html est généré automatiquement, contenant toutes les informations utiles telles que le résultat, le temps d'exécution, le screenshot de l'erreur etc.


### Les extensions VS Code utiles (quasi indispensables)

- cucumber
- indent-rainbow
- Gherkin Beautifier
- Gherkin Indent
- Feature SyntaxHighlight and Snippets (Cucumber/Gherkin)
- Cucumber (Gherkin) Full Support
