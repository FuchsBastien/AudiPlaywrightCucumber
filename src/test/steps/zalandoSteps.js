const assert = require('assert');
const { Given, When, Then, And, After } = require('@cucumber/cucumber');
const { chromium, test, Browser } = require('@playwright/test');

let browser;
let page;

Given('Etre sur le site zalando', async function () {
    browser = await chromium.launch({headless: false, slowMo: 400});
    page = await browser.newPage();
    await page.goto('https://www.zalando.fr/accueil-homme/');
});

Given('Accepter les cookies', async function () {
    await page.waitForSelector('#uc-btn-accept-banner');
    let denyCookiesBtn = await page.locator('#uc-btn-accept-banner');
    await denyCookiesBtn.click();
});

Given('Aller dans la catégorie vêtement', async function () {
    let clothesButtonBtn = await page.getByRole('link', { name: "vêtements" }).first();
    await clothesButtonBtn.click();
});

Given('Cliquer sur la catégorie {string}', async function (category) {
    let CategoryClothesSelectorBtn = await page.getByRole('link', { name: category, exact: true });
    await CategoryClothesSelectorBtn.click();
});

Given('Chercher une marque {string}', async function (brand) {
    let filterBrandBtn = await page.getByRole('button', { name: 'filtrer par Marque' });
        await filterBrandBtn.click();
        await page.waitForSelector('//*[@id="brand-filter-search"]');
        const filterBrandSearchInput = await page.$('//*[@id="brand-filter-search"]');
        await filterBrandSearchInput.click();
        await filterBrandSearchInput.fill(brand);
        await page.locator('span').filter({ hasText: brand }).first().click();
        await page.getByRole('button', { name: 'appliquer le filtre Marque ' }).click();
});

After(async function () {
    await browser.close();
});
