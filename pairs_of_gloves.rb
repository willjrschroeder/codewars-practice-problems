'''
Pair of gloves
Winter is coming, you must prepare your ski holidays. The objective of this problem is to 
determine the number of pair of gloves you can constitute from the gloves you have in your drawer.

Given an array describing the color of each glove, return the number of pairs you can 
constitute, assuming that only gloves of the same color can form pairs.

Problem: Input is an array of strings, output is an integer of how many pairs you can form
I need to pair up gloves of the same color
Any color can be entered

Examples:
input = ["red", "green", "red", "blue", "blue"]
result = 2 (1 red pair + 1 blue pair)

input = ["red", "red", "red", "red", "red", "red"]
result = 3 (3 red pairs)

Data structures: 

Algorithm:
Sort the array by string
Initialize a matching gloves counter to 0
Initialize a pair counter to 0

Iterate through the array
    If the current color is 0
        set the current color to the current string
        add 1 to the matching gloves counter
    If the current string == the current_color
        add 1 to the matching glove counter
    If the current_color is not equal to the current string
        Set the current string to current_color
        add matching glove counter / 2 to the pair counter
return the pair counter
'''

def number_of_pairs(all_gloves)
    all_gloves.sort! # Sort the array by string
    matching_gloves_counter = 0 # Initialize a matching gloves counter to 0
    pair_counter = 0 # Initialize a pair counter to 0
    current_color = ""
    
    all_gloves.each_with_index do |current_glove, index| # Iterate through the array
        if current_color == "" # If the current color is noting
            current_color = current_glove # set the current color to the current string
            matching_gloves_counter += 1 # add 1 to the matching gloves counter
        elsif current_glove == current_color # If the current string == the current_color
            matching_gloves_counter += 1 # add 1 to the matching glove counter
        elsif current_color != current_glove # If the current_color is not equal to the current string
            current_color = current_glove # Set the current string to current_color
            pair_counter += (matching_gloves_counter / 2) # add matching gloves to the pair counter
            matching_gloves_counter = 1 # reset the matching glove counter to 1
        end
        if all_gloves[index + 1] == nil # check if we're at the end of the array
            pair_counter += (matching_gloves_counter / 2) # add matching gloves to the pair counter
        end
    end
    pair_counter # return the pair counter
end

p number_of_pairs(["red","red"]) # 1
p number_of_pairs(["red","green","blue"]) # 0
p number_of_pairs(["gray","black","purple","purple","gray","black"]) # 1
p number_of_pairs([]) # 0
p number_of_pairs(["red","green","blue","blue","red","green","red","red","red"]) # 3 
