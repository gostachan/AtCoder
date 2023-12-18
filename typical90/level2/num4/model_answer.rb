H, W = gets.split.map(&:to_i)
A = Array.new(H) { gets.split.map(&:to_i) }

yoko = A.map { |row| row.sum }
tate = A.transpose.map { |col| col.sum }

H.times do |i|
  puts (0...W).map { |j| yoko[i] + tate[j] - A[i][j] }.join(' ')
end
p A