const fs = require('fs');            
const file = process.argv[2];
const textToSearch = process.argv[3];


function checkArguments() {
    if (process.argv.length != 4) {
        console.log("Invalid number of arguments\nUsage <program> <file name> <text to search>");
        process.exit(1);
    }
}


function fileExist() {
    if (!fs.existsSync(file)) {
        console.log("File not found");
        process.exit(1);
    }
}


function getTextFile() {
    let textFile: String = fs.readFileSync(file, "utf8");
    if (textFile.length == 0) {
        console.log("Empty file");
        process.exit(1);
    }
    let textFileLines = textFile.split(/\r?\n/);
    return textFileLines;
}


function searchText(textToSearch: string) {
    let countLines = 0;
    getTextFile().forEach(function (line, index) {
        if (line.search(textToSearch) != -1) {
            countLines += 1;
            console.log(index + 1);
        }
    });
    if (countLines == 0) {
        console.log("Text not found");
        process.exit(1);
    }
}


function main() {
    checkArguments();
    fileExist();
    searchText(textToSearch);
}

main();