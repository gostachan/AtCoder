N = gets.chomp.to_i
a = []
N.times do |i|
  string = gets.chomp
  if a.include?(string)
  else
    a << string
    puts i + 1
  end
end