const GetLocateur = require('../../mapping/fonctions/locateurs');

/**
 * Verifie la couleur du texte
 * @param  {String} locateur - element a verifier
 * @param  {String} couleur - url a verifier
 */

module.exports = async function verifierCouleurTexte(page, locateur, couleur) {
  console.log("fonction verifierCouleurTexte");

  //Convertir le hexadecimal en RGB
  if (!couleur.includes("rgb")) {
  couleur = couleur.replace("#", "");
  var r = parseInt(couleur.substring(0, 2), 16);
  var g = parseInt(couleur.substring(2, 4), 16);
  var b = parseInt(couleur.substring(4, 6), 16);
  couleur = "rgb(" + r + ", " + g + ", " + b + ")"}

  //Récuperer du locateur
  const aliasLocateur = String(locateur);
  locateur = GetLocateur(aliasLocateur);
  const element = await page.locator(locateur);

  //Récupérer couleur locateur au format RGB
  const couleurLocateur = await element.evaluate((el) => {
    const { color } = getComputedStyle(el);
    return color;
  });
  console.log("Couleur du texte : '" + couleurLocateur + "'\n");

  console.log(couleur);
  console.log(couleurLocateur);
  //Comparer la couleur saisie avec la couleur du locateur
  if (couleur == couleurLocateur) {
    console.log("La couleur du texte est correcte.");
  } else {
    throw new Error(
      "La couleur du texte n'est pas celle attendue. Couleur actuelle : '" +
        couleurLocateur +
        "'\n"
    );
  }
}
