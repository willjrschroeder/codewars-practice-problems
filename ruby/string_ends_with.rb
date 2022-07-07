'''
Complete the solution so that it returns true if the first argument(string) passed in ends with the 2nd argument (also a string).

Examples:

solution(\'abc\', \'bc\') // returns true
solution(\'abc\', \'d\') // returns false
'''

def string_ends_with? (string, substring)
    final_chars_length = substring.length
    return true if string[-final_chars_length, final_chars_length] == substring
    false
end