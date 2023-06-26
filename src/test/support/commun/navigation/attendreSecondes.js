/**
 * Attendre X secondes
 * @param  {String} secondesAAttendre - nombre de secondes a attendre
 */

module.exports = async function attendreSecondes(page, secondesAAttendre) {
        console.log("fonction attendreSecondes");
        // Convertion en ms
        const msAAttendre = secondesAAttendre * 5000;
        // Attente de X ms
       await page.waitForTimeout(msAAttendre);
       //await page.waitForLoadState(); 
    
};
