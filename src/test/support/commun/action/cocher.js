const GetLocateur  = require('../../mapping/fonctions/locateurs');

module.exports = async function cocher(page, locateur) {
    console.log("fonction cocher");

    try {
        const aliasLocateur = String(locateur);
        //console.log(aliasLocateur);
        locateur          = GetLocateur(aliasLocateur);
        const element       = await page.locator(locateur);

        //if (await element.isVisible()) {
        await element.check();
        //}

    } catch(error) {
        throw Error(error);
    }
}