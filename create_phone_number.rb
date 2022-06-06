'''
Write a function that accepts an array of 10 integers (between 0 and 9), 
that returns a string of those numbers in the form of a phone number.

Example

The returned format must be correct in order to complete this challenge.
Don\'t forget the space after the closing parentheses!

Problem: Return an array of ten numbers in phone number format
Examples: createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) # => returns "(123) 456-7890"
Data Structures: Receive an array
    Intermediate arrays of each number set (first three, second three, last 4)
    Final phone number string
Algorithm:

Create a function that takes in an array of 10 numbers

If size on input is not 10, return error message

Iterate over the input array and place each digit into a string

Place digits 0-2 in an array, place digits 3-5 in an array, and place digits 6-9 in an array

Use string interpolation to return the final result
'''

def create_phone_number(phone_number_array)
    return "Please enter a 10 digit phone number!" if phone_number_array.size != 10

    unformatted_phone_number = ""
    phone_number_array.each do |digit|
        unformatted_phone_number << digit.to_s
    end

    first_three_numbers = unformatted_phone_number[0..2]
    second_three_numbers = unformatted_phone_number[3..5]
    last_four_numbers = unformatted_phone_number[6..9]

    phone_number = "(#{first_three_numbers}) #{second_three_numbers}-#{last_four_numbers}"
end

p create_phone_number([1,2,3])
p create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])
p create_phone_number([1, 1, 1, 1, 1, 1, 1, 1, 1, 1])
p create_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])