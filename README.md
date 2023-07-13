# AudiPlaywrightCucumber

Projet d'automatisation de tests fonctionnels effectués sur https://www.audi.fr/

## Prerequis

1. Node version >=12

Une version stable est disponible [ici](https://nodejs.org/dist/latest-v12.x/)
Pour installer nodeJS sans droits d'admin : https://theshravan.net/blog/how-to-use-node-and-npm-without-installation-or-admin-rights/

2. Java >=v18


## Installation du projet

1. Récupérer le projet :

https://github.com/FuchsBastien/AudiPlaywrightCucumber.git

2. Ouvrir le projet avec Visual Studio (ou autre IDE)

3. Installer les dépendances (`npm install`)


## Exécution des tests en local

1. Configurer le fichier de configuration (cucumber.json)

Les valeurs a modifier sont principalement :
- path
chemin des fichiers features
- require
chemin des actions génériques
- format
chemin des rapports de test


2. Exécuter la commande dans le terminal

```nodejs
$ npm run test
```


## Générateur de code d'actions avec playwright 

1. Exécuter la commande dans le terminal

```nodejs
$ npx playwright codegen https://www.audi.fr/
```


## Générateur de rapport d'exécution

Pour chaque test exécutée, un fichier cucumber-reports.json est généré automatiquement (/reporting/rapports), contenant toutes les informations utiles des features telles que le résultat, les étapes, le temps d'exécution, le screenshot de l'erreur etc.


1. Exécuter la commande dans le terminal après la commande d'exécution du test

```nodejs
$ npm run report
```

A partir de ce fichier cucumber-reports.json  la commande ci-dessus permet de générer un fichier index.html (/reporting/rapports) auquel vient s'ajouter un graphique en camembert des features et scenarios passed et failed ainsi qu'un fichier .html pour chaque feature executée (/reporting/rapports/features)


### Les extensions VS Code utiles (quasi indispensables)

- cucumber
- indent-rainbow
- Gherkin Beautifier
- Gherkin Indent
- Feature SyntaxHighlight and Snippets (Cucumber/Gherkin)
- Cucumber (Gherkin) Full Support
