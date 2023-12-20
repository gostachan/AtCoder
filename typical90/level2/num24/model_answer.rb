N, K = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)

diff_sum = A.zip(B).sum { |a, b| (a - b).abs }

if diff_sum <= K && (K - diff_sum).even?
  puts "Yes"
else
  puts "No"
end
