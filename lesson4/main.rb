require_relative 'train'
require_relative 'station'
require_relative 'route'
require_relative 'cart'

class Menu

  def initialize

    loop do
      puts "Добро пожаловать в программу управления железнодорожным движением."
      puts "Что бы вы хотели сделать?"
      puts "1. Создать новый поезд."
      puts "2. Совершить действия с поездом."
      puts "3. Создать новую станцию."
      puts "4. Получить информацию о существующей станции."
      puts "5. Сформировать маршрут."
      puts "6. Изменить маршрут"
      puts "7. Получить информацию о существующем маршруте."
      puts "8. Создать вагон."
      puts "9. Выйти из программы."
  
      input = gets.to_i

      case input

      when 1
          puts "Какой вид поезда вы бы хотели создать?(грузовой - 1, пассажирский - 2)"
          train = gets.to_i
          case train
          when 1
            puts "Введите название поезда:"
            name = gets.chomp
            puts "Введите номер поезда"
            number = gets.chomp
            @name = CargoTrain.new(number)
          when 2
            puts "Введите название поезда:"
            name = gets.chomp
            puts "Введите номер поезда"
            number = gets.chomp
            @name = PassengerTrain.new(number)
          end

      when 2
        puts "Введите название поезда с которым вы хотите совершить действие."
        train_name = gets.chomp
        puts "Вы можете:"
        puts "1. Определить маршрут поезда."
        puts "2. Прицепить вагон к поезду."
        puts "3. Отцепить вагон от поезда."
        puts "4. Проехать до следующей станции."
        puts "5. Проехать до предыдущей станции."
        puts "6. Вывести список всех поездов."
          input = gets.to_i
          case input
          when 1
            puts "Введите название маршрута"
            route_name = gets.chomp
            train_name.add_route(route_name)
              
          when 2
            print "Введите номер вагона:"
            cart_number = gets.chomp
            train_name.add_cart(cart_number)

          when 3
            print "Введите название поезда:"
            train_name = gets.chomp
            print "Введите название вагона:"
            cart_number = gets.chomp
            train_name.remove_cart(cart_number)

          when 4
            train_name.move_forward

          when 5
            train_name.move_backward

          when 6
            ObjectSpace.each_object(Train).to_a

          else
            puts "Выход в главное меню."
            break
          end

      when 3
        puts "Введите называние станции:"
        name = gets.chomp
        name = Station.new(name)

      when 4
        puts "Введите название станции:"
        name = gets.chomp
        name.trains_list

      when 5
        puts "Введите название маршрута:"
        route_name = gets.chomp
        puts "Введите первую станцию"
        first = gets.chomp
        puts "Введите вторую станцию"
        last = gets.chomp
        route_name = Route.new(first,last)

      when 6

      when 7
        puts "Введите название маршрута:"
        name = gets.chomp
        name.stations

      when 8
        puts "Введите номер вагона:"
        cart_number = gets.chomp
        puts "Выберите тип вагона: 1 - пассажирский, 2 - грузовой."
        cart_type = gets.to_i
        case cart_type

        when 1
          cart_number = PassengerCart.new

        when 2
          cart_number = CargoCart.new
        end
        puts "Вагон #{cart_number} успешно создан."

      when 9
        exit

      end
    end
  end
end

menu = Menu.new


