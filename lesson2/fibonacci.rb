fibonacci = [0,1]
loop do
  break unless fibonacci.last < 100
  fibonacci << fibonacci[-1] + fibonacci[-2]
end
puts fibonacci
