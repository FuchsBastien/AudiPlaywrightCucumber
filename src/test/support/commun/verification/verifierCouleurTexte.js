/*const GetLocateur  = require('../../mapping/fonctions/locateurs');

/**
 * Verifie la couleur du texte
 * @param  {String} locateur - element a verifier
 * @param  {String} couleur - url a verifier
 */

/*module.exports = async function verifierCouleurTexte (page, locateur, couleur) {

        //Recuperation du locateur reel
        console.log("fonction verifierCouleurTexte");

        const aliasLocateur = String(locateur);
        locateur          = GetLocateur(aliasLocateur);
        const element       = await page.locator(locateur);


        //Recuperation de la couleur
        switch (couleur) {
            case "Rouge":
                var couleurRGB = "rgb(255,0,0)"
                var couleurRGB2 = "rgb(153,7,5)"
                var couleurRGB3 = "rgb(238,43,11)"
                var couleurRGB4 = "rgb(174,27,2)"
                break;
            case "Orange":
                var couleurRGB = "rgb(238,114,3)"
                var couleurRGB2 = "rgb(238,114,3)"
                var couleurRGB3 = "rgb(238,114,3)"
                break;
            case "Noir":
                var couleurRGB = "rgb(60,60,59)"
                var couleurRGB2 = "rgb(60,60,60)"
                var couleurRGB3 = "rgb(60,60,59)"
                break;
            case "Blanc":
                var couleurRGB = "rgba(16,16,16,0.3)"
                var couleurRGB2 = "rgba(16,16,16,0.3)"
                var couleurRGB3 = "rgba(16,16,16,0.3)"
                var couleurRGB4 = "rgb(255,255,255)"
                break;
            case "Gris":
                var couleurRGB = "rgb(235,235,235)"
                var couleurRGB2 = "rgb(235,235,235)0,59)"
                var couleurRGB3 = "rgb(235,235,235)"
                break;
            case "Vert fonce":
                var couleurRGB = "rgb(0,128,0)"
                var couleurRGB2 = "rgb(102,170,93)"
                var couleurRGB3 = "rgb(0,128,0)"
                break
                case "Bleu":
                    var couleurRGB = "rgb(15,98,254)"
                    break
            default:
                //throw new Error("Erreur - La couleur " + couleur + " n'est pas definie");
                break;
        }

        let couleurTexte = await element.getCSSProperty('color')
        couleurTexte = couleurTexte.value.toString()

        if (couleurTexte != couleurRGB && couleurTexte != couleurRGB2 && couleurTexte != couleurRGB3 && couleurTexte != couleurRGB4) {
            throw new Error("Erreur - Le texte " + locateur + " n'est pas de couleur " + couleur + "(observe : " + couleurTexte + ", attendu : " + couleurRGB + ")")
        }
};*/


const GetLocateur = require('../../mapping/fonctions/locateurs');

module.exports = async function VerifierCouleurTexte(page, locateur, couleur) {
  // Récupération du locateur réel
  console.log("fonction verifierCouleurTexte");

  const aliasLocateur = String(locateur);
  locateur = GetLocateur(aliasLocateur);
  const element = await page.locator(locateur);

  // Fonction pour obtenir la valeur RGB de la couleur attendue
  function getCouleurRGB(couleur) {
    const couleurTrim = couleur.trim().toLowerCase();

    // Vérifier si la couleur est spécifiée en format RGB
    const matchRGB = couleurTrim.match(/^rgb\((\d+),(\d+),(\d+)\)$/);
    if (matchRGB) {
      const r = parseInt(matchRGB[1]);
      const g = parseInt(matchRGB[2]);
      const b = parseInt(matchRGB[3]);
      return `rgb(${r},${g},${b})`;
    }

    // Vérifier si la couleur est spécifiée en format hexadécimal
    const matchHex = couleurTrim.match(/^#?([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})$/);
    if (matchHex) {
      let hex = matchHex[1];
      if (hex.length === 3) {
        hex = hex
          .split('')
          .map((char) => char + char)
          .join('');
      }
      const r = parseInt(hex.substr(0, 2), 16);
      const g = parseInt(hex.substr(2, 2), 16);
      const b = parseInt(hex.substr(4, 2), 16);
      return `rgb(${r},${g},${b})`;
    }

    throw new Error("Couleur invalide : '" + couleur +"'\n");
  }

  const style = await element.evaluate((el) => {
    const { color } = getComputedStyle(el);
    return color;
  });
  console.log("Couleur du texte : '" + style + "'\n");

  // Comparer la couleur avec la valeur attendue
  const couleurAttendue = getCouleurRGB(couleur); // Fonction pour obtenir la valeur RGB de la couleur attendue
  const couleurTexte = getCouleurRGB(style); // Fonction pour obtenir la valeur RGB de la couleur du texte

  if (couleurTexte === couleurAttendue) {
    console.log("La couleur du texte est correcte.");
  } else {
    throw new Error(
      "La couleur du texte n'est pas celle attendue. Couleur actuelle : '" +
        couleurTexte +
        "'\n"
    );
  }
}
