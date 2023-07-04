const GetLocateur  = require('../../mapping/fonctions/locateurs');
const AttendreSecondes  = require('../navigation/attendreSecondes');

/**
 * Saisir un texte
 * @param  {String} texteASaisir - texte a saisir dans l'element
 * @param  {String} locateur - locateur de l'element dans lequel saisir
 */

module.exports = async function saisirTexte(page, texteASaisir, locateur) {
    console.log("fonction saisirTexte");
        locateur = GetLocateur(locateur)
        const element = await page.locator(locateur);

        try {
            //Saisie du texte dans l'element
            await element.fill(texteASaisir);
            //AttendreSecondes(page, 1);

        } catch (error) {
            throw Error(error);
            //await attendreSecondes(1)
            //Saisie du texte dans l'element
            //await element.setValue("")
            //await element.setValue(texteASaisir)
        }
};
