Feature: Reservation_voiture_neuve

  Scenario: Reservation_voiture_neuve
  
      #Accès Choix Modèle Neuf Disponible
      Given Je verifie que le titre de l'onglet est "Accueil | Audi.fr | Audi France"
      When Je clique sur "Page - Bouton Choix Modèles Véhicules Disponibles - Page d'accueil"
      And Je verifie que l'element "Page - Bouton Decouvrir Audi Q4 e-tron - Page d'accueil" est affiche
      And Je clique sur "Page - Bouton Choix Modèle <modele> Disponible - Page d'accueil"
      And Je clique sur "Page - Lien Vehicules Neufs Disponibles - Page d'accueil"
      And Je verifie que le texte "Page - Titre Stock Audi France - Page recherche Vehicules" est de couleur "Noir"
      And Je verifie que "Page - Bouton Filtre modele vehicule - Page recherche Vehicules" affiche le texte "<modele>"

      #Choisir Modèle
      And J'attend "3" secondes
      And Je clique sur "Page - Premier Résultat Stock - Page recherche Vehicules"
      And Je clique sur "Page - Bouton Contacter le partenaire - Page recherche Vehicules"

      #Formulaire Enregistrement
      And J'attend "10" secondes
      And Je vais sur l'onglet "1"
      And Je verifie que le titre de l'onglet est "myAudi"
      And Je verifie que "Page - Titre Identifiez vous - Page formulaire" affiche le texte "Identifiez-vous"
      And Je verifie que le texte "Page - Titre Identifiez vous - Page formulaire" est de couleur "Noir"
      And Je saisis "<mail>" dans le champ "Page - Champ Mail - Page formulaire"
      And Je clique sur "Page - Bouton Valider - Page formulaire"
      #And Je clique sur le choix "Moins de 6 mois" du selecteur "Page - Selection Délai d'achat - Page formulaire"
      And Je clique sur "Page - Selection Délai d'achat bis - Page formulaire"
      And Je clique sur "Page - Selection Délai d'achat <delai achat> - Page formulaire"
      And J'attend "3" secondes
      #And Je clique sur le choix "Prive" du selecteur "Page - Selection Usage - Page formulaire"
      And Je clique sur "Page - Selection Usage bis - Page formulaire"
      And Je clique sur "Page - Selection Usage <usage> - Page formulaire"
      And J'attend "3" secondes
      And Je clique sur "Page - Bouton Suivant - Page formulaire"
      And Je clique sur "Page - Coche Sexe <sexe> - Page formulaire"
      And Je saisis "<nom>" dans le champ "Page - Champ Nom - Page formulaire"
      And Je saisis "<prenom>" dans le champ "Page - Champ Prénom - Page formulaire"
      And Je saisis "<telephone>" dans le champ "Page - Champ Téléphone - Page formulaire"
      And Je clique sur "Page - Selection Année de Naissance - Page formulaire"
      And Je clique sur "Page - Selection Année de Naissance <annee naissance> - Page formulaire"
      And Je clique sur "Page - Coche Transmission de Donnée - Page formulaire"

      
  Examples:
    | modele              | delai achat        | usage         |  nom      | prenom    |  telephone       | annee naissance |  sexe     |  mail                 |
    | A3 Sportback        | Moins de 6 mois    | Prive         | DUPONT    | Jean      | 06 30 00 00 00   |   1990          | Masculin  |  dupontjean@gmail.com |
    | Q8 Sportback e-tron | Moins de 6 mois    | Professionnel | TOP       | Sylvie    | 06 20 00 00 00   |   1995          | Feminin   |  topsylvie@gmail.com  |
