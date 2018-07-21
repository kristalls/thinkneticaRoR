puts "Enter the sides of triagle"

print "a = "
a = gets.chomp.to_i

print "b = "
b = gets.chomp.to_i

print "c = "
c = gets.chomp.to_i

sides = [a, b, c].sort!
rectangular? = sides[2]**2 == sides[1]**2 + sides[0]**2
isosceles? = sides[1] == sides[2] && sides[1] == sides[0]
equilateral? = sides[1] == sides[0]
if isosceles
  puts "Треугольник равносторонний"
  exit
elsif rectangular
  puts "Треугольник прямоугольный"
elsif equilateral
  puts "Треугольник равнобедренный"
end


