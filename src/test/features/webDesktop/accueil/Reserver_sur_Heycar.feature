Feature: Je veux reserver une Audi d'occasion sur Heycar en partant de la page d'acceuil du site d'Audi

    #Background: 
        #Given Je suis sur le site "https://www.audi.fr/"
        #And Je clique sur "Page - Cookies - Page d'accueil"

    Scenario: reserver une Audi sur le site Heycar
        Given Je fais defiler jusqu'a l'element "Footer - Heycar - Page d'accueil"
        And Je verifie que l'element "Footer - Heycar - Page d'accueil" est affiche
        When Je clique sur "Footer - Heycar - Page d'accueil"
        Then Je vais sur l'onglet "1"

        #définir les filtres de recherche
        When Je clique sur "Page - Continuez sans accepter - Page reserver sur Heycar"
        And Je clique sur "Page - Region - Page reserver sur Heycar"
        And Je saisis "Île-de-France" dans le champ "Page - Champ saisir region - Page reserver sur Heycar"
        And Je clique sur "Page - Île-de-France - Page reserver sur Heycar"
        Then Je fais defiler jusqu'a l'element "Page - Kilométrage Min - Page reserver sur Heycar"
        And Je saisis "80000" dans le champ "Page - Kilométrage Min - Page reserver sur Heycar"
        And Je clique sur "Page - Couleur du véhicule Gris - Page reserver sur Heycar"
        And Je verifie que l'element "Page - Filtre Île-de-France - Page reserver sur Heycar" est affiche
        And Je verifie que l'element "Page - Filtre Kilométrage - Page reserver sur Heycar" est affiche
        And Je verifie que l'element "Page - Filtre Couleur du véhicule - Page reserver sur Heycar" est affiche
        And J'attend "3" secondes
        And Je fais defiler jusqu'a l'element "Page - premier bouton reserver - Page reserver sur Heycar"
        When Je clique sur "Page - premier bouton reserver - Page reserver sur Heycar"

        #Vos coordonnées
        And J'attend "3" secondes
        And Je verifie que l'element "Page - Titre formulaire coordonnees - Page reserver sur Heycar" est affiche
        And Je verifie que "Page - Titre formulaire coordonnees - Page reserver sur Heycar" affiche le texte "Entrez vos coordonnées pour réserver le véhicule"
        And Je verifie que le texte "Page - Titre formulaire coordonnees - Page reserver sur Heycar" est de couleur "Noir"
        And Je clique sur "Page - Sexe M - Page reserver sur Heycar"
        And Je saisis "Jean" dans le champ "Page -  Prenom - Page reserver sur Heycar"
        And Je saisis "Dupont" dans le champ "Page -  Nom - Page reserver sur Heycar"
        And Je saisis "33 rue Sibuet" dans le champ "Page -  Adresse - Page reserver sur Heycar"
        And Je tape sur la touche du clavier "Enter"
        And Je saisis "jean.dupont@gmail.com" dans le champ "Page -  Mail - Page reserver sur Heycar"
        And Je saisis "0123456789" dans le champ "Page -  Telephone - Page reserver sur Heycar"
        And Je fais defiler jusqu'a l'element "Page -  Accepter condition - Page reserver sur Heycar"
        And Je clique sur "Page -  Accepter condition - Page reserver sur Heycar"
        And Je verifie que l'element "Page -  Suivant vers lieu de rdv - Page reserver sur Heycar" est affiche
        And Je verifie que "Page -  Suivant vers lieu de rdv - Page reserver sur Heycar" affiche le texte "Suivant"
        And Je verifie que le texte "Page -  Suivant vers lieu de rdv - Page reserver sur Heycar" est de couleur "Blanc" 
        Then Je clique sur "Page -  Suivant vers lieu de rdv - Page reserver sur Heycar"

        #Lieu de rdv
        And Je clique sur "Page -  Fais livrer à domicile - Page reserver sur Heycar"
        Then Je clique sur "Page -  Suivant vers reservation - Page reserver sur Heycar"
        #Réservation
        And Je clique sur "Page -  Virement sur compte bloqué sécurisé - Page reserver sur Heycar"
        Then Je clique sur "Page -  Reserver - Page reserver sur Heycar"

        #Confirmation
        And Je saisis "4624 7482 3324 9080" dans le champ "Page -  Numéro de carte - Page reserver sur Heycar"
        And Je clique sur le choix "02" du selecteur "Page -  Mois - Page reserver sur Heycar" dans la page
        And Je clique sur le choix "2025" du selecteur "Page -  Année - Page reserver sur Heycar" dans la page
        And Je saisis "123" dans le champ "Page -  Cryptogramme visuel - Page reserver sur Heycar"
        And Je clique sur "Page -  Enregistrer cette carte (Non) - Page reserver sur Heycar"
        Then Je clique sur "Page -  Valider - Page reserver sur Heycar"
        Then Je verifie que "Page -  Numéro de carte non valide - Page reserver sur Heycar" affiche le texte "Numéro de carte non valide"
        Then Je verifie que le texte "Page -  Numéro de carte non valide - Page reserver sur Heycar" est de couleur "Rouge"
