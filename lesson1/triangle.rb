puts "Enter the sides of triagle"

print "a = "
a = gets.chomp.to_f

print "b = "
b = gets.chomp.to_f

print "c = "
c = gets.chomp.to_f

sides = [a, b, c].sort!

if sides[1] == sides[2] && sides[1] == sides[0]
  puts "Треугольник равносторонний"
  exit
elsif sides[2]**2 == sides[1]**2 + sides[0]**2
  puts "Треугольник прямоугольный"
    if sides[1] == sides[0]
      puts "Треугольник равнобедренный"
    end
end


