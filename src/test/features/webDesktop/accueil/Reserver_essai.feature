Feature: Reserver_essai

    #Background: 
        #Given Je suis sur le site "https://www.audi.fr/"
        #And Je clique sur "Page - Cookies - Page d'accueil"
    
    Scenario: Reserver_essai
        Given Je verifie que l'element "Header - Menu - Page d'accueil" est affiche
        When Je clique sur "Header - Menu - Page d'accueil"
        And Je verifie que l'element "Header - Modeles - Page d'accueil" est affiche
        And Je clique sur "Header - Modeles - Page d'accueil"
        And Je verifie que l'element "Header - Tous les modeles - Page d'accueil" est affiche
        And Je clique sur "Header - Tous les modeles - Page d'accueil"
        And Je fais defiler jusqu'a l'element "Page - Plus d'information A5 Cabriolet - Espace Reservation"
        And Je verifie que l'element "Page - Plus d'information A5 Cabriolet - Espace Reservation" est affiche
        And Je clique sur "Page - Plus d'information A5 Cabriolet - Espace Reservation"
        And Je clique sur "Page - Fermer INFORMATION IMPORTANTE - Espace Reservation"
        And Je verifie que l'element "Page - Reserver un essai - Espace Reservation" est affiche
        And Je verifie que "Page - Reserver un essai - Espace Reservation" affiche le texte "Réserver un essai"
        And Je verifie que le texte "Page - Reserver un essai - Espace Reservation" est de couleur "rgb(255, 255, 255)"
        And Je clique sur "Page - Reserver un essai - Espace Reservation"
        Then Je bascule vers l'iframe "Page - Ifram Reserver un essai - Espace Reservation"

        #Saisir mail
        And Je verifie que l'element "Page - Identifiez vous - Page offres du moments" est affiche dans l'iframe
        And Je verifie que "Page - Identifiez vous - Page offres du moments" affiche le texte "Identifiez-vous" dans l'iframe
        And Je verifie que le texte "Page - Identifiez vous - Page offres du moments" est de couleur "rgb(0, 0, 0)" dans l'iframe
        And Je saisis "alt.em-bovhbcad@yopmail.com" dans le champ "Page - Saisissez votre email - Espace Reservation" dans l'iframe
        And Je verifie que l'element "Page - Valider votre email - Espace Reservation" est affiche dans l'iframe
        And Je verifie que "Page - Valider votre email - Espace Reservation" affiche le texte "Valider" dans l'iframe
        And Je verifie que le texte "Page - Valider votre email - Espace Reservation" est de couleur "rgb(255, 255, 255)" dans l'iframe
        Then Je clique sur "Page - Valider votre email - Espace Reservation" dans l'iframe

        #Connecter a mon espace
        And Je saisis "JeSaisPas23%" dans le champ "Page - Champ password - Espace Personnel"
        And Je clique sur "Page - Bouton suivant - Espace Personnel"

        #Completez les informations
        And Je verifie que l'element "Page - Completez les informations - Page offres du moments" est affiche
        And Je verifie que "Page - Completez les informations - Page offres du moments" affiche le texte "Complétez les informations"
        And Je verifie que le texte "Page - Completez les informations - Page offres du moments" est de couleur "rgb(0, 0, 0)"
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
        And Je verifie que l'element "Page - Suivant - Espace Reservation" est affiche
        And Je verifie que "Page - Suivant - Espace Reservation" affiche le texte "Suivant"
        And Je verifie que le texte "Page - Suivant - Espace Reservation" est de couleur "rgb(255, 255, 255)"
        Then Je clique sur "Page - Suivant - Espace Reservation"

        #Validez votre demande
        And Je verifie que l'element "Page - Validez votre demande - Page offres du moments" est affiche
        And Je verifie que "Page - Validez votre demande - Page offres du moments" affiche le texte "Validez votre demande"
        And Je verifie que le texte "Page - Validez votre demande - Page offres du moments" est de couleur "rgb(0, 0, 0)"
        When Je clique sur "Page - Gener M - Espace Reservation"
        And Je clique sur "Page - Cocher J'accepte les conditions - Espace Reservation"
        And Je verifie que l'element "Page - Envoyer - Espace Reservation" est affiche
        And Je verifie que "Page - Envoyer - Espace Reservation" affiche le texte "Envoyer"
        And Je verifie que le texte "Page - Envoyer - Espace Reservation" est de couleur "rgb(255, 255, 255)"
        Then Je clique sur "Page - Envoyer - Espace Reservation"
