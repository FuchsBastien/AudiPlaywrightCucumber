const GetLocateur  = require('../../mapping/fonctions/locateurs');
const AttendreSecondes  = require('../navigation/attendreSecondes');

/**
 * Mettre le focus sur un iframe
 * @param  {String} locateur - locateur de l'iframe sur lequel mettre le focus
 */

module.exports = async function switchToIframe(locateur) {
    console.log("fonction switchToIframe");

    //Recuperation du locateur reel si alias donne
    const aliasLocateur = String(locateur);
    locateur = GetLocateur(aliasLocateur);
    console.log(locateur);

    //await browser.pause(1500)

    //Recuperation de l'element
    const element = await page.locator(locateur);

    /*await element.waitForExist({
        timeout: 10000
    });
    await element.waitForDisplayed({
        timeout: 10000
    });*/

    try {
        await browser.switchToFrame(element);
    }
    catch {
        try {
            await attendreSecondes(2)
            await browser.switchToFrame(element);
        }
        catch{
        }
    }

}