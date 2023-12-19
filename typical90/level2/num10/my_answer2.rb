N = gets.chomp.to_i
Students = Array.new(N){gets.split.map(&:to_i)}
Q = gets.chomp.to_i
Questions = Array.new(Q){gets.split.map(&:to_i)}


Questions.each do |question|
  sum = 0
  sum1 = 0
  sum2 = 0
  (question[0]-1..question[1]-1).each do |i|
    sum += Students[i][1]
    if Students[i][0] == 1
      sum1 += Students[i][1]
    end
    sum2 = sum - sum1
    
  end
  puts "#{sum1} #{sum2}"
end