const { chromium} = require('@playwright/test');

module.exports = async function accederSite(url) {
    browser = await chromium.launch({headless: false, slowMo: 400});
    page = await browser.newPage();
    await page.setViewportSize({ width: 1700, height: 1700 });
    await page.goto(url);
    return page;
}


