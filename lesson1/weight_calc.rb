puts "Укажите ваше имя:"
name = gets.chomp
puts "Здравствуйте, #{name}!"
puts "Укажите ваш рост:"
height = gets.to_i
ideal_weight = height - 110
if ideal_weight <= 0 
  puts "Ваш вес уже идеален"
else
  puts "Ваш идеальный вес - #{ideal_weight} кг."
end
