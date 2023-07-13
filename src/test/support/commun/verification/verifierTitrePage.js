/**
 * Vérifier le titre de la page
 * @param  {Page} page - objet Page de Playwright
 * @param  {String} titre - titre à vérifier
 */
module.exports = async function verifierTitrePage(page, titre) {
    console.log("fonction verifierTitrePage");
    
    const titreActuel = await page.title();
  
    console.log("Titre actuel : '" + titreActuel + "'\n");
  
    if (titreActuel !== titre) {
      throw new Error("ERREUR - Le titre de la page actuel (" + titreActuel + ") ne correspond pas à l'attendu (" + titre + ")");
    }
  };
  