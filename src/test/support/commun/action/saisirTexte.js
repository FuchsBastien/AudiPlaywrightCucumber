const GetLocateur  = require('../../mapping/fonctions/locateurs');
/**
 * Saisir un texte
 * @param  {String} texteASaisir - texte a saisir dans l'element
 * @param  {String} locateur - locateur de l'element dans lequel saisir
 */

module.exports = async function saisirTexte(page, texteASaisir, locateur) {

        locateur = GetLocateur(locateur)
        const element = await page.locator(locateur);

        try {
            //Saisie du texte dans l'element
            await element.fill(texteASaisir)

        } catch (error) {
            throw Error(error);
            //await attendreSecondes(1)
            //Saisie du texte dans l'element
            //await element.setValue("")
            //await element.setValue(texteASaisir)
        }
  

};
