const GetLocateur  = require('../../mapping/fonctions/locateurs');
const ScreenshotErreur  = require('../navigation/screenshotErreur');


module.exports = async function cliquerSurEtAttend(page, locateur) {
    console.log("fonction cliquerSurEtAttend");
    //let cookie = await page.locator("#uc-btn-accept-banner");
    //await cookie.click();
 
    try {
        const aliasLocateur = String(locateur);
        //console.log(aliasLocateur);
        locateur          = GetLocateur(aliasLocateur);
        const element       = await page.locator(locateur);

        //if (await element.isVisible()) {
        
        await element.click();
        //}

    } catch(error) {
        let actionImpossible = "impossibleDeCliquer"
        ScreenshotErreur(actionImpossible);
        throw Error(error);
    }

}


















//const { test, expect } = require('@playwright/test');
//const GetLocateur  = require('../../mapping/fonctions/locateurs');
//import getLocateur from '../../mapping/fonctions/locateurs'
//import scrollerElement from '../navigation/scrollerElement';

//const attendreSecondes = require('../navigation/attendreSecondes');
//import attendreSecondes from '../navigation/attendreSecondes';
//import actualiserPage from '../navigation/actualiserPage';


/*class CliquerSur{
    constructor(page){
        //this.page = page;
        this.cookiesclass = "#uc-btn-accept-banner";
        this.locateur = "";
    }

    async maMethode(page) {
        const GetLocateur  = require('../../mapping/fonctions/locateurs');
        //let getLocateur = null;
        //getLocateur = new GetLocateur(); 
        GetLocateur();

  
        console.log("reussite");
        //console.log(getLocateur);
        let cookie = await page.locator(this.cookiesclass);
        await cookie.click();
        /*try {
            async () =>  {
                await getLocateur.maMethode(page);

            //const aliasLocateur = locateur;
            //this.locateur            = getLocateur(aliasLocateur);
            
            //const element       = await page.locator(this.locateur);
    
            /*const aliasLocateur = locateur;
            locateur            = getLocateur(aliasLocateur);
            const element       = await $(locateur);*/
            //await element.click();
            //}
    
        /*} catch(error) {
            throw Error(error);
        }*/

    //};
//}

//module.exports = CliquerSur
