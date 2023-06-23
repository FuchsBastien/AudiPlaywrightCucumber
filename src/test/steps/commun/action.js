const Connexion = require('../../support/commun/action/connexion');
const CliquerSur = require('../../support/commun/action/cliquerSur');
const SaisirTexte = require('../../support/commun/action/saisirTexte');
const TaperTouche = require('../../support/commun/action/taperTouche');
const { Given, When, Then, And, After } = require('@cucumber/cucumber');
//const { chromium, test, Browser } = require('@playwright/test');

//let browser;
let page;

Given(/^Je suis sur le site "(.*)"$/, async (url) => {
    /*browser = await chromium.launch({headless: false, slowMo: 400});
    page = await browser.newPage();
    await page.goto('https://www.zalando.fr/accueil-homme/');*/
    page = await Connexion(url)
});

Given( /^Je clique sur "(.*)"$/, async (locateur) =>  {
    await CliquerSur(page, locateur)
});

Given(/^Je saisis "(.*)" dans le champ "(.*)"$/,async (texteASaisir,locateur) =>  {
    await SaisirTexte(page, texteASaisir, locateur)
});

Given(/^Je tape sur la touche du clavier "([^"]*)?"$/,async (toucheClavier) =>  {
    await TaperTouche(page, toucheClavier)
});


