const GetLocateur  = require('../../mapping/fonctions/locateurs');
const AttendreSecondes  = require('../navigation/attendreSecondes');

/**
 * Saisir un texte
 * @param  {String} texteASaisir - texte a saisir dans l'element
 * @param  {String} locateur - locateur de l'element dans lequel saisir
 */

module.exports = async function saisirTexteIframe(iframe, texteASaisir, locateur) {
    console.log("fonction saisirTexteIframe");
        locateur = GetLocateur(locateur)
        const element = await iframe.locator(locateur);

        try {
            //Saisie du texte dans l'element
            await element.fill(texteASaisir);
        
        } catch (error) {
            throw Error(error);
        }
};
