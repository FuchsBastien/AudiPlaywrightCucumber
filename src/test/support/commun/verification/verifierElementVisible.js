const GetLocateur  = require('../../mapping/fonctions/locateurs');

/**
 * verifier que element est visible
 * @param  {String} aliasLocateur - Element a verifier
 */
module.exports = async function verifierElementVisible (page, locateur) {
    console.log("fonction verifierElementVisible");

    const aliasLocateur = String(locateur);
    locateur          = GetLocateur(aliasLocateur);
    const element       = await page.locator(locateur);

    let i =0;
    let elementVisible = false;
    while(elementVisible == false && i<7) {
        elementVisible = await element.isVisible();
        if(elementVisible == true) {
            break;
        }

        i++;
    }

    if(elementVisible == false) {   
        throw Error("L'element '" + aliasLocateur + "' n'est pas affiche \n");
        
    }
}
