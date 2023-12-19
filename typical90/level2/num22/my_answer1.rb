nums = gets.chomp.split.map(&:to_i)
gcd = nums.reduce(:gcd)

puts nums.sum/gcd - 3
