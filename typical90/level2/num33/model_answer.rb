H, W = gets.split.map(&:to_i)

if H == 1 || W == 1
  puts [H, W].max
else
  h = (H + 1) / 2
  w = (W + 1) / 2
  puts h * w
end
