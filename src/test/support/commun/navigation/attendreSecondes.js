/**
 * Attendre X secondes
 * @param  {String} secondesAAttendre - nombre de secondes a attendre
 */
export default async (secondesAAttendre) => {
        // Convertion en ms
        const msAAttendre = secondesAAttendre * 1000

        // Attente de X ms
       await browser.pause(msAAttendre)
    
};
