'''
Your task is to sort a given string. Each word in the string will contain a single number. This number is the position the word should have in the result.

Note: Numbers can be from 1 to 9. So 1 will be the first word (not 0).

If the input string is empty, return an empty string. The words in the input String will only contain valid consecutive numbers.

Problem:
Given a string containing a sentence, with each word containing one number 1-9, return a string of the sentence sorted by number. 

Examples/Edge Cases:
"is2 Thi1s T4est 3a"  -->  "Thi1s is2 3a T4est"
"4of Fo1r pe6ople g3ood th5e the2"  -->  "Fo1r the2 g3ood 4of th5e pe6ople"
""  -->  ""

Data structures:
Input string
Output string
An array of the input string split on whitespace
Array (or hash?) to store the intermediate of each word, its position in the original string, and its sorted position.

I can likely use the map function to solve this


Algorithm:

I need to split my input string on whitespace and place it into an array of strings.

I need to find the number within each word string and place it into a hash, with word strings as keys and numbers as values
	Finding the number within each word string:
		Iterate through the array, and iterate through each word
			if the given character is a number, place it into a hash along with the full word string. The word string should be a key, and the number should be a value.

I need to map the hash containing the sorted position numbers and the word strings onto an array of the words in order.
	Mapping the hash: 
		Call sort_by on the hash and sort it by value (number)
		Will return an array of the words in order
		
I then need to combine this array into a string separated by whitespace.

I can return this string as the solution


'''
