'''
How much bigger is a 16-inch pizza compared to an 8-inch pizza? A more pragmatic question is: 
How many 8-inch pizzas "fit" in a 16-incher?

The answer, as it turns out, is exactly four 8-inch pizzas. For sizes that don\'t correspond to 
a round number of 8-inchers, you must round the number of slices (one 8-inch pizza = 8 slices), e.g.:

how_many_pizzas(16) -> "pizzas: 4, slices: 0"
how_many_pizzas(12) -> "pizzas: 2, slices: 2"
how_many_pizzas(8) -> "pizzas: 1, slices: 0"
how_many_pizzas(6) -> "pizzas: 0, slices: 5"
how_many_pizzas(0) -> "pizzas: 0, slices: 0"

Problem: input: pizza diameter: output: a string containing an integer of how many 8-inch pizzas and slices of 8 inch pizzas fit inside

Algorithm:
Find the area of the inputted pizza
Find the area of an 8 inch pizza

Divide the inputted pizza area by the 8 inch pizza area and store the integer and the remainder


'''
include Math

def how_many_pizzas(pizza_diameter)
    pizza_area = PI * (pizza_diameter / 2) ** 2
    eight_inch_pizza_area = PI * 16
    eight_inch_pizza_slice_area = eight_inch_pizza_area / 8

    whole_pizzas = (pizza_area / eight_inch_pizza_area).floor
    pizza_slices = ((pizza_area % eight_inch_pizza_area) / eight_inch_pizza_slice_area).round

    "pizzas: #{whole_pizzas}, slices: #{pizza_slices}"
end

p how_many_pizzas(16) #-> "pizzas: 4, slices: 0"
p how_many_pizzas(12)#  -> "pizzas: 2, slices: 2"
p how_many_pizzas(8) ## -> "pizzas: 1, slices: 0"
p how_many_pizzas(6) ## -> "pizzas: 0, slices: 5"
p how_many_pizzas(5) #-> "pizzas: 0, slices: 0"