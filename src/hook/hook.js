const {Before, After, Given, When, Then, And, AfterAll} = require('@cucumber/cucumber');
const {chromium} = require('@playwright/test');
const CliquerSur = require('../test/support/commun/action/cliquerSur');

Before({timeout: 25000}, async function () {
    //ouverture navigateur et page
    let url = "https://www.audi.fr/"
    browser = await chromium.launch({headless: false, slowMo: 400});
    page = await browser.newPage();
    await page.setViewportSize({ width: 1700, height: 1700 });
    await page.goto(url);
    //cliquer sur les cookies
    let cookies = "Page - Cookies - Page d'accueil"
    await CliquerSur(page, cookies) 
})

After({timeout: 30000}, async function (scenario) {
    //screenshot si erreur
    if (scenario.result.status === 'FAILED') {
    //const screenshotPath = `./reporting/screenshots/${scenario.pickle.name}.png`
    const img = await page.screenshot();
    await this.attach(img, 'image/png');
    }
    //fermeture navigateur et page
    await page.close();
    await browser.close()   
});



