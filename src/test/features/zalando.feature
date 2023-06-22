Feature: zalando

    Background: 
        Given Etre sur le site zalando
        And Accepter les cookies

    Scenario Outline: Faire une recherche de vêtement
        And Aller dans la catégorie vêtement
        And Cliquer sur la catégorie '<category>'
        And Chercher une marque '<brand>'
        And Fermer le navigateur

    Examples:
        | category           | brand      | color   | size  |
        | Vestes             | Aigle      | Bleu    | 40    |
        | T-shirts & Polos   | Bugatti    | Fushia  | XS    |
        | Pantalons          | Esprit     | Fushia  | 32    |
        | Pantalons          | Esprit     | Fushia  | 34    |


        