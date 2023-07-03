Feature: Je veux reserver une Audi d'occasion sur Heycar en partant de la page d'acceuil du site d'Audi

    Background: 
        Given Je suis sur le site "https://www.audi.fr/"
        And Je clique sur "Page - Cookies - Page d'accueil"

    Scenario: reserver une Audi sur le site Heycar
        When Je clique sur "Footer - Heycar - Page d'accueil"
        And Je vais sur l'onglet "1"
        #définir les filtres de recherche
        And Je clique sur "Page - Continuez sans accepter - Page reserver sur Heycar"
        And Je clique sur "Page - Region - Page reserver sur Heycar"
        And Je saisis "Île-de-France" dans le champ "Page - Champ saisir region - Page reserver sur Heycar"
        Then Je clique sur "Page - Île-de-France - Page reserver sur Heycar"
        And Je saisis "80000" dans le champ "Page - Kilométrage Min - Page reserver sur Heycar" 
        And Je clique sur "Page - Couleur du véhicule Noir - Page reserver sur Heycar"
        When J'attend et je clique sur "Page - Réserver Audi A3Sportback 1.6 TDI 110ch FAP Business line S tronic 7 - Page reserver sur Heycar"
        #Vos coordonnées
        And J'attend et je clique sur "Page - Sexe M - Page reserver sur Heycar"
        And Je saisis "Jean" dans le champ "Page -  Prenom - Page reserver sur Heycar"
        And Je saisis "Dupont" dans le champ "Page -  Nom - Page reserver sur Heycar"
        And Je saisis "33 rue Sibuet" dans le champ "Page -  Adresse - Page reserver sur Heycar"
        And Je tape sur la touche du clavier "Enter"
        And Je saisis "jean.dupont@gmail.com" dans le champ "Page -  Mail - Page reserver sur Heycar"
        And Je saisis "0123456789" dans le champ "Page -  Telephone - Page reserver sur Heycar"
        And Je clique sur "Page -  Accepter condition - Page reserver sur Heycar"
        Then Je clique sur "Page -  Suivant vers lieu de rdv - Page reserver sur Heycar"
        #Lieu de rdv
        And Je clique sur "Page -  Fais livrer à domicile - Page reserver sur Heycar"
        Then Je clique sur "Page -  Suivant vers reservation - Page reserver sur Heycar"
        #Réservation
        And Je clique sur "Page -  Virement sur compte bloqué sécurisé - Page reserver sur Heycar"
        Then Je clique sur "Page -  Reserver - Page reserver sur Heycar"
        #Confirmation
        And Je saisis "4624 7482 3324 9080" dans le champ "Page -  Numéro de carte - Page reserver sur Heycar"
        And Je clique sur "Page -  Mois - Page reserver sur Heycar"
        And Je tape sur la touche du clavier "ArrowDown"
        And Je tape sur la touche du clavier "Enter"
        And Je clique sur "Page -  Année - Page reserver sur Heycar"
        And Je tape sur la touche du clavier "ArrowDown"
        And Je tape sur la touche du clavier "ArrowDown"
        And Je tape sur la touche du clavier "Enter"
        And Je saisis "123" dans le champ "Page -  Cryptogramme visuel - Page reserver sur Heycar"
        And Je clique sur "Page -  Enregistrer cette carte (Non) - Page reserver sur Heycar"
        Then Je clique sur "Page -  Valider - Page reserver sur Heycar"
        #Then Je vérifie que "Page -  Numéro de carte non valide - Page reserver sur Heycar" affiche le texte "Numéro de carte non valide"