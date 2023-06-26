module.exports = async function screenshotErreur(actionImpossible) {
    console.log("fonction screenshotErreur");
<<<<<<< HEAD
    const screenshotPath = `playwright-report/${actionImpossible}.jpg`;
=======
    const screenshotPath = `./playwright-report/${actionImpossible}.jpg`
>>>>>>> main
    await page.screenshot({ path: screenshotPath });
}