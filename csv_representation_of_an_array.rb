'''
Create a function that returns the CSV representation of a two-dimensional 
numeric array.

Example:

[[ 0, 1, 2, 3, 45 ],[ 10,11,12,13,14 ],[ 20,21,22,23,24 ],[ 30,31,32,33,34 ]] =>
"0,1,2,3,45\n10,11,12,13,14\n20,21,22,23,24\n30,31,32,33,34")

Algorithm:
Map the outer array to create an array of strings of the inner array, with
each string containing the numbers separated by commas and \n at the end
    Join inner array on commas to create a string of each inner array
        append \n to the end of the string
Return string representation of array, slicing the last "\n" characters off
'''

def to_csv_text(array)
    array.map! do |cell|
        stringed_cell = cell.join(",")
    end
    array.join("\n")
end

p to_csv_text([[ 0, 1, 2, 3, 45 ],[ 10,11,12,13,14 ],[ 20,21,22,23,24 ],[ 30,31,32,33,34 ]])