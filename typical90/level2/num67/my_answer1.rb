n, K = gets.split.map(&:to_i)
n = n.to_s


K.times do 
  n = n.to_i(8)
  n = n.to_s(9)
  n = n.split("")
  n = n.map { |element| element == '8' ? '5' : element }
  n = n.join("")
end
puts n