Q = gets.to_i
deck = []
Q.times do 
  t, x = gets.split.map(&:to_i)
  case t
  when 1
    deck.unshift(x)
  when 2
    deck << x
  when 3
    puts deck[x-1]
  end
end