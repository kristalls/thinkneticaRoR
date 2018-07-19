puts "Enter the sides of triagle"

print "a = "
a = gets.chomp.to_i

print "b = "
b = gets.chomp.to_i

print "c = "
c = gets.chomp.to_i

sides = [a, b, c].sort!

if sides[2] ** 2 == sides[1] ** 2 + sides[0] ** 2
	puts "Треугольник прямоугольный"
  if sides[1] == sides[2] || sides[1] == sides[0]
    puts "Треугольник равнобедренный"
  else
    puts "Треугольник не равнобедренный"
  end
else
	puts "Треугольник не прямоугольный"
  if sides[1] == sides[2] && sides[1] == sides[0]
    puts "Треугольник равносторонний"
  else
    puts "Треугольник не равносторонний"
  end
end


	



# Часть решения взята у neverovda https://github.com/neverovda/ruby_learning/blob/master/lesson_1/rightTriangle.rb



