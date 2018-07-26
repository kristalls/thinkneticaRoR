numbers_range = (10..100)
numbers = []
numbers_range.step(5) { |x| numbers << x }
puts numbers
