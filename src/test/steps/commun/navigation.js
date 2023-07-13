const {Before, After, Given, When, Then, And, AfterAll} = require('@cucumber/cucumber');
const ChangerOnglet = require('../../support/commun/navigation/changerOnglet');
const AccederIframe = require('../../support/commun/navigation/accederIframe');
const AttendreSecondes = require('../../support/commun/navigation/attendreSecondes');
const DefilerJusquaElement = require('../../support/commun/action/defilerJusquaElement');

Given(/^Je fais defiler jusqu'a l'element "(.*)"$/, async (locateur) => {
    await DefilerJusquaElement(page, locateur);
});

Given(/^Je fais defiler jusqu'a l'element "(.*)" dans l'iframe$/, async (locateur) => {
    await DefilerJusquaElement(iframe, locateur);
});  

Given(/^Je vais sur l'onglet "(.*)"$/, {timeout: 25000}, async (numOnglet) =>  {
    page = await ChangerOnglet(page, numOnglet)
});

Given(/^Je bascule vers l'iframe "(.*)"$/, {timeout: 25000}, async (iframeLocator) =>  {
    iframe = await AccederIframe(page, iframeLocator);
});

Given(/^J'attend "(.*)" secondes$/, {timeout: 25000}, async (secondesAAttendre) => {
    await AttendreSecondes(page, secondesAAttendre)
});