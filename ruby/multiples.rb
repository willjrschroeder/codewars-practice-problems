def multiples(max_num)
    return 0 if max_num <= 0
    multiples_array = []

    for i in 1...max_num do
        multiples_array << i if i % 3 == 0
        multiples_array << i if i % 5 == 0
    end
    puts multiples_array
    multiples_array.uniq!
    puts multiples_array
    multiples_array.sum

end

puts multiples(10)