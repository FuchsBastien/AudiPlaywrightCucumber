const GetLocateur  = require('../../mapping/fonctions/locateurs');

module.exports = async function defilerJusquaElement(page, locateur) {
    console.log("fonction defilerJusquaElement");
    
    try {
        const aliasLocateur = String(locateur);
        locateur          = GetLocateur(aliasLocateur);
        const element       = await page.locator(locateur);
        console.log(element);

        await element.scrollIntoViewIfNeeded();

    } catch(error) {
        throw Error(error);
    }
}