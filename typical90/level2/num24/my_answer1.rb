N, K = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)
diff = []
N.times do |i|
  diff[i] = (A[i] - B[i]).abs
end

diff_sum = diff.sum
if diff_sum <= K && (diff_sum - K)%2 == 0
  puts "Yes"
else
  puts "No"
end