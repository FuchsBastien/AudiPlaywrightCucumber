const { Given, When, Then, And, After } = require('@cucumber/cucumber');
const Connexion = require('../../support/commun/action/connexion');
const CliquerSur = require('../../support/commun/action/cliquerSur');
const SaisirTexte = require('../../support/commun/action/saisirTexte');
const TaperTouche = require('../../support/commun/action/taperTouche');
const Cocher = require('../../support/commun/action/cocher');
const CliquerSurEtAttendre = require('../../support/commun/action/cliquerSurEtAttendre');
const ChangerOnglet = require('../../support/commun/navigation/changerOnglet');
//const { chromium, test, Browser } = require('@playwright/test');

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

/*Given("Je souhaite créer un dossier avec le nom du scénario" , function () {
    const scenarioName = this.pickle;
    console.log('Nom du scénario:', scenarioName);
});*/


