const GetLocateur  = require('../../mapping/fonctions/locateurs');
const AttendreSecondes  = require('../navigation/attendreSecondes');

/**
 * Cliquer sur un bouton dans un iframe
 * @param  {String} locateur - locateur de l'element dans lequel cliquer
 * @param  {String} iframe - locateur de l'iframe dans lequel cliquer
 */

module.exports = async function cliquerSurIframe(iframe, locateur) {
    console.log("fonction cliquerSurIframe");

    try {
        const aliasLocateur = String(locateur);
        locateur          = GetLocateur(aliasLocateur);
        const element       = await iframe.locator(locateur);
        console.log(element);

        //if (await element.isVisible()) {
            //AttendreSecondes(page, 1);
            await element.click();
        //}

    } catch(error) {
        throw Error(error);
    }
}