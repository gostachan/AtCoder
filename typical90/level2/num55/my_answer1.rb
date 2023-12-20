N, P, Q = gets.split.map(&:to_i)
array = gets.split.map(&:to_i)
index = 0
(0..N-5).each do |i|
  (i+1..N-4).each do |j|
    (j+1..N-3).each do |k|
      (k+1..N-2).each do |l|
        (l+1..N-1).each do |m|
          if (array[i] * array[j] * array[k] * array[l] * array[m]) % P == Q
            index += 1
          end
        end
      end
    end
  end
end
puts index 
