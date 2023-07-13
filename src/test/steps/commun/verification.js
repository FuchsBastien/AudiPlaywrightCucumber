const {Before, After, Given, When, Then, And, AfterAll} = require('@cucumber/cucumber');
const VerifierTexteElement = require('../../support/commun/verification/verifierTexteElement');
const VerifierElementVisible = require('../../support/commun/verification/verifierElementVisible');
const VerifierCouleurTexte = require('../../support/commun/verification/verifierCouleurTexte');
const VerifierTitrePage = require('../../support/commun/verification/verifierTitrePage');

Given( /^Je verifie que "(.*)" affiche le texte "(.*)"$/, {timeout: 25000}, async (locateur, texteAffiche) =>  {
    await VerifierTexteElement(page, locateur, texteAffiche);
});

Given( /^Je verifie que "(.*)" affiche le texte "(.*)" dans l'iframe$/, {timeout: 25000}, async (locateur, texteAffiche) =>  {
    await VerifierTexteElement(iframe, locateur, texteAffiche);
});

Given(/^Je verifie que l'element "(.*)" est affiche$/, {timeout: 25000}, async (locateur) => {
    await VerifierElementVisible(page, locateur);
});

Given(/^Je verifie que l'element "(.*)" est affiche dans l'iframe$/, {timeout: 25000}, async (locateur) => {
    await VerifierElementVisible(iframe, locateur);
});

Given(/^Je verifie que le texte "(.*)" est de couleur "(.*)"$/, {timeout: 25000}, async (locateur, couleur) => {
    await VerifierCouleurTexte(page, locateur, couleur);
});

Given(/^Je verifie que le texte "(.*)" est de couleur "(.*)" dans l'iframe$/, {timeout: 25000}, async (locateur, couleur) => {
    await VerifierCouleurTexte(iframe, locateur, couleur);
});

Given(/^Je verifie que le titre de l'onglet est "(.*)"$/, {timeout: 25000}, async (titre) => {
    await VerifierTitrePage(page, titre);
});