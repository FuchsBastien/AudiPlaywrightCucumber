Feature: Configuration_voiture

    Background: 
        Given Je suis sur le site "https://www.audi.fr/"
        And Je clique sur "Page - Cookies - Page d'accueil"

    Scenario: Configuration_voiture
        When Je clique sur "Page - Bouton Découvrir"
        Then Je clique sur "Configurer - Page d'accueil Audi France"
        And Je coche la case "Cocher Design Luxe - Page d'accueil Audi France"
        And Je clique sur "Votre Audi - Page d'accueil Audi France"
        When Je clique sur "Enregistrer la configuration - Page d'accueil Audi France"
        Then Je clique sur "Se conecter - Page d'accueil Audi France"