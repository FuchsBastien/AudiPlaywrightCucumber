
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

//Recuperation de l'url a partir de l'alias
export default function getUrl(alias) {
    
    var mappingFilesDir = "src/support/mapping/urls"
    var mappingFiles = findInDir(mappingFilesDir, /\.json$/)
    var url = ""
    mappingFiles.some(function (mappingFile) {
        var JSONContent = JSON.parse(fs.readFileSync(mappingFile, "utf8"))
        if (JSONContent.hasOwnProperty(alias)) {
            url = JSONContent[alias]
        }
    });

    if (url == '' || url == undefined) {
        //console.log("Attention, il est conseille de declarer l'url "+alias+" via un alias")
        return String(alias)
    } else {
        return String(url)
    }
}