module.exports = async function switchToIframe(page, iframeLocator) {
    const iframeElement = await page.locator(iframeLocator);
    const iframe = await iframeElement.frame();
  
    return iframe;
}
 


/*module.exports = async function switchToIframe(page, iframeLocator) {
    console.log("fonction navigation")
    /*await page.goto('https://saas.wannaspeak.com/ws/popup/popup?id=33127&key=34fe1c1c159299f227b849e2983a311a&background=white&text=JTdCJTIyaG8lMjI6JTdCJTIyI3RpdGxlMSUyMjolMjIlMjIsJTIyI3RpdGxlMiUyMjolMjIlMjIsJTIyI3N1YnRpdGxlJTIyOiUyMlZvdXMlMjBhdmV6JTIwdW5lJTIwcXVlc3Rpb24lMjBzdXIlMjB2b3RyZSUyMHByb2pldCUyMGQlRTIlODAlOTlhY2hhdCUyMD8lMjAlM0NiciUyMC8lM0UlMjBDb21tdW5pcXVlei1ub3VzJTIwdm9zJTIwY29vcmRvbm4lQzMlQTllcyUyMGV0JTIwdm9zJTIwZGlzcG9uaWJpbGl0JUMzJUE5cywlMjB1biUyMGNvbnNlaWxsZXIlMjB2b3VzJTIwcmVjb250YWN0ZXJhJTIwYXUlMjBtb21lbnQlMjBxdWklMjB2b3VzJTIwY29udmllbnQlMjBsZSUyMG1pZXV4Ki4lMjIsJTIyI3ZveEZvcm1TdWJtaXQlMjI6JTIyJTIyJTdELCUyMmhubyUyMjolN0IlMjIjaW5mbyUyMjolMjIlMjIsJTIyI3ZveEZvcm1TdWJtaXQyJTIyOiUyMiUyMiU3RCU3RA==&')

    //const iframe = await page.frame("//iframe[@class='iframe']");
    page = await page.frame("//iframe[@class='iframe']");
    await page.click("(//span[@class='aui-radio__box'])[2]");
    //return iframe;
    //return page;*/
    //await page.frameLocator("//iframe[@class='iframe']");
    //return page;
    //.locator("(//span[@class='aui-radio__box'])[2]").click()

    /*const iframeElement = await page.locator(iframeLocator);
    const iframe = await iframeElement.frame();
    await page.frameLocator('.result-frame')
      
    return iframe;
      
}*/