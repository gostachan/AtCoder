require 'set'

n = gets.to_i
set = Set.new

(1..n).each do |i|
  s = gets.chomp
  if set.add?(s)
    puts i
  end
end
