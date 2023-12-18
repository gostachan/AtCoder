h, w = gets.chomp.split(" ").map{|i| i.to_i}

array = []
sum_record = []
sum_column = []

h.times do 
  record = gets.chomp.split(" ").map{|i| i.to_i}
  array << record
end

(0 .. h-1).each do |i|
  sum = 0
  array[i].each do |k|
    sum += k
  end
  sum_record << sum
end

(0 .. w-1).each do |i|
  sum = 0
  array.each do |k|
    sum += k[i]
  end
  sum_column << sum
end

sum_record.each_with_index do |e, index_r|
  output = []
  sum_column.each_with_index do |f, index_c|
    output_element = e + f - array[index_r][index_c]
    output << output_element
  end
  string = ""
  output.each do |e|
    string += "#{e}" + " " 
  end
  puts string
end