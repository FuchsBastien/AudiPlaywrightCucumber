/**
 * @param  {Number} numOnglet - numéro onglet
 */

module.exports = async function changerOnglet(page, numOnglet) {
    console.log("fonction changerOnglet");
    await page.waitForTimeout(2000);
    const context = page.context();
    let pages = await context.pages();
    console.log(pages);
    //const nouvellePage = pages[1];
    page = pages[1];
    return page;
    //let barre = await nouvellePage.locator("//input[contains(@id,'info_ctc_email')]");
    //let barre = await nouvellePage.locator("//button[@class='button']");
    //await barre.click();
    //await barre.fill("bastien");
}