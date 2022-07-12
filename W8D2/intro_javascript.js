function madLib(str1, str2, str3){
    let txt = `We shall ${str1.toUpperCase()} the ${str2.toUpperCase()} ${str3.toUpperCase()}`;
    return txt;
}

// console.log(madLib('make', 'best', 'guac'));

function isSubstring(searchString, subString){
    if (searchString.includes(subString)){
        return true;
    }
    else{
        return false;
    }
}

// console.log(isSubstring("time to program", "time"));
// console.log(isSubstring("Jump for joy", "joys"));

function fizzBuzz(num){
    var arr = [];
    for (let i = 1; i < num + 1; i++){
        if (i % 3 === 0 && i % 5 === 0){
            arr.push('fizzbuzz');
        }
        else if (i % 3 === 0){
            arr.push('fizz');
        }
        else if (i% 5 === 0){
            arr.push('buzz');
        }
        else{
            arr.push(i);
        }
    }
    return arr;
}

// console.log(fizzBuzz(15))

function isPrime(number){
    if (number < 2){
        return false;
    }
    if (number === 2){
        return true;
    }
    for (let i = 2; i < number; i++){
        if (number % i === 0){
            return false;
        }
    }
    return true;
}

// console.log(isPrime(4));
// console.log(isPrime(5));
// console.log(isPrime(2));
// console.log(isPrime(1));
// console.log(isPrime(10));
// console.log(isPrime(11));

function sumOfNPrimes(num){
    let retVal = 0;
    let counter = 0;
    let rng = 0;
    while (counter < num){
        if (isPrime(rng) === true){
            retVal += rng;
            counter++;
        }
        rng++
    }
    return retVal
}

// console.log(sumOfNPrimes(4));
// console.log(sumOfNPrimes(1));
// console.log(sumOfNPrimes(0));
