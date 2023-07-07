Feature: Reserver_essai

    #Background: 
        #Given Je suis sur le site "https://www.audi.fr/"
        #And Je clique sur "Page - Cookies - Page d'accueil"
    
    Scenario: Reserver_essai
        When Je clique sur "Header - Menu - Page d'accueil"
        And Je clique sur "Header - Modeles - Page d'accueil"
        Then Je clique sur "Header - Tous les modeles - Page d'accueil"
        When Je clique sur "Page - Plus d'information A5 Cabriolet - Espace Reservation"
        Then Je clique sur "Page - Fermer INFORMATION IMPORTANTE - Espace Reservation"
        And Je clique sur "Page - Reserver un essai - Espace Reservation"
        Then Je bascule vers l'iframe "Page - Ifram Reserver un essai - Espace Reservation"

        #Saisir mail
        And Je saisis "alt.em-bovhbcad@yopmail.com" dans le champ "Page - Saisissez votre email - Espace Reservation" dans l'iframe
        Then Je clique sur "Page - Valider votre email - Espace Reservation" dans l'iframe

        #Connecter a mon espace
        And Je saisis "JeSaisPas23%" dans le champ "Page - Champ password - Espace Personnel"
        And Je clique sur "Page - Bouton suivant - Espace Personnel"

        #Completez les informations
        And Je clique sur "Page - Delai d'achat - Espace Reservation"
        And Je clique sur "Page - Plus de 12 mois - Espace Reservation"
        And Je clique sur "Page - Type d'achat - Espace Reservation"
        And Je clique sur "Page - Neuf - Espace Reservation"
        And Je clique sur "Page - Usage - Espace Reservation"
        And Je clique sur "Page - Prive - Espace Reservation"
        And Je saisis "92800" dans le champ "Page - Code postal - Espace Reservation"
        And Je clique sur "Page - Fleche Partenaire Audi - Espace Reservation"
        And Je clique sur "Page - Hauts de Seine(92) - Espace Reservation"
        And Je clique sur "Page - AUDI SEINE (1.6KM) - Espace Reservation"
        Then Je clique sur "Page - Suivant - Espace Reservation"

        #Validez votre demande
        And Je clique sur "Page - Gener M - Espace Reservation"
        #And Je saisis "JACK" dans le champ "Page - Nom - Espace Reservation"
        #And Je saisis "Daniel" dans le champ "Page - Prenom - Espace Reservation"
        #And Je saisis "0696906611" dans le champ "Page - Telephone - Espace Reservation"
        #And Je clique sur "Page - 1996 - Espace Reservation"
        And Je clique sur "Page - Cocher J'accepte les conditions - Espace Reservation"
        Then Je clique sur "Page - Envoyer - Espace Reservation"
