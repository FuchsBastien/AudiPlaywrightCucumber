Feature: Je cherche voiture en fonction de critère de recherche

    Scenario: Je veux trouver toutes les voitures qui ont un prix maximal de 65 000,00 Eur et qui sont de type Thermique
    Given Je verifie que l'element "Header - Menu - Page d'accueil" est affiche
    And Je clique sur "Header - Menu - Page d'accueil"
    When Je clique sur "Header - Modeles - Page d'accueil"
    And Je clique sur "Header - Tous les modeles - Page d'accueil"
    And Je clique sur "Page - Titre par - Modeles"
    And Je clique sur "Page - Filtre type thermique - Modeles"
    And Je clique sur "Page - Filtre type citadine - Modeles"
    And Je clique sur "Page - Filtre type sportback - Modeles"
    And Je clique sur "Page - Filtre type berline - Modeles"
    And Je clique sur "Page - Filtre type cabriolet - Modeles"
    And Je clique sur "Page - Filtre type avant - Modeles"
    And Je clique sur "Page - Filtre type allroad quatro - Modeles"
    And Je clique sur "Page - Filtre type coupe - Modeles"

    And Je selectionne "185000" dans le curseur "Page - Selecteur prix - Modeles"
    And Je clique sur "Page - Bouton resultat affiche - Modeles"
    And Je verifie que l'element "Page - filtre thermique - Modeles" est affiche
    And Je verifie que l'element "Page - filtre prix - Modeles" est affiche
