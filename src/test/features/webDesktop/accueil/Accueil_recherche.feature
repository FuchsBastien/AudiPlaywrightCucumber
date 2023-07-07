Feature: Accueil_recherche

  #Background: 
    #Given Je suis sur le site "https://www.audi.fr/"
    #And Je clique sur "Page - Cookies - Page d'accueil"
    
  Scenario: Accueil_recherche
    And Je clique sur "Header - Logo Recherche - Page d'accueil"
    And Je saisis "Q3" dans le champ "Header - Champ recherche - Page d'accueil"
    And Je tape sur la touche du clavier "Enter"
  
 
   
