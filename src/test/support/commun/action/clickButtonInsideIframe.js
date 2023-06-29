/*const GetLocateur  = require('../../mapping/fonctions/locateurs');
const ScreenshotErreur  = require('../navigation/screenshotErreur');
const AttendreSecondes  = require('../navigation/attendreSecondes');


module.exports = async function cliquerSur(page, locateur) {
    console.log("fonction cliquerSur");
 
    try {
        const aliasLocateur = String(locateur);
        locateur          = GetLocateur(aliasLocateur);
        const element = page.frameLocator("//iframe[@class='iframe']").locator(locateur);

        await element.click();

    } catch(error) {
        let actionImpossible = "impossibleDeCliquer"
        ScreenshotErreur(actionImpossible);
        throw Error(error);
    }

}*/

module.exports = async function clickButtonInsideIframe(page, buttonLocator) {

    //await page.waitForTimeout(10000);
    await page.click(buttonLocator);
  
    // You can add any additional steps or assertions here
}
  