Feature: Accueil_recherche

  #Background: 
    #Given Je suis sur le site "https://www.audi.fr/"
    #And Je clique sur "Page - Cookies - Page d'accueil"
    
  Scenario: Accueil_recherche
        #Choisir le modele voulu a travers la recherche
        Given Je verifie que l'element "Header - Menu - Page d'accueil" est affiche
        When Je clique sur "Header - Menu - Page d'accueil"
        And Je verifie que l'element "Header - Logo Recherche - Page d'accueil" est affiche
        And Je clique sur "Header - Logo Recherche - Page d'accueil"
        And Je saisis "Q3" dans le champ "Header - Champ recherche - Page d'accueil"
        And Je tape sur la touche du clavier "Enter"
        Then Je clique sur "Header - Audi Q3 Sportback - Page d'accueil"
        And Je clique sur "Page - Fermer INFORMATION IMPORTANTE - Espace configuration"

        #Configurer le modele choisi
        And Je fais defiler jusqu'a l'element "Page - Configurer Q3 - Espace configuration"
        And Je verifie que l'element "Page - Configurer Q3 - Espace configuration" est affiche
        And Je verifie que le texte "Page - Configurer Q3 - Espace configuration" est de couleur "rgb(0, 0, 0)"
        And Je verifie que "Page - Configurer Q3 - Espace configuration" affiche le texte "Configurer"
        When Je clique sur "Page - Configurer Q3 - Espace configuration"
        And J'attend "1" secondes
        And Je verifie que l'element "Page - Suivant (Moteurs) - Espace configuration" est affiche
        And Je verifie que le texte "Page - Suivant (Moteurs) - Espace configuration" est de couleur "rgb(255, 255, 255)"
        And Je verifie que "Page - Suivant (Moteurs) - Espace configuration" affiche le texte "Suivant (Moteurs)"
        And Je clique sur "Page - Suivant (Moteurs) - Espace configuration"
        And Je fais defiler jusqu'a l'element "Page - Diesel - Espace configuration"
        And Je verifie que l'element "Page - Diesel - Espace configuration" est affiche
        And Je verifie que le texte "Page - Diesel - Espace configuration" est de couleur "#4c4c4c"
        And Je verifie que "Page - Texte Diesel - Espace configuration" affiche le texte "Diesel"
        And Je clique sur "Page - Diesel - Espace configuration"
        And Je verifie que l'element "Page - Suivant (Exterieur) - Espace configuration" est affiche
        And Je verifie que le texte "Page - Suivant (Exterieur) - Espace configuration" est de couleur "rgb(255, 255, 255)"
        And Je verifie que "Page - Suivant (Exterieur) - Espace configuration" affiche le texte "Suivant (Extérieur)"
        And Je clique sur "Page - Suivant (Exterieur) - Espace configuration"
        And Je fais defiler jusqu'a l'element "Page - Couleurs personnalisées Audi exclusive - Espace configuration"
        And Je verifie que l'element "Page - Couleurs personnalisées Audi exclusive - Espace configuration" est affiche
        And Je clique sur "Page - Couleurs personnalisées Audi exclusive - Espace configuration"
        And Je verifie que l'element "Page - Votre Audi - Espace configuration" est affiche
        And Je verifie que le texte "Page - Votre Audi - Espace configuration" est de couleur "rgb(0, 0, 0)"
        And Je verifie que "Page - Votre Audi - Espace configuration" affiche le texte "Votre Audi"
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
  
 
   
