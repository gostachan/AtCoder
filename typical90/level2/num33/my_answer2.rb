H, W = gets.split.map(&:to_i)

if H == 1 || W == 1
  if H == 1
    puts W 
  else
    puts H
  end
else
  if H % 2 == 0
    h = H / 2
  else
    h = H / 2 + 1
  end
  if W % 2 == 0
    w = W / 2
  else
    w = W / 2 + 1
  end
  puts h * w

end
