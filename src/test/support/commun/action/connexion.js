

module.exports = async function connexion(url) {
    const { chromium} = require('@playwright/test');
    browser = await chromium.launch({headless: false, slowMo: 400});
    page = await browser.newPage();
    await page.goto(url);
    return page;
}