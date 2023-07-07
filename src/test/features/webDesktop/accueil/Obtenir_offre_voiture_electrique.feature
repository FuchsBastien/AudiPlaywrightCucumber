Feature:Je shouaite regarder les offres du moments des voitures electriques pour obtenir une offre

	Scenario: Obtenir_offre_voiture_electrique
        Given Je verifie que l'element "Header - Menu - Page d'accueil" est affiche
        And Je clique sur "Header - Menu - Page d'accueil"
        And Je verifie que l'element "Header - Lien Achat et Location - Page d'accueil" est affiche
		And Je clique sur "Header - Lien Achat et Location - Page d'accueil"
        And Je verifie que l'element "Header - Lien Offres du moment - Page d'accueil" est affiche
		When Je clique sur "Header - Lien Offres du moment - Page d'accueil"
        And Je verifie que l'element "Page - Electriques - Page offres du moments" est affiche
		And Je clique sur "Page - Electriques - Page offres du moments"
        And J'attend "3" secondes
        And Je fais defiler jusqu'a l'element "Page - Audi e-tron GT quattro - Page offres du moments"
        And Je verifie que l'element "Page - Audi e-tron GT quattro - Page offres du moments" est affiche
        And Je verifie que "Page - Texte (Audi e-tron GT quattro) - Page offres du moments" affiche le texte "Audi e-tron GT quattro"
		And Je clique sur "Page - Audi e-tron GT quattro - Page offres du moments"
        Then Je bascule vers l'iframe "Page - Ifram obtenir une offre - Page offres du moments"

        #Saisir mail
        And Je verifie que l'element "Page - Identifiez vous - Page offres du moments" est affiche dans l'iframe
        And Je verifie que "Page - Identifiez vous - Page offres du moments" affiche le texte "Identifiez-vous" dans l'iframe
        And Je verifie que le texte "Page - Identifiez vous - Page offres du moments" est de couleur "rgb(0, 0, 0)" dans l'iframe
        And Je saisis "alt.em-bovhbcad@yopmail.com" dans le champ "Page - Saisissez votre email - Page offres du moments" dans l'iframe
        Then Je clique sur "Page - Bouton suivant - Page offres du moments" dans l'iframe

        #Connecter a mon espace
        And Je saisis "JeSaisPas23%" dans le champ "Page - Champ password - Espace Personnel"
        And Je clique sur "Page - Bouton suivant - Espace Personnel"

        #Completez les informations
        And Je clique sur "Page - Gamme - Page offres du moments"
        And Je clique sur "Page - e-tron GT - Page offres du moments"
        And Je clique sur "Page - Modele - Page offres du moments"
        And Je clique sur "Page - Modele (Audi e-tron GT quattro) - Page offres du moments"
        And Je clique sur "Page - Delai d'achat - Espace Reservation"
        And Je clique sur "Page - Plus de 12 mois - Espace Reservation"
        And Je clique sur "Page - Type d'achat - Espace Reservation"
        And Je clique sur "Page - Neuf - Espace Reservation"
        And Je clique sur "Page - Usage - Espace Reservation"
        And Je clique sur "Page - Prive - Espace Reservation"
        And Je saisis "92800" dans le champ "Page - Code postal - Espace Reservation"
        And Je clique sur "Page - Fleche Partenaire Audi - Espace Reservation"
        And Je clique sur "Page - Hauts de Seine(92) - Espace Reservation"
        And Je clique sur "Page - BAUER PARIS WAGRAM (7.1km) - Page offres du moments"
        Then Je clique sur "Page - Suivant - Espace Reservation"

        #Validez votre demande
        And Je clique sur "Page - Gener M - Espace Reservation"
        And Je clique sur "Page - Cocher J'accepte les conditions - Espace Reservation"
        Then Je clique sur "Page - Envoyer - Espace Reservation"
        And J'attend "3" secondes
        And Je verifie que l'element "Page - Image - Page offres du moments" est affiche
        And Je verifie que l'element "Page - Message - Page offres du moments" est affiche
        And Je verifie que "Page - Message - Page offres du moments" affiche le texte "Votre demande a bien été prise en compte."