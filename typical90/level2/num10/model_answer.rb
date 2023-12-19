n = gets.to_i  # 学生の数
class1_scores = Array.new(n + 1, 0)
class2_scores = Array.new(n + 1, 0)

# 学生の情報を読み込み
n.times do |i|
  c, p = gets.split.map(&:to_i)
  if c == 1
    class1_scores[i + 1] = p
  else
    class2_scores[i + 1] = p
  end
end

# 累積和を計算
(1..n).each do |i|
  class1_scores[i] += class1_scores[i - 1]
  class2_scores[i] += class2_scores[i - 1]
end

# 質問の処理
q = gets.to_i  # 質問の数
q.times do
  l, r = gets.split.map(&:to_i)
  total_class1 = class1_scores[r] - class1_scores[l - 1]
  total_class2 = class2_scores[r] - class2_scores[l - 1]
  puts "#{total_class1} #{total_class2}"
end
