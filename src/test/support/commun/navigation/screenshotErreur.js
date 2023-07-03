module.exports = async function screenshotErreur(page,actionImpossible) {
    console.log("fonction screenshotErreur");
    const screenshotPath = `./playwright-report/${actionImpossible}.jpg`
    await page.screenshot({ path: screenshotPath });
}