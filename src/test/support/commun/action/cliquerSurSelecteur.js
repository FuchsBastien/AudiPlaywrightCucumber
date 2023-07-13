const GetLocateur  = require('../../mapping/fonctions/locateurs');
const AttendreSecondes  = require('../navigation/attendreSecondes');

/**
 * Cliquer sur un bouton dans un iframe
 * @param  {String} locateurSelecteur - locateur de l'element dans lequel cliquer
 * @param  {String} choixSelecteur - locateur de l'element dans lequel cliquer
 * @param  {String} page - locateur de la page dans lequel cliquer
 */

module.exports = async function cliquerSurSelecteur(page, choixSelecteur, locateurSelecteur) {
    console.log("fonction cliquerSurSelecteur");
    console.log(choixSelecteur);
  
    try {
        const aliasLocateur = String(locateurSelecteur);
        locateurSelecteur          = GetLocateur(aliasLocateur);
        const element        = await page.locator(locateurSelecteur);
        console.log(element);

        //if (await element.isVisible()) {
            //AttendreSecondes(page, 1);
            await element.selectOption(choixSelecteur);
        //}

    } catch(error) {
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

