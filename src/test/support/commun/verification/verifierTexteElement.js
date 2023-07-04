const GetLocateur  = require('../../mapping/fonctions/locateurs');
const AttendreSecondes  = require('../navigation/attendreSecondes');

module.exports = async function verifierTexteElement(page, locateur, texteAffiche) {
    console.log("fonction verifierTexteElement");
   
    const aliasLocateur = String(locateur);
    locateur          = GetLocateur(aliasLocateur);
    const element       = await page.locator(locateur);
    let texteElement = await element.innerText();

    texteElement = texteElement.replace(/\r?\n/g, " ");
    console.log(texteElement);

    if (texteElement.includes(texteAffiche) == false) {
        throw Error("Le texte '" + texteElement + "' affiche ne correspond pas à l'attendu '" + texteAffiche + "' \n");
    }
}
