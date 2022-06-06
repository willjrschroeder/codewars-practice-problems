'''
Each morning a man walks to work, and each afternoon he walks back home.

If it is raining in the morning and he has an umbrella at home, he takes an umbrella for the journey 
so he doesn\'t get wet, and stores it at work. Likewise, if it is raining in the afternoon and he has 
an umbrella at work, he takes an umbrella for the journey home.

Given an array of the weather conditions, your task is to work out the minimum number of umbrellas he 
needs to start with in order that he never gets wet. He can start with some umbrellas at home and some
at work, but the output is a single integer, the minimum total number.

The input is an array/list of consecutive half-day weather forecasts. So, e.g. the first value is the 
1st day\'s morning weather and the second value is the 1st day\'s afternoon weather. The options are:

"clear",
"sunny",
"cloudy",
"rainy",
"overcast",
"windy"
"thunderstorms".
e.g. for three days, 6 values:

weather = ["rainy", "cloudy", "sunny", "sunny", "cloudy", "thunderstorms"]

Problem: Receive an input of an array of half day forecasts. Output should be an integer of how many umbrellas the man needs
The man moves an umbrella from location to location if it is raining when he leaves.
He can start with some umbrellas at work, and some at home.

Data structures:
    Array of input, integer for output
    Array for rainy/not rainy

Examples:
minUmbrellas(["rainy", "clear", "rainy", "cloudy"]): should return 2

minUmbrellas(["sunny", "windy", "sunny", "clear"]): should return 0

minUmbrellas(["rainy", "rainy", "rainy", "rainy", "thunderstorms", "rainy"]): should return 1

Algorithm:
Convert input array into rainy/not rainy

Create integer variable for number of umbrellas needed and set to 0

Create integer variables for umbrellas_at_home and umbrellas_at_work, set to 0

# Even indices are morning forcasts, odd idices are afternoon forcasts
Iterate through the forcast array
    If it is rainy in the morning and there are no umbrellas at home
        umbrellas needed += 1
        umbrellas at work += 1

    If it is rainy in the afternoon and there are no umbrellas at work
        umbrellas needed += 1
        umbrellas at home += 1

    If it is rainy in the morning and there is an umbrella at home
        umbrellas at home -= 1
        umbrellas at work += 1

    If it is rainy in the afternoon and there is an umbrella at work
        umbrellas at work -= 1
        umbrellas at home += 1

Return number of umbrellas needed
'''

def min_umbrellas(forcasts)
    binary_forcasts = forcasts.map do |forcast| # converts the forcast array into a simple "rainy" or "not rainy"
        if forcast == "rainy" || forcast == "thunderstorms"
            "rainy" 
        elsif forcast == "clear" || forcast == "sunny" || forcast == "cloudy" || forcast == "overcast" || forcast == "windy"
            "not rainy"
        end
    end

    number_of_umbrellas_needed = 0
    umbrellas_at_home = 0
    umbrellas_at_work = 0

    counter = 0
    while counter < binary_forcasts.size do
        if counter.even? == true && binary_forcasts[counter] == "rainy" && umbrellas_at_home == 0 # checks if it is rainy in the morning and if there are no umbrella at home already
            number_of_umbrellas_needed += 1
            umbrellas_at_work += 1
        elsif counter.odd? == true && binary_forcasts[counter] == "rainy" && umbrellas_at_work == 0 # checks if it is rainy in the afternoon and if there are no umbrellas at work
            number_of_umbrellas_needed += 1
            umbrellas_at_home += 1
        elsif counter.even? == true && binary_forcasts[counter] == "rainy" && umbrellas_at_home != 0 # checks if it is rainy in the morning and if there is an umbrella at home
            umbrellas_at_home -= 1
            umbrellas_at_work += 1
        elsif counter.odd? == true && binary_forcasts[counter] == "rainy" && umbrellas_at_work != 0 # checks if it is rainy in the afternoon and if there is an umbrella at work
            umbrellas_at_work -= 1
            umbrellas_at_home += 1
        end

        counter += 1
    end
    number_of_umbrellas_needed
end

p min_umbrellas(["rainy", "clear", "rainy", "cloudy"])
p min_umbrellas(["sunny", "windy", "sunny", "clear"])
p min_umbrellas(["rainy", "rainy", "rainy", "rainy", "thunderstorms", "rainy"])