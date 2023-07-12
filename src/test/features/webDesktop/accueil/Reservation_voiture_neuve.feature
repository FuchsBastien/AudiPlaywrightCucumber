Feature: Reservation_voiture_neuve

  Scenario: Reservation_voiture_neuve
      #Accès Choix Modèle Neuf Disponible
      When Je clique sur "Page - Bouton Choix Modèles Véhicules Disponibles - Page d'accueil"
      And Je verifie que l'element "Page - Bouton Decouvrir Audi Q4 e-tron - Page d'accueil" est affiche
      And Je clique sur "Page - Bouton Choix Modèle <modèle> Disponible - Page d'accueil"
      And Je clique sur "Page - Lien <modèle> Neufs Disponibles - Page d'accueil"
      And Je verifie que le texte "Page - Titre Stock Audi France - Page recherche Vehicules" est de couleur "Noir"

      #Choisir Modèle
      And J'attend "3" secondes
      And Je clique sur "Page - Premier Résultat Stock - Page recherche Vehicules"
      And Je clique sur "Page - Bouton Contacter le partenaire - Page recherche Vehicules"

      #Formulaire Enregistrement
      And J'attend "3" secondes
      And Je vais sur l'onglet "1"
      And Je verifie que "Page - Titre Identifiez vous - Page formulaire" affiche le texte "Identifiez-vous"
      And Je verifie que le texte "Page - Titre Identifiez vous - Page formulaire" est de couleur "Noir"
      And Je saisis "bastien.fuchs@outlook.fr" dans le champ "Page - Champ Mail - Page formulaire"
      And Je clique sur "Page - Bouton Valider - Page formulaire"
      #And Je clique sur le choix "<délai d'achat>" du selecteur "Page - Selection Délai d'achat - Page formulaire"
      And Je clique sur "Page - Selection Délai d'achat bis - Page formulaire"
      And Je clique sur "Page - Selection Délai d'achat <délai d'achat> - Page formulaire"
      And J'attend "3" secondes
      #And Je clique sur le choix "<usage>" du selecteur "Page - Selection Usage - Page formulaire"
      And Je clique sur "Page - Selection Usage bis - Page formulaire"
      And Je clique sur "Page - Selection Usage <usage> - Page formulaire"
      And J'attend "3" secondes
      And Je clique sur "Page - Bouton Suivant - Page formulaire"
      And Je clique sur "Page - Coche Transmission de Donnée - Page formulaire"
      And Je clique sur "Page - Coche Sexe <sexe> - Page formulaire"
      And Je saisis "<nom>" dans le champ "Page - Champ Nom - Page formulaire"
      And Je saisis "<prénom>" dans le champ "Page - Champ Prénom - Page formulaire"
      And Je saisis "<téléphone>" dans le champ "Page - Champ Téléphone - Page formulaire"
      And Je clique sur "Page - Selection Année de Naissance - Page formulaire"
      And Je clique sur "Page - Selection Année de Naissance <année naissance> - Page formulaire"

      
  Examples:
    | modèle       | délai d'achat      | usage         |  nom      | prénom    |  téléphone       | année naissance |  sexe         |
    #| Q8 e-tron    | Moins de 6 mois    | Privé         | FUCHS     | Bastien   | 06 20 00 00 00   |   1990          | Masculin      |      
    | A3 sportback | Moins de 6 mois    | Privé         | TIGUERCHA | Aghiles   | 06 30 00 00 00   |   1990          |  Masculin     |
