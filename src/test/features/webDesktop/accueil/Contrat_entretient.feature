Feature: je fais la manipulation de depart qui me permettra de payer un contrat d'entretien de ma Audi

    #Background: 
        #Given Je suis sur le site "https://www.audi.fr/"
        #And Je clique sur "Page - Cookies - Page d'accueil"

    Scenario:Contrat_entretient
        When Je clique sur "Header - Menu - Page d'accueil"
        And Je clique sur "Header - Lien Votre Audi - Page d'accueil"
        And Je clique sur "Header - Lien Entretenir et réparer mon Audi - Page d'accueil"
        And Je verifie que l'element "Page - Contrat entretient - Espace Entretenir Mon Audi" est affiche
        And Je verifie que l'element "Page - Souscrire un contrat d’entretien pour mon Audi - Espace Entretenir Mon Audi" est affiche
        And Je verifie que "Page - Souscrire un contrat d’entretien pour mon Audi - Espace Entretenir Mon Audi" affiche le texte "Souscrire un contrat d’entretien pour mon Audi"
        And Je verifie que le texte "Page - Souscrire un contrat d’entretien pour mon Audi - Espace Entretenir Mon Audi" est de couleur "rgb(0, 0, 0)"
        Then Je clique sur "Page - Souscrire un contrat d’entretien pour mon Audi - Espace Entretenir Mon Audi"
        And Je verifie que l'element "Page - Souscrire - Espace Entretenir Mon Audi" est affiche
        And Je verifie que "Page - Souscrire - Espace Entretenir Mon Audi" affiche le texte "Souscrire"
        And Je verifie que le texte "Page - Souscrire - Espace Entretenir Mon Audi" est de couleur "rgb(0, 0, 0)"
        And Je clique sur "Page - Souscrire - Espace Entretenir Mon Audi"
        And Je vais sur l'onglet "1"
        When Je clique sur "Page - Cookies - Espace Entretenir Mon Audi"
        And Je saisis "AB-123-CD" dans le champ "Page - Immatriculation - Espace Entretenir Mon Audi"
        And Je saisis "40" dans le champ "Page - Kilometrage actuel - Espace Entretenir Mon Audi"
        Then Je clique sur "Page - Trouver votre vehicule - Espace Entretenir Mon Audi"
        And Je verifie que l'element "Page - Message erreur - Espace Entretenir Mon Audi" est affiche
        And Je verifie que "Page - Message erreur - Espace Entretenir Mon Audi" affiche le texte "Nous ne pouvons pas vous proposer de contrat d'entretien pour ce véhicule."
        And Je verifie que le texte "Page - Message erreur - Espace Entretenir Mon Audi" est de couleur "#bb0a30"