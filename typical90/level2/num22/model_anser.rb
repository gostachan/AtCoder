nums = gets.chomp.split.map(&:to_i)

gcd = nums.reduce(:gcd)

result = nums.sum / gcd - 3

puts result
