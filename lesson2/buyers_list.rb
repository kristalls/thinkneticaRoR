goods = []
total = 0

def gets_user_input(greeting)
    puts greeting
    gets.chomp
end

loop do
  name = gets_user_input('Введите название товара:')
  break if name == 'stop'
  goods << {
    name => {
      price: gets_user_input('Введите цену товара').to_f,
      quantity:   gets_user_input('Введите количество товара').to_f
    }
  }
end

goods.each do |item|
  item.each do |title, detail|
    puts "Item: #{title},  price: #{detail[:price]}, qty: #{detail[:quantity]}, sum: #{detail[:quantity] * detail[:price]}"
    total += detail[:quantity] * detail[:price]
  end
end

puts "Итого: #{total}"

