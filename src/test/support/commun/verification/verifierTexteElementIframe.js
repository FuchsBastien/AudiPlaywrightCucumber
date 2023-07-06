const GetLocateur  = require('../../mapping/fonctions/locateurs');
const AttendreSecondes  = require('../navigation/attendreSecondes');

module.exports = async function verifierTexteElementIframe(iframe, locateur, texteAffiche) {
    console.log("fonction verifierTexteElementIframe");
   
    const aliasLocateur = String(locateur);
    locateur          = GetLocateur(aliasLocateur);
    const element       = await iframe.locator(locateur);
    console.log(element);
    let texteElement = await element.innerText();

    texteElement = texteElement.replace(/\r?\n/g, " ");
    console.log(texteElement);

    if (texteElement.includes(texteAffiche) == false) {
        throw Error("Le texte '" + texteElement + "' affiche ne correspond pas à l'attendu '" + texteAffiche + "' \n");
    }
}
