puts "Enter the sides of triagle"

print "a = "
a = gets.chomp.to_i

print "b = "
b = gets.chomp.to_i

print "c = "
c = gets.chomp.to_i

sides = [a, b, c].sort!

if sides[1] == sides[2] && sides[1] == sides[0]
  puts "Треугольник равносторонний"
  exit
else
  pythagoras = sides[2]**2 == sides[1]**2 + sides[0]**2
  puts pythagoras ? "Треугольник прямоугольный" : "Треугольник не прямоугольный"
  isosceles = sides[1] == sides[0]
  puts isosceles ? "Треугольник равнобедренный" : "Треугольник не равнобедренный"
end


	



# Часть решения взята у neverovda https://github.com/neverovda/ruby_learning/blob/master/lesson_1/rightTriangle.rb



