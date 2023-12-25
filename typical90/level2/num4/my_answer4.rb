H, W = gets.split.map(&:to_i)
array = Array.new(H){gets.split.map(&:to_i)}

yoko = []
tate = []

array.each do |element|
  yoko << element.sum
end

array.transpose.each do |element|
  tate << element.sum
end

yoko.each_with_index do |record, i|
  output = []
  tate.each_with_index do |column, j|
    output << record + column - array[i][j]
  end
  puts output.join(" ")
end



# 以下修正方法を記載
=begin
H, W = gets.split.map(&:to_i)
array = Array.new(H){gets.split.map(&:to_i)}
# >>>>>>>>>>>>>　変数の名前がわかりにくい
yoko = []
tate = []
# <<<<<<<<<<<< 
sum_record = []
sum_column = []

# >>>>>>>>>>>> each文はArray#mapを使うと端的に表現できる
array.each do |element|
  yoko << element.sum
end
array.transpose.each do |element|
  tate << element.sum
end
# <<<<<<<<<<<<
sum_record = array.map{|record| record.sum}
sum_column = array.transpose.map{|column| column.sum}

# >>>>>>>>>>>> これは言語化するのがむずいが，出力はH回のputsであろうから，このフォーマットに
yoko.each_with_index do |record, i|
  output = []
  tate.each_with_index do |column, j|
    output << record + column - array[i][j]
  end
  puts output.join(" ")
end
# <<<<<<<<<<<<
H.times do |i|
  puts (0...W).map{|j| sum_record[i] + sum_column[j] - array[i][j]}.join(" ")
end



