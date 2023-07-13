Feature: Etre_rappele

    Scenario: Etre_rappele
        Given Je verifie que le titre de l'onglet est "Accueil | Audi.fr | Audi France"
        And Je verifie que l'element "Header - Menu - Page d'accueil" est affiche
        When Je clique sur "Header - Menu - Page d'accueil"
        And Je verifie que l'element "Header - Modeles - Page d'accueil" est affiche
        And Je clique sur "Header - Modeles - Page d'accueil"
        And Je verifie que l'element "Header - Pour les professionnels - Page d'accueil" est affiche
        Then Je clique sur "Header - Pour les professionnels - Page d'accueil"
        And Je verifie que l'element "Header - Lien Etre rappele - Espace Rappele" est affiche
        When Je clique sur "Header - Lien Etre rappele - Espace Rappele"
        Then Je bascule vers l'iframe "Page - Ifram A la date de mon choix - Espace Rappele"
        And Je clique sur "Page - Immédiatement - Espace Rappele" dans l'iframe
        And Je clique sur "Page - Champ téléphone - Espace Rappele" dans l'iframe
        And Je saisis "06 02 00 00 00" dans le champ "Page - Champ téléphone - Espace Rappele" dans l'iframe
        And Je clique sur "Page - Etre Rappele(e) - Espace Rappele" dans l'iframe
      