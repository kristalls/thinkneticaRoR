fibonacci = [0, 1]
while fibonacci.last <= 88
  fibonacci << (fibonacci[-1]+fibonacci[-2])
end
puts fibonacci
