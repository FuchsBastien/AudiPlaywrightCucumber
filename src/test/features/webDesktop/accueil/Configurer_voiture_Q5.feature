Feature: En ayant un compte sur ce site , je veux configurée une Q5 qui est le modèle le plus en vogue en 2022 chez Audi

    Scenario: Configurer_voiture_Q5
        #Choisir le modele voulu
        Given Je verifie que l'element "Header - Menu - Page d'accueil" est affiche
        And Je clique sur "Header - Menu - Page d'accueil"
        And Je verifie que l'element "Header - Modeles - Page d'accueil" est affiche
        And Je clique sur "Header - Modeles - Page d'accueil"
        And Je verifie que l'element "Header - Tous les modeles - Page d'accueil" est affiche
        And Je clique sur "Header - Tous les modeles - Page d'accueil"
        And Je verifie que l'element "Page - Trier par - Espace configuration" est affiche
        When Je clique sur "Page - Trier par - Espace configuration"
        And Je verifie que l'element "Page - Q5 - Espace configuration" est affiche
        And Je verifie que "Page - Q5 - Espace configuration" affiche le texte "Q5"
        And Je verifie que le texte "Page - Q5 - Espace configuration" est de couleur "rgb(255, 255, 255)"
        And Je clique sur "Page - Q5 - Espace configuration"
        And Je verifie que l'element "Page - Resultats affiches - Espace configuration" est affiche
        And Je verifie que le texte "Page - Resultats affiches - Espace configuration" est de couleur "rgb(255, 255, 255)"
        And Je verifie que "Page - Resultats affiches - Espace configuration" affiche le texte "Résultats affichés"
        Then Je clique sur "Page - Resultats affiches - Espace configuration"
        And Je fais defiler jusqu'a l'element "Page - Modele Q5 - Espace configuration"
        And Je verifie que l'element "Page - Modele Q5 - Espace configuration" est affiche
        And Je verifie que "Page - Modele Q5 - Espace configuration" affiche le texte "Q5"
        And Je verifie que l'element "Page - Plus informations - Espace configuration" est affiche
        And Je verifie que "Page - Plus informations - Espace configuration" affiche le texte "Plus d'informations"
        And Je clique sur "Page - Plus informations - Espace configuration"
        And Je clique sur "Page - Fermer INFORMATION IMPORTANTE - Espace configuration"

        #Configurer le modele choisi
        And Je verifie que l'element "Page - Configurer Q5 - Espace configuration" est affiche
        And Je verifie que "Page - Configurer Q5 - Espace configuration" affiche le texte "Configurer"
        And Je verifie que le texte "Page - Configurer Q5 - Espace configuration" est de couleur "rgb(0, 0, 0)"
        When Je clique sur "Page - Configurer Q5 - Espace configuration"
        And J'attend "1" secondes
        And Je verifie que l'element "Page - Suivant (Moteurs) - Espace configuration" est affiche
        And Je verifie que "Page - Suivant (Moteurs) - Espace configuration" affiche le texte "Suivant (Moteurs)"
        And Je verifie que le texte "Page - Suivant (Moteurs) - Espace configuration" est de couleur "rgb(255, 255, 255)"
        And Je clique sur "Page - Suivant (Moteurs) - Espace configuration"
        And Je fais defiler jusqu'a l'element "Page - Diesel - Espace configuration"
        And Je verifie que l'element "Page - Diesel - Espace configuration" est affiche
        And Je verifie que le texte "Page - Diesel - Espace configuration" est de couleur "#4c4c4c"
        And Je verifie que "Page - Texte Diesel - Espace configuration" affiche le texte "Diesel"
        And Je clique sur "Page - Diesel - Espace configuration"
        And Je verifie que l'element "Page - Suivant (Exterieur) - Espace configuration" est affiche
        And Je verifie que "Page - Suivant (Exterieur) - Espace configuration" affiche le texte "Suivant (Extérieur)"
        And Je verifie que le texte "Page - Suivant (Exterieur) - Espace configuration" est de couleur "rgb(255, 255, 255)"
        And Je clique sur "Page - Suivant (Exterieur) - Espace configuration"
        And Je fais defiler jusqu'a l'element "Page - Couleur vert district métallisées - Espace configuration"
        And Je verifie que l'element "Page - Couleur vert district métallisées - Espace configuration" est affiche
        And Je clique sur "Page - Couleur vert district métallisées - Espace configuration"
        And Je verifie que l'element "Page - Votre Audi - Espace configuration" est affiche
        And Je verifie que "Page - Votre Audi - Espace configuration" affiche le texte "Votre Audi"
        And Je verifie que le texte "Page - Votre Audi - Espace configuration" est de couleur "rgb(0, 0, 0)"
        Then Je clique sur "Page - Votre Audi - Espace configuration"

        #Enregistrer votre configuration
        And Je verifie que l'element "Page - Enregistrer la configuration - Espace configuration" est affiche
        And Je verifie que "Page - Enregistrer la configuration - Espace configuration" affiche le texte "Enregistrer la configuration"
        And Je verifie que le texte "Page - Enregistrer la configuration - Espace configuration" est de couleur "rgb(0, 0, 0)"
        When Je clique sur "Page - Enregistrer la configuration - Espace configuration"
        And Je clique sur "Page - Se conecter - Espace configuration"
        And Je saisis "bastien.fuchs@outlook.fr" dans le champ "Page - Champ mail - Espace Personnel"
        And Je clique sur "Page - Bouton suivant - Espace Personnel"
        And Je saisis "testGroupBA" dans le champ "Page - Champ password - Espace Personnel"
        And Je clique sur "Page - Bouton suivant - Espace Personnel"