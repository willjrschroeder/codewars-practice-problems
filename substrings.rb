'''
Given a string s, find the length of the longest substring without repeating characters.

Problem: Input: a string Output: An integer length of the longest substring without repeating characters

Example 1:

Input: s = "abcabcbb"
Output: 3
Explanation: The answer is "abc", with the length of 3.
Example 2:

Input: s = "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
Example 3:

Input: s = "pwwkew"
Output: 3
Explanation: The answer is "wke", with the length of 3.
Notice that the answer must be a substring, "pwke" is a subsequence and not a substring.

Algorithm:

Create an empty array of used characters
Create a starting index variable to 0
Create an ending index variable
Create a longest substring variable to 0

Iterate over string s with index
    If the used characters array does not contain char
        add char to the used characters array
        set ending index to current index

    If the used characters array contains char
        If ending_index - starting_index + 1 > longest_substring 
            reset longest substring to ending_index - starting_index + 1
        Empty the used characters array
        Set our starting index to current index
        Set our ending index to current index
'''

def substrings(s)
    used_characters = []
    starting_index = 0
    ending_index = 0
    longest_substring_length = 0
    characters = s.chars

    characters.each_with_index do |char, index|
        if !used_characters.include?(char) # If the used characters array does not contain char
            used_characters << char # add char to the used characters array
            ending_index = index # set ending index to current index
    
        elsif used_characters.include?(char) # If the used characters array contains char
            if ending_index - starting_index + 1 > longest_substring_length #  If ending_index - starting_index + 1 > longest_substring 
                longest_substring_length = ending_index - starting_index + 1 # reset longest substring to ending_index - starting_index + 1
            end
            used_characters = [char] # Empty the used characters array
            starting_index = index # Set our starting index to current index
            ending_index = index # Set our ending index to current index
        end
    end
    longest_substring_length = ending_index - starting_index + 1 if longest_substring_length == 0
    longest_substring_length
end

p "Should return 3"
p substrings ("abcabcabc")

p "should return 4"
p substrings "abcdabcd"

p "should return 1"
p substrings ("bbbbbbb")
