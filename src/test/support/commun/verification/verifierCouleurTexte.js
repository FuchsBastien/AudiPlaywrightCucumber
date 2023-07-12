const GetLocateur = require('../../mapping/fonctions/locateurs');

// Objet de correspondance entre les valeurs RGB et les noms de couleur
const couleursNoms = {
  "rgb(76, 76, 76)": "Noir",
  "rgb(0, 0, 0)": "Noir",
  "rgb(60, 60, 60)": "Noir",
  "rgb(48, 48, 48)": "Noir",
  "rgb(16, 16, 16)": "Blanc",
  "rgb(255, 255, 255)": "Blanc",
  "rgb(187, 10, 48)": "Rouge",
  "rgb(204, 0, 0)": "Rouge",
  "rgb(235, 235, 235)": "Gris",
};

/**
 * Verifie la couleur du texte
 * @param  {String} locateur - élément à vérifier
 * @param  {String} couleur - couleur à vérifier
 */

module.exports = async function verifierCouleurTexte(page, locateur, couleur) {
  console.log("fonction verifierCouleurTexte");

  // Convertir la couleur en chaîne de caractères
  couleur = couleur.toLowerCase();

  // Récupérer le locateur réel
  const aliasLocateur = String(locateur);
  locateur = GetLocateur(aliasLocateur);
  const element = await page.locator(locateur);

  // Définir les couleurs avec leurs valeurs RGB
  const couleurs = {
    noir: ["rgb(76, 76, 76)", "rgb(0, 0, 0)", "rgb(60, 60, 60)", "rgb(48, 48, 48)"],
    blanc: ["rgb(255, 255, 255)"],
    rouge: ["rgb(187, 10, 48)", "rgb(204, 0, 0)"],
    gris: ["rgb(235, 235, 235)"],
  };
  const couleursAttendues = couleurs[couleur];

  // Récupérer la couleur du texte au format RGB
  const couleurTexte = await element.evaluate((el) => {
    const { color } = getComputedStyle(el);
    return color;
  });

  // Obtenir le nom de la couleur du texte à partir de l'objet de correspondance
  const nomCouleurTexte = couleursNoms[couleurTexte];

  console.log("Couleur du texte : '" + nomCouleurTexte + "' (" + couleurTexte + ")\n");

  // Vérifier si les couleurs attendues sont définies
  if (!couleursAttendues) {
    throw new Error(
      "Aucune couleur attendue n'est définie pour la couleur '" +
      couleur +
      "'."
    );
  } else if (couleursAttendues.includes(couleurTexte)) {
    console.log("La couleur du texte est correcte.");
  } else {
    throw new Error(
      "La couleur du texte n'est pas celle attendue. Couleur actuelle : '" +
      nomCouleurTexte +
      "' (" +
      couleurTexte +
      ")\n"
    );
  }
};
