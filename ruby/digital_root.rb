'''
Digital root is the recursive sum of all the digits in a number.

Given n, take the sum of the digits of n. If that value has more than one digit, continue 
reducing in this way until a single-digit number is produced. The input will be a non-negative integer.

Problem:
Output is a single digit integer, input is an integer of any length
Given the input integer, sum the constituent digits. Take this sum and repeat the process if the sum is more than one digit in length.
Repeat the process until you reach a one digit sum, and return this sum.

Examples:
    16  -->  1 + 6 = 7
   942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6
132189  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6
493193  -->  4 + 9 + 3 + 1 + 9 + 3 = 29  -->  2 + 9 = 11  -->  1 + 1 = 2

Edge cases: When the input is one digit, returns right away (1 -> 1)
No non-negative integers will be supplied as input.
Only integers will be supplied as input.

Data structures:
An array of digits

Algorithm:
Split the input integer into an array of digits

Loop while our sum is greater than length 1
    Sum the digits
        If the sum of the digits is greater than length 1
            break
        else
            reset the digits array to digits in the sum

return the sum

'''

def digital_root(input_integer)
    digits = input_integer.to_s.split("") # Split the input integer into an array of digits as strings
    digits.map! {|digit| digit.to_i} # convert digits array into an array of integers
    sum = digits.sum
    
    loop do
        sum = digits.sum # Sum the digits
        if sum.to_s.size == 1 # If the sum of the digits is length 1
            break # break
        else
            digits = sum.to_s.split("").map{|digit| digit.to_i} # reset the digits array to digits in the sum
        end
    end
    sum # return the sum
end

p digital_root(16)
p digital_root(942)
p digital_root(132189)
p digital_root(493193)