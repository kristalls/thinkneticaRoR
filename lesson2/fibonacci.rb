fibonacci = [0,1]
next_element = 1

while next_element < 100
  next_element = (fibonacci[-1] + fibonacci[-2])
  fibonacci << next_element
end

puts fibonacci
