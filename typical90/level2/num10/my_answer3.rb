N = gets.chomp.to_i
class1_scores = Array.new(N + 1, 0)
class2_scores = Array.new(N + 1, 0)

N.times do |i|
  c, p = gets.chomp.split.map(&:to_i)
  if c == 1
    class1_scores[i + 1] = p
  else
    class2_scores[i + 1] = p
  end
  class1_scores[i + 1] += class1_scores[i]
  class2_scores[i + 1] += class2_scores[i]
end

Q = gets.chomp.to_i

Q.times do
  f, t = gets.chomp.split.map(&:to_i)
  op1 = class1_scores[t] - class1_scores[f - 1]
  op2 = class2_scores[t] - class2_scores[f - 1]
  puts "#{op1} #{op2}"
end