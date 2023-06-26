const GetLocateur  = require('../../mapping/fonctions/locateurs');
const ScreenshotErreur  = require('../navigation/screenshotErreur');
const AttendreSecondes  = require('../navigation/attendreSecondes');


module.exports = async function cocher(page, locateur) {
    console.log("fonction cocher");

    try {
        const aliasLocateur = String(locateur);
        locateur          = GetLocateur(aliasLocateur);
        const element       = await page.locator(locateur);

        //if (await element.isVisible()) {
            //Click dans l'element    
            await element.check();
            //AttendreSecondes(page, 1);
        //}

    } catch(error) {
        let actionImpossible = "impossibleDeCocher"
        ScreenshotErreur(actionImpossible);
        throw Error(error);
    }
}