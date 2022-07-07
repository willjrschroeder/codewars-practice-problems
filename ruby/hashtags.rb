'''
The marketing team is spending way too much time typing in hashtags.
Let\'s help them with our own Hashtag Generator!

Here\'s the deal:

It must start with a hashtag (#).
All words must have their first letter capitalized.
If the final result is longer than 140 chars it must return false.
If the input or the result is an empty string it must return false.
Examples
" Hello there thanks for trying my Kata"  =>  "#HelloThereThanksForTryingMyKata"
"    Hello     World   "                  =>  "#HelloWorld"
""                                        =>  false
'''

def hashtag_generator(string)
    return false if string == ""
    return false if string.length > 140
    array = string.split " "
    array.map! {|word| word.capitalize}
    "##{array.join}"
end

p hashtag_generator(" Hello world ")
p hashtag_generator ("")
p hashtag_generator ("This is longer than 140 characters. I have to type quite a bit to reach 140 characters. I don't actually know how long 140 characetrs is, but I'm probably there.")