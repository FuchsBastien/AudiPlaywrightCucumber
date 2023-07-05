const GetLocateur  = require('../../mapping/fonctions/locateurs');
const AttendreSecondes  = require('../navigation/attendreSecondes');

/**
 * Mettre le focus sur un iframe
 * @param  {String} locateur - locateur de l'iframe sur lequel mettre le focus
 */

module.exports = async function accederIframe(page, locateur) {
    console.log("fonction accederIframe");

    //Recuperation du locateur reel si alias donne
    const aliasLocateur = String(locateur);
    locateur = GetLocateur(aliasLocateur);

    let frames = page.frames()
    //console.log(frames.length);

    //Accès à l'iframe
    const iframe = await page.frameLocator(locateur)
    return iframe
    //await frame.locator('label').filter({ hasText: 'À la date de mon choix'}).click()
    //await iframe.locator("//label[contains(.,'À la date de mon choix')]").click()
    

}