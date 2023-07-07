const GetLocateur  = require('../../mapping/fonctions/locateurs');
//const VerifierTexteElement  = require('../verifier/verifierTexteElement');


module.exports = async function selectionnerCurseur(page, nombre, locateur) {
    console.log("fonction selectionnerCurseur");

    /*let locateurTexte =  "Page - Selecteur prix affiche - Modeles"
    await VerifierTexteElement (page, nombre, locateurTexte)*/

    try {
        const aliasLocateur = String(locateur);
        //console.log(aliasLocateur);
        locateur          = GetLocateur(aliasLocateur);
        const element       = await page.locator(locateur);

        //position de l'élément
        const elementBoundingBox = await element.boundingBox();

        if (nombre<135000){

            for (let index = 0; index < 30; index++) {
                //Position horizontale et verticale initiale
                const startX = (elementBoundingBox.x + elementBoundingBox.width / 2) - 25*(index); 
                const startY = elementBoundingBox.y + elementBoundingBox.height / 2; 

                //Déplacement horizontale
                const endX = startX; // Déplacement horizontal vers la gauche 
                const endY = startY; // Position verticale finale
                await page.mouse.move(startX, startY);
                await page.mouse.down(); 
                await page.mouse.move(endX, endY, { steps: 10 }); 
                await page.mouse.up();

                //Récupérer la valeur choisie du selecteur
                let valeurSelecteur = await element.getAttribute('style');
                const matchResult = valeurSelecteur.match(/--val:\s*([^;]+)/);
                valeurSelecteur = matchResult ? matchResult[1].trim() : null;
                console.log(valeurSelecteur);

                if (valeurSelecteur == nombre ){
                    break;
                }
                else {
                    continue;
                }
            }
        }
        else if (nombre>135000){

            for (let index = 0; index < 30; index++) {
                //Position horizontale et verticale initiale
                const startX = (elementBoundingBox.x + elementBoundingBox.width / 2) + 25*(index); 
                const startY = elementBoundingBox.y + elementBoundingBox.height / 2; 

                //Déplacement horizontale
                const endX = startX; // Déplacement horizontal vers la gauche 
                const endY = startY; // Position verticale finale
                await page.mouse.move(startX, startY);
                await page.mouse.down(); 
                await page.mouse.move(endX, endY, { steps: 10 }); 
                await page.mouse.up();

                //Récupérer la valeur choisie du selecteur
                let valeurSelecteur = await element.getAttribute('style');
                const matchResult = valeurSelecteur.match(/--val:\s*([^;]+)/);
                valeurSelecteur = matchResult ? matchResult[1].trim() : null;
                //console.log(valeurSelecteur);

                if (valeurSelecteur == nombre ){
                    break;
                }
                else {
                    continue;
                }
            }
        }
        else {
            await element.click()
        }

    
       
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

