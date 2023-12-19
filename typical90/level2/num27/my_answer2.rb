require "set"
set = Set.new
N = gets.to_i
(1..N).each do |i|
  str = gets.chomp
  if set.add?(str)
    puts i
  end
end