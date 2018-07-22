puts "Enter the sides of triagle"

print "a = "
a = gets.chomp.to_f

print "b = "
b = gets.chomp.to_f

print "c = "
c = gets.chomp.to_f

sides = [a, b, c].sort!

isosceles = sides[1] == sides[0]
rectangular = sides[2]**2 == sides[1]**2 + sides[0]**2
equilateral = sides[1] == sides[2] && sides[1] == sides[0]

if equilateral
  puts "Треугольник равносторонний"
  exit
elsif rectangular && isosceles
  puts "Треугольник прямоугольный равнобедренный"
elsif isosceles
  puts "Треугольник равнобедренный"
end



