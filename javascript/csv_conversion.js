function csv_converter(nestedArray) {
    let stringArray = nestedArray.map(array => array.join(",")); // [[1,2,3], [4,5,6]] => ['1,2,3', '4,5,6']
    csvArray = stringArray.join('\\n');
    return csvArray;
}

console.log(csv_converter([[1,2,3], 
               [4,5,6]]));