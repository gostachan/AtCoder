N = gets.to_i
sum1 = 0
sum2 = 0
points = Array.new(N){gets.split.map(&:to_i)}
array = [[0, 0]]
N.times do |i|
  if points[i][0] ==  1
    sum1 += points[i][1]
  else
    sum2 += points[i][1]
  end
  array << [sum1, sum2]
end
Q = gets.to_i
Q.times do |i|
  a, b = gets.split.map(&:to_i)
  output1 = array[b][0] - array[a - 1][0]
  output2 = array[b][1] - array[a - 1][1]
  puts "#{output1} #{output2}"
end