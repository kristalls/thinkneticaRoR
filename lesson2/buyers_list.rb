goods = []
total = 0

def gets_user_input(greeting)
  begin
    puts greeting
    input = gets.chomp!
  end until input
  input
end

loop do
  name = gets_user_input('Введите название товара:').to_s
  break if name == 'stop'
  goods << {
    name => {
      price: gets_user_input('Введите цену товара').to_f,
      quantity:   gets_user_input('Введите количество товара').to_f
    }
  }
end

goods.each do |item|
  item.each do |k, v|
    puts "Item: #{k},  price: #{v[:price]}, qty: #{v[:quantity]}, sum: #{v[:quantity] * v[:price]}"
    total += v[:quantity] * v[:price]
  end
end

puts "The total: #{total}"



