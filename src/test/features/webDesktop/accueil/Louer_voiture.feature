Feature: Louer_voiture

 Background: 
        Given Je suis sur le site "https://www.audi.fr/"
        And Je clique sur "Page - Cookies - Page d'accueil"

    Scenario: Louer_voiture
        When Je clique sur "Header - Lien Achat et Location - Page d'accueil"
        And Je clique sur "Header - Lien Audi rent : location courte duree - Page d'accueil"
        And Je clique sur "Page - Bouton Louer une Audi - Location"
        And Je bascule vers l'iframe "Page - Iframe Louer une Audi - Location"
        And J'attend "3" secondes

        #Etape 1 Dates de réservation
        And Je verifie que "Header - Titre actif Date Reservation - Location" affiche le texte "Dates de réservation" dans l'iframe
        #And Je clique sur "Page - Champ ville départ - Location" dans l'iframe
        And Je saisis "Paris" dans le champ "Page - Champ ville depart - Location" dans l'iframe
        And Je tape sur la touche du clavier "Enter"
        And J'attend "3" secondes
        And Je clique sur "Page - premier resultat ville depart - Location" dans l'iframe
        And Je clique sur "Page - premier resultat agence ville depart - Location" dans l'iframe
        And Je clique sur "Page - label date depart - Location" dans l'iframe
        And Je clique sur "Page - label choix date depart - Location" dans l'iframe
        And Je clique sur "Page - label date retour - Location" dans l'iframe
        And Je clique sur "Page - label choix date retour - Location" dans l'iframe
        And Je clique sur "Page - bouton chercher- Location" dans l'iframe

        #Etape 2 Choix du véhicule
        And Je verifie que "Header - Titre actif Choix Vehicule - Location" affiche le texte "Choix du véhicule" dans l'iframe
        And Je clique sur "Page - premier bouton reserver- Location" dans l'iframe
       
        #Etape 3 Récapitulatif
        And Je verifie que "Header - Titre actif Recapitulatif - Location" affiche le texte "Récapitulatif" dans l'iframe
        And Je verifie que "Page - recapitulatif Titre nom agence - Location" affiche le texte "Audi rent PARIS WAGRAM" dans l'iframe
        And Je clique sur "Page - bouton effectuer le paiement - Location" dans l'iframe

        #Etape 4 Conducteur
        And Je verifie que "Header - Titre actif Conducteur - Location" affiche le texte "Conducteur" dans l'iframe
        And Je clique sur le choix "m" du selecteur "Page - selection civilite - Location" dans l'iframe
        And Je clique sur "Page - champ nom - Location" dans l'iframe
        And Je saisis "Dupont" dans le champ "Page - champ nom - Location" dans l'iframe
        And Je clique sur "Page - champ nom - Location" dans l'iframe
        And Je saisis "Jean" dans le champ "Page - champ prenom - Location" dans l'iframe
        And Je clique sur "Page - champ email - Location" dans l'iframe
        And Je saisis "jeandupont@gmail.com" dans le champ "Page - champ email - Location" dans l'iframe
        And Je clique sur "Page - champ telephone - Location" dans l'iframe
        And Je saisis "0602000000" dans le champ "Page - champ telephone - Location" dans l'iframe
        And Je clique sur le choix "30 ans et plus" du selecteur "Page - selection age - Location" dans l'iframe
        And Je clique sur "Page - champ adresse - Location" dans l'iframe
        And Je saisis "28 rue de la paix" dans le champ "Page - champ adresse - Location" dans l'iframe
        And Je clique sur "Page - champ code postale - Location" dans l'iframe
        And Je saisis "75000" dans le champ "Page - champ code postale - Location" dans l'iframe
        And Je clique sur "Page - champ ville - Location" dans l'iframe
        And Je saisis "Paris" dans le champ "Page - champ ville - Location" dans l'iframe
        And Je clique sur "Page - champ pays - Location" dans l'iframe
        And Je saisis "France" dans le champ "Page - champ pays - Location" dans l'iframe
        And Je clique sur "Page - coche condition utilisation - Location" dans l'iframe
        And Je clique sur "Page - bouton effectuer le paiement final - Location" dans l'iframe
        And Je saisis "4970000000000000" dans le champ "Page - champ numero carte bleue - Location" dans l'iframe
        And Je clique sur le choix "01" du selecteur "Page - selection mois date validite carte bleue - Location" dans l'iframe
        And Je clique sur le choix "2025" du selecteur "Page - selection annee date validite carte bleue - Location" dans l'iframe
        And Je saisis "333" dans le champ "Page - champ numero cryptogramme - Location" dans l'iframe
        And Je clique sur "Page - bouton valider - Location" dans l'iframe
 


