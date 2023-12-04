def most_frequent_elements(array)
  frequency_hash = Hash.new(0)

  array.each { |element| frequency_hash[element] += 1 }

  frequency_hash.select { |_k, v| v == frequency_hash.values.max }.keys
end

array = [1, 2, 3, 1, 2, 4, 1, 5, 5]
result = most_frequent_elements(array)

puts "Most frequent element(s): #{result.join(", ")}"
