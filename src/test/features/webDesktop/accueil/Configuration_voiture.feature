Feature: Configuration_voiture

    Background: 
        Given Je suis sur le site "https://www.audi.fr/"
        And Je clique sur "Page - Cookies - Page d'accueil"

    Scenario: Configuration_voiture
        When Je clique sur "Page - Bouton Découvrir"
        Then Je clique sur "Configurer - Page d'accueil Audi France"
        And Je clique sur "Cocher Design Luxe - Page d'accueil Audi France"
        And Je clique sur "Suivant (Moteurs) - Page d'accueil Audi France"
        And Je clique sur "Suivant (Exterieur) - Page d'accueil Audi France"
        And Je clique sur "Couleurs métallisées - Page d'accueil Audi France"
        And Je clique sur "Jantes 20' - Page d'accueil Audi France"
        And Je clique sur "Suivant (Interieur) - Page d'accueil Audi France"
        And Je clique sur "Volant en cuir sport à branches doubles - Page d'accueil Audi France"
        And Je clique sur "Votre Audi - Page d'accueil Audi France"
        When Je clique sur "Enregistrer la configuration - Page d'accueil Audi France"
        Then Je clique sur "Se conecter - Page d'accueil Audi France"
        And Je saisis "bastien.fuchs@outlook.fr" dans le champ "Page - Champ mail - Espace Personnel"
        And Je clique sur "Page - Bouton suivant - Espace Personnel"
        And Je clique sur "Page - Champ password - Espace Personnel"
        And Je saisis "testGroupBA" dans le champ "Page - Champ password - Espace Personnel"
        And Je clique sur "Page - Bouton suivant - Espace Personnel"