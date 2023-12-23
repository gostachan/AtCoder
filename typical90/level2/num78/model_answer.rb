N, M = gets.split.map(&:to_i)
array = Array.new(M) { gets.split.map(&:to_i) }

sorted_array = array.map { |sub_array| sub_array.max }
unique_elements = sorted_array.tally.select { |_, count| count == 1 }.keys

p unique_elements.length
