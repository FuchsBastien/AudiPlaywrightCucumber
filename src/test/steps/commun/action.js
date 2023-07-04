const { Given, When, Then, And, After } = require('@cucumber/cucumber');
const Connexion = require('../../support/commun/action/connexion');
const CliquerSur = require('../../support/commun/action/cliquerSur');
const SaisirTexte = require('../../support/commun/action/saisirTexte');
const TaperTouche = require('../../support/commun/action/taperTouche');
const Cocher = require('../../support/commun/action/cocher');
const CliquerSurEtAttendre = require('../../support/commun/action/cliquerSurEtAttendre');

const SwitchToIframe = require('../../support/commun/action/switchToIframe');
const ClickButtonInsideIframe = require('../../support/commun/action/clickButtonInsideIframe');
//const { chromium, test, Browser } = require('@playwright/test');
const ChangerOnglet = require('../../support/commun/navigation/changerOnglet');
const VerifierTexteElement = require('../../support/commun/verification/verifierTexteElement');

let browser;
let page;

Given(/^Je suis sur le site "(.*)"$/, {timeout: 25000}, async (url) => {
    /*browser = await chromium.launch({headless: false, slowMo: 400});
    page = await browser.newPage();
    await page.goto('https://www.zalando.fr/accueil-homme/');*/
    page = await Connexion(url)
});

Given(/^Je clique sur "(.*)"$/, {timeout: 25000}, async (locateur) =>  {
    await CliquerSur(page, locateur)
});

Given(/^Je saisis "(.*)" dans le champ "(.*)"$/, {timeout: 25000}, async (texteASaisir,locateur) =>  {
    await SaisirTexte(page, texteASaisir, locateur)
});

Given(/^Je tape sur la touche du clavier "([^"]*)?"$/, {timeout: 30000}, async (toucheClavier) =>  {
    await TaperTouche(page, toucheClavier)
});

Given(/^Je coche la case "(.*)"$/,async (locateur) =>  {
    await Cocher(page, locateur)
});

Given(/^J'attend et je clique sur "(.*)"$/, {timeout: 25000}, async (locateur) =>  {
    await CliquerSurEtAttendre(page, locateur)
});

Given(/^Je vais sur l'onglet "(.*)"$/, {timeout: 25000}, async (numOnglet) =>  {
    page = await ChangerOnglet(page, numOnglet)
});

Given(/^Je bascule vers la fenetre "(.*)"$/, {timeout: 25000}, async (iframeLocator) =>  {
    //page = await Navigation(page)
    this.iframe = await SwitchToIframe(this.page, iframeLocator);
});

Given(/^Je clique sur bouton Iframe "(.*)"$/, {timeout: 25000}, async (buttonLocator) =>  {
    //await CliquerSurIframe(page, locateur)
    await ClickButtonInsideIframe(this.iframe, buttonLocator);
});

/*Given("Je souhaite créer un dossier avec le nom du scénario" , function () {
    const scenarioName = this.pickle;
    console.log('Nom du scénario:', scenarioName);
});*/

Given(/^Je vérifie que "(.*)" affiche le texte "(.*)"$/, {timeout: 25000}, async (locateur, texteAffiche) =>  {
    await VerifierTexteElement(page, locateur, texteAffiche);
});







const VerifierElementVisible = require('../../support/commun/verification/verifierElementVisible');
const VerifierCouleurTexte = require('../../support/commun/verification/verifierCouleurTexte');

Given(/^Je verifier que l'element "(.*)" est affiche$/, {timeout: 25000}, async (locateur) => {
    await VerifierElementVisible(page, locateur);
});

Given(/^Je verifier que le texte "(.*)" est de couleur "(.*)"$/, {timeout: 25000}, async (locateur, couleur) => {
    await VerifierCouleurTexte(page, locateur, couleur);
});