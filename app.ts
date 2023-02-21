const fs = require('fs');            
const Path = './text_file.txt';
const textToSearch = "korotkov";


function fileExist(): Boolean {
    if (fs.existsSync(Path)) {
        return true;
    } else {
        console.log("File not found");
        return false;
    }
}

function searchText(textToSearch: string) {
    let countLines = 0;
    textFileLines.forEach(function (line, index) {
        console.log("Строка №", index + 1, line);
        if (line.search(textToSearch) > 0) {
            countLines += 1;
            console.log(index + 1);
        }
    });
    if (countLines == 0) {
        console.log("Text not found");
    }
}




var textFile: String = fs.readFileSync("text_file.txt", "utf8");
var textFileLines = textFile.split(/\r?\n/);


fileExist();
searchText("string");

