Feature: Recherche_modele_critere

    Scenario: Recherche_modele_critere

    #Accès Modèles
    Given Je verifie que l'element "Header - Modeles - Page d'accueil" est affiche
    And Je clique sur "Header - Modeles - Page d'accueil"
    And Je clique sur "Header - Tous les modeles - Page d'accueil"
    And Je clique sur "Page - Trier par - Modeles"

    #Selectionner filtres modèles
    And Je clique sur "Page - Filtre type <type> - Modeles"
    And Je clique sur "Page - Filtre modele <modele> - Modeles"
    #And Je selectionne "185000" dans le curseur "Page - Selecteur prix - Modeles"

    #Vérifier affichage filtres 
    And Je clique sur "Page - Bouton resultat affiche - Modeles"
    And Je verifie que l'element "Page - filtre <type> - Modeles" est affiche
    And Je clique sur "Page - premier bouton plus d'informations - Modeles"
    And J'attend "1" secondes
    And Je verifie que l'element "Page - bouton configurer - Modeles" est affiche
    And Je verifie que l'element "Page - bouton reserver un essai - Modeles" est affiche


 Examples:
   |modele      | type           |
   |q4-etron    | electrique     |      
   |q8-etron    | electrique     |
   |etron       | electrique     |   
   |etron-gt    | electrique     | 
   |a1          | cabriolet      |  
   |a3          | avant          | 
   |a4          | allroad quatro |     
   |a5          | cabriolet      |
   |a6          | suv            |
   |a7          | sport          |
   |a8          | roadster       |
   |q2          | spyder         |
   |q3          | citadine       |
   |q5          | sportback      |
   |q7          | berline        |
   |q8          | roadster       |
   |tt          | spyder         |
   |r8          | suv            |
   |rs          | sport          |
   |s           | roadster       |

