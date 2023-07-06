const {Before, After, Given, When, Then, And} = require('@cucumber/cucumber');
const Connexion = require('../../support/commun/navigation/connexion');
const CliquerSur = require('../../support/commun/action/cliquerSur');
const SaisirTexte = require('../../support/commun/action/saisirTexte');
const TaperTouche = require('../../support/commun/action/taperTouche');
const Cocher = require('../../support/commun/action/cocher');
const CliquerSurEtAttendre = require('../../support/commun/action/cliquerSurEtAttendre');
const ChangerOnglet = require('../../support/commun/navigation/changerOnglet');
const VerifierTexteElement = require('../../support/commun/verification/verifierTexteElement');
const VerifierElementVisible = require('../../support/commun/verification/verifierElementVisible');
const VerifierCouleurTexte = require('../../support/commun/verification/verifierCouleurTexte');
const AccederIframe = require('../../support/commun/action/accederIframe');
const CliquerSurIframe = require('../../support/commun/action/cliquerSurIframe');
const SaisirTexteIframe = require('../../support/commun/action/saisirTexteIframe');

let page;


After(async function (scenario) {
    //screenshot
    if (scenario.result.status === 'FAILED') {
    const screenshotPath = `./playwright-report/${scenario.pickle.name}/screenshots/image.jpg`
    const img = await page.screenshot({ path: screenshotPath });
    await this.attach(img, 'image/png');
    }
    //fermeture navigateur et page
    await page.close();
    await browser.close()   
});

Given(/^Je suis sur le site "(.*)"$/, {timeout: 25000}, async (url) => {
    page = await Connexion(url)
});

Given(/^Je clique sur "(.*)"$/, {timeout: 25000}, async (locateur, ) =>  {
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

Given(/^Je bascule vers l'iframe "(.*)"$/, {timeout: 25000}, async (iframeLocator) =>  {
    iframe = await AccederIframe(page, iframeLocator);
});

Given(/^Je clique sur "(.*)" dans l'iframe$/, {timeout: 25000}, async (locateur) =>  {
    await CliquerSurIframe(iframe, locateur);
});

Given(/^Je saisis "(.*)" dans le champ "(.*)" dans l'iframe$/, {timeout: 25000}, async (texteASaisir,locateur) =>  {
    await SaisirTexteIframe(iframe, texteASaisir,locateur);
});

Given( /^Je verifie que "(.*)" affiche le texte "(.*)"$/, {timeout: 25000}, async (locateur, texteAffiche) =>  {
    await VerifierTexteElement(page, locateur, texteAffiche);
});

Given(/^Je verifier que l'element "(.*)" est affiche$/, {timeout: 25000}, async (locateur) => {
    await VerifierElementVisible(page, locateur);
});

Given(/^Je verifier que le texte "(.*)" est de couleur "(.*)"$/, {timeout: 25000}, async (locateur, couleur) => {
    await VerifierCouleurTexte(page, locateur, couleur);
});