/**
 * Appuyer sur une touche du clavier
 * @param  {String} toucheClavier La touche a taper
 */

module.exports = async function cliquerSur(page, toucheClavier) {
        console.log("fonction taperSur");
        await page.keyboard.press("Enter");
};
