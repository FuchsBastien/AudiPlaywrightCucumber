const SwitchToIframe = require('../action/switchToIframe')
const GetLocateur  = require('../../mapping/fonctions/locateurs');
const ScreenshotErreur  = require('../navigation/screenshotErreur');
const AttendreSecondes  = require('../navigation/attendreSecondes');


/**
 * Cliquer sur un bouton dans un iframe
 * @param  {String} locateur - locateur de l'element dans lequel cliquer
 * @param  {String} iframe - locateur de l'iframe dans lequel cliquer
 * 
 */

module.exports = async function clickButtonInsideIframe(locateur, iframe) {
    console.log("fonction clickButtonInsideIframe");
    try {
        //Recuperation du locateur reel si alias donne
        const aliasLocateur = String(locateur);
        const aliasIframe = String(iframe)
        locateur = GetLocateur(aliasLocateur)
        iframe = GetLocateur(aliasIframe)

        //Recuperation de l'element
        const element = await page.locator(locateur);
        
        await SwitchToIframe(iframe)
        //Cliquer sur l'element
        await element.click()
        
        //await perdreFocus()

    } catch (error) {
        let actionImpossible = "impossibleDeCliquer"
        ScreenshotErreur(actionImpossible);
        throw Error(error);
        
        //await perdreFocus()
    }
}