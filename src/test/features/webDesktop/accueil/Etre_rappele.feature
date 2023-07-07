Feature: Etre_rappele

    #Background: 
        #Given Je suis sur le site "https://www.audi.fr/"
        #And Je clique sur "Page - Cookies - Page d'accueil"
    
    Scenario: Etre_rappele
        #When Je clique sur "Header - Menu - Page d'accueil"
        And Je clique sur "Header - Modeles - Page d'accueil"
        Then Je clique sur "Header - Pour les professionnels - Page d'accueil"
        When Je clique sur "Header - Lien Etre rappele - Espace Rappele"
        Then Je bascule vers l'iframe "Page - Ifram A la date de mon choix - Espace Rappele"
        And Je clique sur "Page - Immédiatement - Espace Rappele" dans l'iframe
        And Je clique sur "Page - Champ téléphone - Espace Rappele" dans l'iframe
        And Je saisis "06 02 00 00 00" dans le champ "Page - Champ téléphone - Espace Rappele" dans l'iframe
        And Je clique sur "Page - Etre Rappele(e) - Espace Rappele" dans l'iframe
      