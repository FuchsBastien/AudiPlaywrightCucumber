const CliquerSur = require('../../support/commun/action/cliquerSur');
//const SaisirTexte = require('../../support/commun/action/saisirTexte');
const { Given, When, Then, And, After } = require('@cucumber/cucumber');
const { chromium, test, Browser } = require('@playwright/test');

let browser;
let page;


When('Je suis sur le site Zalando', async function () {
    browser = await chromium.launch({headless: false, slowMo: 400});
    page = await browser.newPage();
    await page.goto('https://www.zalando.fr/accueil-homme/');
});

Given( /^Je clique sur "(.*)"$/, async (locateur) =>  {
    await CliquerSur(page, locateur)
});

/*Given(/^Je saisis "(.*)" dans le champ "(.*)"$/,async (locateur) =>  {
    await SaisirTexte(page, locateur)
});*/

