puts "Укажите ваше имя:"
name = gets.chomp
puts "Здравствуйте, #{name}!"
puts "Укажите ваш рост:"
height = gets.chomp
ideal_weight = height.to_i - 110
if ideal_weight <= 0 then puts "Ваш вес уже идеален"
else
puts "Ваш идеальный вес - #{ideal_weight} кг."
end
