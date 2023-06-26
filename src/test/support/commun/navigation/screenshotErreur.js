module.exports = async function screenshotErreur(actionImpossible) {
    console.log("fonction screenshotErreur");
    const screenshotPath = `C:/Users/bfuchs/Desktop/cucumber/playwright-report/${actionImpossible}.jpg`;
    await page.screenshot({ path: screenshotPath });
}