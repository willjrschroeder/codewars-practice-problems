function narcissistic(number) {
    let digits = String(number).split("");
    digits = digits.map(num => Number(num)); // ["1","2",3"] => [1,2,3]

    let exponent = digits.length;

    let sum = 0;
    for(let i = 0; i < digits.length; i++) {
        sum = sum + (Math.pow(digits[i], exponent));
    }
    return sum === number;
}

console.log(narcissistic(153));