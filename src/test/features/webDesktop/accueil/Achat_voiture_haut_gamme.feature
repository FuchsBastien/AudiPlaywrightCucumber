Feature: Acheter une voiture avec le critère de recherche 'Haut de gamme'

    #Background: 
        #Given Je suis sur le site "https://www.audi.fr/"
        #And Je clique sur "Page - Cookies - Page d'accueil"

    Scenario: je réserve une Audi Haut de gamme (Audi A6 allroad quattro)
        Given Je fais defiler jusqu'a l'element "Page - Véhicules neufs - Page d'accueil"
        And Je verifie que l'element "Page - Véhicules neufs - Page d'accueil" est affiche
        When Je clique sur "Page - Véhicules neufs - Page d'accueil"
        And Je clique sur "Page - Réinitialiser tous les filtres - Espace voiture Haut de Gamme"
        And Je clique sur "Page - Equipement - Espace voiture Haut de Gamme"
        And Je clique sur "Page - Haut de gamme: Avus Extended - Espace voiture Haut de Gamme"
        And Je verifie que l'element "Page - Filtre Avus Extended - Espace voiture Haut de Gamme" est affiche
        And J'attend "3" secondes
        And Je fais defiler jusqu'a l'element "Page - Audi A6 allroad quattro - Espace voiture Haut de Gamme"
        Then Je clique sur "Page - Audi A6 allroad quattro - Espace voiture Haut de Gamme"
        And Je verifie que "Page - Audi A6 allroad quattro - Espace voiture Haut de Gamme" affiche le texte "Audi A6 allroad quattro"
        And Je verifie que l'element "Page - Audi A6 allroad quattro - Espace voiture Haut de Gamme" est affiche
        And Je verifie que le texte "Page - Réservé votre Audi - Espace voiture Haut de Gamme" est de couleur "Noir"
        When Je clique sur "Page - Réservé votre Audi - Espace voiture Haut de Gamme"
        Then Je vais sur l'onglet "1"

        #Saisir les informations de Contacte
        When Je clique sur "Page - Refus cookies - Espace voiture Haut de Gamme"
        And Je verifie que l'element "Page - Titre Formulaire (Contact) - Espace voiture Haut de Gamme" est affiche
        And Je verifie que "Page - Titre Formulaire (Contact) - Espace voiture Haut de Gamme" affiche le texte "Contact"
        And Je verifie que le texte "Page - Titre Formulaire (Contact) - Espace voiture Haut de Gamme" est de couleur "Noir"
        And Je saisis "Daniel" dans le champ "Page - Prenom - Espace voiture Haut de Gamme"
        And Je saisis "JACK" dans le champ "Page - Nom - Espace voiture Haut de Gamme"
        And Je saisis "alt.em-bovhbcad@yopmail.com" dans le champ "Page - Adresse email - Espace voiture Haut de Gamme"
        And Je saisis "0190906611" dans le champ "Page - Numero de telephone mobile - Espace voiture Haut de Gamme"
        Then Je clique sur "Page - Suivant adresse - Espace voiture Haut de Gamme"

        #Saisir les informations d'Adresse
        And Je verifie que l'element "Page - Titre Formulaire (Adresse) - Espace voiture Haut de Gamme" est affiche
        And Je verifie que "Page - Titre Formulaire (Adresse) - Espace voiture Haut de Gamme" affiche le texte "Adresse"
        And Je verifie que le texte "Page - Titre Formulaire (Adresse) - Espace voiture Haut de Gamme" est de couleur "Noir"
        When Je saisis "33 rue Sibuet" dans le champ "Page - Numero de la rue et rue - Espace voiture Haut de Gamme"
        And Je saisis "Paris" dans le champ "Page - Ville - Espace voiture Haut de Gamme"
        And Je saisis "75012" dans le champ "Page - Code postale - Espace voiture Haut de Gamme"
        Then Je clique sur "Page - Suivant Services additionnels - Espace voiture Haut de Gamme"

        #Saisir les informations de Services additionnels
        And Je verifie que l'element "Page - Titre Formulaire (Services additionnels) - Espace voiture Haut de Gamme" est affiche
        And Je verifie que "Page - Titre Formulaire (Services additionnels) - Espace voiture Haut de Gamme" affiche le texte "Services additionnels"
        And Je verifie que le texte "Page - Titre Formulaire (Services additionnels) - Espace voiture Haut de Gamme" est de couleur "Noir"
        When Je clique sur "Page - Livraison à domicile - Espace voiture Haut de Gamme"
        Then Je clique sur "Page - Suivant Commande - Espace voiture Haut de Gamme"

        #Confirmer la Commande
        And Je verifie que l'element "Page - Titre Formulaire (Commande) - Espace voiture Haut de Gamme" est affiche
        And Je verifie que "Page - Titre Formulaire (Commande) - Espace voiture Haut de Gamme" affiche le texte "Commande"
        And Je verifie que le texte "Page - Titre Formulaire (Commande) - Espace voiture Haut de Gamme" est de couleur "Noir"
        When Je clique sur "Page - Je confirme avoir lu et accepté les Conditions Générales de Réservation - Espace voiture Haut de Gamme"
        Then Je clique sur "Page - Proceder au paiement - Espace voiture Haut de Gamme"

        #Saisir les informations de Paiement
        And Je clique sur "Page - Fermer Annonce - Page offres du moments"
        When Je bascule vers l'iframe "Page - Iframe Card Number - Espace voiture Haut de Gamme"
        And Je saisis "0605 1761 7548 0125" dans le champ "Page - Card Number - Espace voiture Haut de Gamme" dans l'iframe
        And Je saisis "02/25" dans le champ "Page - Expiry Date - Espace voiture Haut de Gamme"
        And Je saisis "JACK Daniel" dans le champ "Page - Card holder - Espace voiture Haut de Gamme"
        And Je bascule vers l'iframe "Page - Iframe CVV - Espace voiture Haut de Gamme"
        And Je saisis "640" dans le champ "Page - CVV - Espace voiture Haut de Gamme" dans l'iframe
        And Je verifie que l'element "Page - Titre Formulaire (Paiement) - Espace voiture Haut de Gamme" est affiche
        And Je verifie que "Page - Titre Formulaire (Paiement) - Espace voiture Haut de Gamme" affiche le texte "Paiement"
        And Je verifie que le texte "Page - Titre Formulaire (Paiement) - Espace voiture Haut de Gamme" est de couleur "Noir"
        And Je verifie que le texte "Page - Demande de reservation avec empreinte bancaire - Espace voiture Haut de Gamme" est de couleur "Blanc"
        Then Je verifie que l'element "Page - Demande de reservation avec empreinte bancaire - Espace voiture Haut de Gamme" est affiche