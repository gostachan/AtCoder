n, k = gets.split.map(&:to_i)

k.times do
  n = n.to_s(8).gsub('8', '5').to_i(9)
end

puts n
