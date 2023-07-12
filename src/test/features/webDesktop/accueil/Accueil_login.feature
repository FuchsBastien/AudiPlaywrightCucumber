Feature: Accueil_login

  Scenario: Accueil_login
    Given Je verifie que l'element "Header - Menu - Page d'accueil" est affiche
    When Je clique sur "Header - Menu - Page d'accueil"
    And Je verifie que l'element "Header - Lien Votre Audi - Page d'accueil" est affiche
    And Je clique sur "Header - Lien Votre Audi - Page d'accueil"
    And Je verifie que l'element "Header - Lien Espace Personnel myAudi - Page d'accueil" est affiche
    And Je clique sur "Header - Lien Espace Personnel myAudi - Page d'accueil"
    And Je verifie que l'element "Header - Lien Aller sur myAudi - Espace Personnel" est affiche
    And Je clique sur "Header - Lien Aller sur myAudi - Espace Personnel"
    And Je clique sur "Page - Cookies - Espace Personnel"
    And Je clique sur "Page - Bouton poursuivre vers myAudi - Espace Personnel"
    And Je clique sur "Page - Bouton c'est parti - Espace Personnel"
    And Je saisis "bastien.fuchs@outlook.fr" dans le champ "Page - Champ mail - Espace Personnel"
    And Je verifie que l'element "Page - Bouton suivant - Espace Personnel" est affiche
    And Je clique sur "Page - Bouton suivant - Espace Personnel"
    And Je saisis "testGroupBA" dans le champ "Page - Champ password - Espace Personnel"
    And Je verifie que l'element "Page - Bouton suivant - Espace Personnel" est affiche
    And Je clique sur "Page - Bouton suivant - Espace Personnel"
    And J'attend "3" secondes
    And Je verifie que l'element "Page - Bouton Mon nom" est affiche
    And Je verifie que "Page - Bouton Mon nom" affiche le texte "Bastien"
    And Je verifie que le texte "Page - Bouton Mon nom" est de couleur "rgb(0, 0, 0)"
    And Je clique sur "Page - Bouton Mon nom"
    And Je verifie que l'element "Page - Bouton Configurations enregistrées" est affiche
    And Je clique sur "Page - Bouton Configurations enregistrées"
    And J'attend "3" secondes
    And Je verifie que l'element "Page - Bouton Mon nom" est affiche
    And Je verifie que "Page - Bouton Mon nom" affiche le texte "Bastien"
    And Je verifie que le texte "Page - Bouton Mon nom" est de couleur "rgb(0, 0, 0)"
    And Je clique sur "Page - Bouton Mon nom"
    And Je verifie que l'element "Page - Bouton Se deconnecter" est affiche
    And Je clique sur "Page - Bouton Se deconnecter"


  
 
   
