H, W = gets.chomp.split.map(&:to_i)
A = Array.new(H){gets.split.map(&:to_i)}

yoko = A.map{|rec| rec.sum}
tate = A.transpose.map{|rec| rec.sum}

H.times do |i|
  puts (0...W).map{|j| yoko[i] + tate[j] - A[i][j]}.join(" ")
end