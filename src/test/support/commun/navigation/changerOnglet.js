/**
 * @param  {Number} numOnglet - numéro onglet
 */

module.exports = async function changerOnglet(page, numOnglet) {
    console.log("fonction changerOnglet");
    await page.waitForTimeout(5000);
    const context = page.context();
    let pages = await context.pages();
    //console.log(pages);
    //const nouvellePage = pages[1];
    page = pages[numOnglet];
    await page.waitForTimeout(2000);
    return page;
}