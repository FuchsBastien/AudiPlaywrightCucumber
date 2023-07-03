  Feature: Reservation_voiture_neuve_stock_Audi

    Background: 
    Given Je suis sur le site "https://www.audi.fr/"
    And Je clique sur "Page - Cookies - Page d'accueil"

    Scenario: Reservation_voiture_neuve_stock_Audi
    When Je clique sur "Page - Bouton Choix Modèles Véhicules Disponibles - Page d'accueil"
    And Je clique sur "Page - Bouton Choix Modèle <modèle> Disponible - Page d'accueil"
    And Je clique sur "Page - Lien <modèle> Neufs Disponibles - Page d'accueil"
    #And J'attend et je clique sur "Page - Checkbox Stock Audi France - Page recherche Vehicules"
    And J'attend et je clique sur "Page - Premier Résultat Stock - Page recherche Vehicules"
    And Je clique sur "Page - Bouton Contacter le partenaire - Page recherche Vehicules"
    And Je vais sur l'onglet "1"
    And Je vérifie que "Page - Titre Identifiez vous - Page formulaire" affiche le texte "Garanties Audo"
    And Je clique sur "Page - Champ Mail - Page formulaire"
    And Je saisis "bastien.fuchs@outlook.fr" dans le champ "Page - Champ Mail - Page formulaire"
    And Je clique sur "Page - Bouton Valider - Page formulaire"
    And Je clique sur "Page - Selection Délai d'achat - Page formulaire"
    And Je clique sur "Page - Selection Délai d'achat <délai d'achat> - Page formulaire"
    And Je clique sur "Page - Selection Usage - Page formulaire"
    And Je clique sur "Page - Selection Usage <usage> - Page formulaire"
    And Je clique sur "Page - Bouton Suivant - Page formulaire"
    And Je clique sur "Page - Coche Transmission de Donnée - Page formulaire"
    And Je clique sur "Page - Coche Sexe <sexe> - Page formulaire"
    And Je clique sur "Page - Champ Nom - Page formulaire"
    And Je saisis "<nom>" dans le champ "Page - Champ Nom - Page formulaire"
    And Je clique sur "Page - Champ Prénom - Page formulaire"
    And Je saisis "<prénom>" dans le champ "Page - Champ Prénom - Page formulaire"
    And Je clique sur "Page - Champ Téléphone - Page formulaire"
    And Je saisis "<téléphone>" dans le champ "Page - Champ Téléphone - Page formulaire"
    And Je clique sur "Page - Selection Année de Naissance - Page formulaire"
    And Je clique sur "Page - Selection Année de Naissance <année naissance> - Page formulaire"
    #And Je clique sur "Page - Bouton Revenir à l'accueil - Page formulaire"
 
    
Examples:
  | modèle       | délai d'achat      | usage         |  nom      | prénom    |  téléphone       | année naissance |  sexe         |
  | Q8 e-tron    | Moins de 6 mois    | Privé         | FUCHS     | Bastien   | 06 20 00 00 00   |   1990          | Masculin      |      
  #| A3 sportback | Moins de 6 mois    | Professionnel | TIGUERCHA | Aghiles   | 06 30 00 00 00   |   1995          |  masculin     |