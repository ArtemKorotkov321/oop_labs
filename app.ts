const binNum = process.argv[2];


function checkArgumentIsNumber() {
    if (process.argv.length < 3 || process.argv.length > 3) {
        console.log("Error: enter one binary argument");
        process.exit(1);
    }
    else if (isNaN(binNum as any)) {
        console.log("Error: argument is not a number\nUse an integer");
        process.exit(1);
    }
    else if (Number(binNum) < 0 || Number(binNum) > Number(Math.pow(2, 31).toString(2))) {
        console.log("Error: enter a binary number from 0 to 2^32-1");
        process.exit(1);
    }
}


function checkNumberIsBin() {
    for (let ch = 0; ch < binNum.length; ch++) {
        if (!(Number(binNum[ch]) == 0 || Number(binNum[ch]) == 1)) {
            console.log("Error: enter a binary number");
            process.exit(1);
        }
    }
}


function convertingNumber() {
    let decimalNumber = 0;
    let degree = 0;
    for (let index = binNum.length; index > 0; index--) {
        let lastChar = Number(binNum[index - 1]);
        decimalNumber += lastChar * Math.pow(2, degree);
        degree++;
    }
    console.log("Результат: ", decimalNumber);
}


function main() {
    checkArgumentIsNumber();
    checkNumberIsBin();
    convertingNumber();  
}


main();
