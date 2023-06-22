const assert = require('assert');
const { Given, When, Then, And } = require('@cucumber/cucumber');
const { chromium, test, Browser } = require('@playwright/test');

let browser;
let page;


Given('User navigates to the application', async function () {
  browser = await chromium.launch({headless: false, slowMo: 400});
  page = await browser.newPage();
  await page.goto('https://www.zalando.fr/accueil-homme/');

  await page.waitForSelector('#uc-btn-accept-banner');
        let denyCookiesBtn = await page.$('#uc-btn-accept-banner');
        await denyCookiesBtn.click();
    
});

Given('User click on the login link', async function () {
  return 'pending';
});

Given('User enter the username as {string}', async function (username) {
  return 'pending';
});

Given('User enter the password as {string}', async function (password) {
  return 'pending';
});

When('User click on the login button', async function () {
  return 'pending';
});

Then('Login should be success', async function () {
  return 'pending';
});

Then('Login should fail', async function () {
  return 'pending';
});

