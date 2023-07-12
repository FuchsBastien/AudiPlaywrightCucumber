Feature: Configuration_voiture

    #Background: 
        #Given Je suis sur le site "https://www.audi.fr/"
        #And Je clique sur "Page - Cookies - Page d'accueil"

    Scenario: Configuration_voiture
        Given Je verifie que l'element "Page - Bouton Decouvrir Audi Q4 e-tron - Page d'accueil" est affiche
        And Je verifie que "Page - Bouton Decouvrir Audi Q4 e-tron - Page d'accueil" affiche le texte "Découvrir l’Audi Q4 e-tron"
        And Je verifie que le texte "Page - Bouton Decouvrir Audi Q4 e-tron - Page d'accueil" est de couleur "Noir"
        When Je clique sur "Page - Bouton Decouvrir Audi Q4 e-tron - Page d'accueil"
        And Je verifie que l'element "Page - Configurer Audi Q4 e-tron - Espace configuration" est affiche
        And Je verifie que "Page - Configurer Audi Q4 e-tron - Espace configuration" affiche le texte "Configurer"
        And Je verifie que le texte "Page - Configurer Audi Q4 e-tron - Espace configuration" est de couleur "Noir"
        Then Je clique sur "Page - Configurer Audi Q4 e-tron - Espace configuration"

        #Configurer le modele choisi
        And Je fais defiler jusqu'a l'element "Page - S line - Espace configuration"
        And Je verifie que l'element "Page - S line - Espace configuration" est affiche
        When Je clique sur "Page - S line - Espace configuration"
        And J'attend "2" secondes
        And Je verifie que l'element "Page - Modele Q4 e-tron - Espace configuration" est affiche
        And Je verifie que "Page - Modele Q4 e-tron - Espace configuration" affiche le texte "Q4e-tron S line 40 e-tron2"
        And Je verifie que l'element "Page - Suivant (Moteurs) - Espace configuration" est affiche
        And Je verifie que "Page - Suivant (Moteurs) - Espace configuration" affiche le texte "Suivant (Moteurs)"
        And Je verifie que le texte "Page - Suivant (Moteurs) - Espace configuration" est de couleur "Blanc"
        Then Je clique sur "Page - Suivant (Moteurs) - Espace configuration"

        #Faire le choix de Moteurs
        And Je fais defiler jusqu'a l'element "Page - quattro - Espace configuration"
        And Je verifie que l'element "Page - quattro - Espace configuration" est affiche
        When Je clique sur "Page - quattro - Espace configuration"
        And Je fais defiler jusqu'a l'element "Page - S line 45 e-tron quattro - Espace configuration"
        And Je verifie que l'element "Page - S line 45 e-tron quattro - Espace configuration" est affiche
        And Je clique sur "Page - S line 45 e-tron quattro - Espace configuration"
        And J'attend "2" secondes
        And Je verifie que l'element "Page - Modele Q4 e-tron - Espace configuration" est affiche
        And Je verifie que "Page - Modele Q4 e-tron - Espace configuration" affiche le texte "Q4e-tron S line 45 e-tron quattro2"
        And Je verifie que l'element "Page - Suivant (Exterieur) - Espace configuration" est affiche
        And Je verifie que "Page - Suivant (Exterieur) - Espace configuration" affiche le texte "Suivant (Extérieur)"
        And Je verifie que le texte "Page - Suivant (Exterieur) - Espace configuration" est de couleur "Blanc"
        Then Je clique sur "Page - Suivant (Exterieur) - Espace configuration"

        #Ajouter accessoire Exterieur
        And Je fais defiler jusqu'a l'element "Page - Couleur Bleu Navarre Métallisé - Espace configuration"
        And Je verifie que l'element "Page - Couleur Bleu Navarre Métallisé - Espace configuration" est affiche
        When Je clique sur "Page - Couleur Bleu Navarre Métallisé - Espace configuration"
        And Je fais defiler jusqu'a l'element "Page - Jantes Audi Sport, style étoile à 5 branches en W - Espace configuration"
        And Je verifie que l'element "Page - Jantes Audi Sport, style étoile à 5 branches en W - Espace configuration" est affiche
        And Je clique sur "Page - Jantes Audi Sport, style étoile à 5 branches en W - Espace configuration"
        And J'attend "2" secondes
        And Je verifie que l'element "Page - Modele Q4 e-tron - Espace configuration" est affiche
        And Je verifie que "Page - Modele Q4 e-tron - Espace configuration" affiche le texte "Q4e-tron S line 45 e-tron quattro2"
        And Je verifie que l'element "Page - Suivant (Interieur) - Espace configuration" est affiche
        And Je verifie que "Page - Suivant (Interieur) - Espace configuration" affiche le texte "Suivant (Intérieur)"
        And Je verifie que le texte "Page - Suivant (Interieur) - Espace configuration" est de couleur "Blanc"
        Then Je clique sur "Page - Suivant (Interieur) - Espace configuration"

        #Ajouter accessoire Interieur
        And Je fais defiler jusqu'a l'element "Page - Sellerie Cuir - Espace configuration"
        And Je verifie que l'element "Page - Sellerie Cuir - Espace configuration" est affiche
        When Je clique sur "Page - Sellerie Cuir - Espace configuration"
        And Je clique sur "Page - Valider Cuir - Espace configuration"
        And J'attend "2" secondes
        And Je verifie que l'element "Page - Modele Q4 e-tron - Espace configuration" est affiche
        And Je verifie que "Page - Modele Q4 e-tron - Espace configuration" affiche le texte "Q4e-tron S line 45 e-tron quattro2"
        And Je verifie que l'element "Page - Votre Audi - Espace configuration" est affiche
        And Je verifie que "Page - Votre Audi - Espace configuration" affiche le texte "Votre Audi"
        And Je verifie que le texte "Page - Votre Audi - Espace configuration" est de couleur "Noir"
        Then Je clique sur "Page - Votre Audi - Espace configuration"

        #Enregistrer votre configuration
        And Je verifie que l'element "Page - Enregistrer la configuration - Espace configuration" est affiche
        And Je verifie que "Page - Enregistrer la configuration - Espace configuration" affiche le texte "Enregistrer la configuration"
        And Je verifie que le texte "Page - Enregistrer la configuration - Espace configuration" est de couleur "Noir"
        When Je clique sur "Page - Enregistrer la configuration - Espace configuration"
        And Je clique sur "Page - Se conecter - Espace configuration"
        And Je saisis "bastien.fuchs@outlook.fr" dans le champ "Page - Champ mail - Espace Personnel"
        And Je clique sur "Page - Bouton suivant - Espace Personnel"
        And Je saisis "testGroupBA" dans le champ "Page - Champ password - Espace Personnel"
        Then Je clique sur "Page - Bouton suivant - Espace Personnel"