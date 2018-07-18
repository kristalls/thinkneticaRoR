puts "Enter the sides of triagle"

print "a = "
a = gets.chomp.to_i

print "b = "
b = gets.chomp.to_i

print "c = "
c = gets.chomp.to_i

if a == b && b == c && c == a then
	puts "Треугольник равносторонний"
elsif
	a == b || b == c || a == c then
	puts "Треугольник равнобедренный"
end

hypotenuse = [a, b, c].max
catenary1, catenary2 = [a, b, c].min(2)

if hypotenuse ** 2 == catenary1 ** 2 + catenary2 ** 2
	puts "Треугольник прямоугольный"
else
	puts "Треугольник не прямоугольный"
end
	



# Часть решения взята у neverovda https://github.com/neverovda/ruby_learning/blob/master/lesson_1/rightTriangle.rb



