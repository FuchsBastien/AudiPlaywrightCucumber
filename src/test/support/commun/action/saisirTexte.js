const GetLocateur  = require('../../mapping/fonctions/locateurs');
const ScreenshotErreur  = require('../navigation/screenshotErreur');
const AttendreSecondes  = require('../navigation/attendreSecondes');

/**
 * Saisir un texte
 * @param  {String} texteASaisir - texte a saisir dans l'element
 * @param  {String} locateur - locateur de l'element dans lequel saisir
 */

module.exports = async function saisirTexte(page, texteASaisir, locateur) {
    console.log("fonction saisirTexte");
       
        try {
            locateur = GetLocateur(locateur)
            const element = await page.locator(locateur);
            //Saisie du texte dans l'element
            await element.fill(texteASaisir);

        } catch (error) {
            let actionImpossible = "impossibleDeSaisirTexte"
            ScreenshotErreur(actionImpossible);
            throw Error(error);
            //await attendreSecondes(1)
            
        }
  

};
