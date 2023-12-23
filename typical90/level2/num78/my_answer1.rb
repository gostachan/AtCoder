N, M = gets.split.map(&:to_i)
array = Array.new(M) {gets.split.map(&:to_i)}
sorted_array = array.map { |sub_array| sub_array.sort { |a, b| b <=> a } }
larger_point = []
unique_elements = []
sorted_array.each do |array|
  larger_point << array[0]
  unique_elements = larger_point.tally.select { |element, count| count == 1 }.keys
end
p unique_elements.length
