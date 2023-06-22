const fs = require('fs')
const path = require('path')

function findInDir(dir, filter, fileList = []) {
    const files = fs.readdirSync(dir)

    files.forEach((file) => {
        const filePath = path.join(dir, file)
        const fileStat = fs.lstatSync(filePath)

        if (fileStat.isDirectory()) {
            findInDir(filePath, filter, fileList)
        } else if (filter.test(filePath)) {
            fileList.push(filePath)
        }
    });
    
    return fileList
}


module.exports = function getLocateur(alias) {
    console.log("fonction getLocateur");
    var mappingFilesDir = "src/test/support/mapping/locateurs"
    var mappingFiles = findInDir(mappingFilesDir, /\.json$/)
    var locateur = ""
    mappingFiles.some(function (mappingFile) {
        var JSONContent = JSON.parse(fs.readFileSync(mappingFile, "utf8"))
        if (JSONContent.hasOwnProperty(alias)) {
            locateur = JSONContent[alias]
        }
    });

    if (locateur == '' || locateur == undefined) {
        //console.log("Attention, il est conseille de declarer le locateur "+alias+" via un alias")
        return String(alias)
    } else {
        return String(locateur)
    }
    return "#uc-btn-accept-banner"
    
  }





















  
/*const fs = require('fs')
const path = require('path')

function findInDir(dir, filter, fileList = []) {
    const files = fs.readdirSync(dir)

    files.forEach((file) => {
        const filePath = path.join(dir, file)
        const fileStat = fs.lstatSync(filePath)

        if (fileStat.isDirectory()) {
            findInDir(filePath, filter, fileList)
        } else if (filter.test(filePath)) {
            fileList.push(filePath)
        }
    });

    return fileList
}*/

//Recuperation du locateur a partir de l'alias
/*class GetLocateur{
    async maMethode(alias) {
        console.log("salut");
    }
}

module.exports = GetLocateur;*/
