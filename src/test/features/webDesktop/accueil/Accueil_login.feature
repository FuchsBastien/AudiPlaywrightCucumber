Feature: Accueil_login

  Background: 
    Given Je suis sur le site "https://www.audi.fr/"
    And Je clique sur "Page - Cookies - Page d'accueil"

  Scenario: Accueil_login
    When Je clique sur "Header - Menu - Page d'accueil"
    And Je clique sur "Header - Lien Votre Audi - Page d'accueil"
    And Je clique sur "Header - Lien Espace Personnel myAudi - Page d'accueil"
    And Je clique sur "Header - Lien Aller sur myAudi - Espace Personnel"
    And Je clique sur "Page - Cookies - Espace Personnel"
    And Je clique sur "Page - Bouton poursuivre vers myAudi - Espace Personnel"
    And Je clique sur "Page - Bouton c'est parti - Espace Personnel"
    And Je clique sur "Page - Champ mail - Espace Personnel"
    And Je saisis "bastien.fuchs@outlook.fr" dans le champ "Page - Champ mail - Espace Personnel"
    And Je clique sur "Page - Bouton suivant - Espace Personnel"
    And Je clique sur "Page - Champ password - Espace Personnel"
    And Je saisis "testGroupBA" dans le champ "Page - Champ password - Espace Personnel"
    And Je clique sur "Page - Bouton suivant - Espace Personnel"

  
 
   
