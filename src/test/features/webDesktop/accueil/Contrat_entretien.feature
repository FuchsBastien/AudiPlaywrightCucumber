Feature: je fais la manipulation de depart qui me permettra de payer un contrat d'entretien de ma Audi

    Scenario:Contrat_entretien
        Given Je verifie que le titre de l'onglet est "Accueil | Audi.fr | Audi France"
        And Je verifie que l'element "Header - Menu - Page d'accueil" est affiche
        When Je clique sur "Header - Menu - Page d'accueil"
        And Je verifie que l'element "Header - Lien Votre Audi - Page d'accueil" est affiche
        And Je clique sur "Header - Lien Votre Audi - Page d'accueil"
        And Je verifie que l'element "Header - Lien Entretenir et réparer mon Audi - Page d'accueil" est affiche
        And Je clique sur "Header - Lien Entretenir et réparer mon Audi - Page d'accueil"
        And Je fais defiler jusqu'a l'element "Page - Contrat entretient - Espace Entretenir Mon Audi"
        And Je verifie que l'element "Page - Contrat entretient - Espace Entretenir Mon Audi" est affiche
        And Je verifie que l'element "Page - Souscrire un contrat d’entretien pour mon Audi - Espace Entretenir Mon Audi" est affiche
        And Je verifie que "Page - Souscrire un contrat d’entretien pour mon Audi - Espace Entretenir Mon Audi" affiche le texte "Souscrire un contrat d’entretien pour mon Audi"
        And Je verifie que le texte "Page - Souscrire un contrat d’entretien pour mon Audi - Espace Entretenir Mon Audi" est de couleur "Noir"
        Then Je clique sur "Page - Souscrire un contrat d’entretien pour mon Audi - Espace Entretenir Mon Audi"
        And Je verifie que l'element "Page - Souscrire - Espace Entretenir Mon Audi" est affiche
        And Je verifie que "Page - Souscrire - Espace Entretenir Mon Audi" affiche le texte "Souscrire"
        And Je verifie que le texte "Page - Souscrire - Espace Entretenir Mon Audi" est de couleur "Noir"
        And Je clique sur "Page - Souscrire - Espace Entretenir Mon Audi"
        And Je vais sur l'onglet "1"
        And Je verifie que le titre de l'onglet est "Audi France"
        When Je clique sur "Page - Cookies - Espace Entretenir Mon Audi"
        And Je fais defiler jusqu'a l'element "Page - Immatriculation - Espace Entretenir Mon Audi"
        And Je saisis "AB-123-CD" dans le champ "Page - Immatriculation - Espace Entretenir Mon Audi"
        And Je saisis "40" dans le champ "Page - Kilometrage actuel - Espace Entretenir Mon Audi"
        Then Je clique sur "Page - Trouver votre vehicule - Espace Entretenir Mon Audi"
        And J'attend "2" secondes
        And Je verifie que l'element "Page - Message erreur - Espace Entretenir Mon Audi" est affiche
        And Je verifie que "Page - Message erreur - Espace Entretenir Mon Audi" affiche le texte "Nous ne pouvons pas vous proposer de contrat d'entretien pour ce véhicule."
        And Je verifie que le texte "Page - Message erreur - Espace Entretenir Mon Audi" est de couleur "Rouge"