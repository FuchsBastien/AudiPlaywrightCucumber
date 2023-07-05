const { chromium} = require('@playwright/test');

module.exports = async function connexion(url) {
    browser = await chromium.launch({headless: false, slowMo: 400});
    page = await browser.newPage();
    await page.setViewportSize({ width: 1500, height: 1000 });
    await page.goto(url);
    return page;
}


