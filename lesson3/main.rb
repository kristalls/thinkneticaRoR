require_relative 'train'
require_relative 'station'
require_relative 'route'

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
      puts "6. Получить информацию о существующем маршруте."
      input = gets.to_i
      case input
      when 1
        loop do
          puts "Какой вид поезда вы бы хотели создать?(грузовой - 1, пассажирский - 2)"
          train = gets.to_i
          case train
          when 1
            new_cargo_train
          when 2
            new_passenger_train
          else
            puts "Ошибка ввода."
            exit
        end
      end
      when 2
      puts "Введите название поезда с которым вы хотите совершить действие."
      train_name = gets.chomp
      puts "Вы можете:"
      puts "1. Определить маршрут поезда."
      puts "2. Создать вагон."
      puts "3. Прицепить вагон к поезду."
      puts "4. Отцепить вагон от поезда."
      puts "5. Проехать до следующей станции."
      puts "6. Проехать до предыдущей станции"
      loop do
        input = gets.to_i
        case input
        when 1
          assign_route(train_name)
        when 2
          create_cart
        when 3
          add_cart(train_name)
        when 4
          remove_cart(train_name)
        when 5
          move_forward(train_name)
        when 6
          move_backward(train_name)
        else
          puts "Ошибка ввода."
          exit
        end
      end
      when 3
      puts "Введите называние станции:"
      name = gets.chomp
      new_station(name)
      when 4
      puts "Введите название станции:"
      name = gets.chomp
      trains_list(name)
      when 5
      puts "Введите название маршрута:"
      route_name = gets.chomp
      puts "Что бы вы хотели сделать?"
      puts "1. Добавить станцию."
      puts "2. Удалить станцию."
      loop do
        input = gets.to_i
        case input
        when 1
          add_station(route_name)
        when 2
          delete_station(route_name)
        end
      end
      when 6
        puts "Введите название маршрута:"
        name = gets.chomp
        display_route(name)
      end
    end
  end

  def new_cargo_train
  print "Введите название поезда:"
  name = gets.chomp
  print "Введите номер поезда:"
  number = gets.to_i
  name = CargoTrain.new(number)
  end

  def new_passenger_train
  print "Введите название поезда:"
  name = gets.chomp
  print "Введите номер поезда:"
  number = gets.to_i
  name = CargoTrain.new(number)
  end

  def new_station(name)
  name = Station.new(name)
  end

  def new_route
  print "Введите название маршрута:"
  name = gets.chomp
  print "Введите первую станцию:"
  first = gets.chomp
  print "Введите последнюю станцию:"
  last = gets.chomp
  name = Route.new(first, last)
  end

  def add_station(route_name)
  print "Введите название станции которую вы хотите добавить:"
  station_name = gets.chomp
  route_name.add_station(station_name)
  end

  def delete_station(route_name)
  print "Введите название станции которую вы хотите удалить"
  station_name = gets.chomp
  route_name.delete_station(station_name)
  end

  def display_route(name)
  name.list_stations
  end

  def station_trains(name)
  name.trains_list
  end

  def assign_route(train_name)
  print "Введите название маршрута который вы хотите назначить поезду"
  route_name = gets.chomp
  train_name.add_route.route_name
  end

  def create_cart
  print "Введите номер вагона:"
  number = gets.chomp
  print "Введите тип вагона:"
  type = gets.chomp
  number = Cart.new(type)
  end

  def add_cart(train_name)
  print "Введите номер вагона который вы хотите прицепить:"
  cart_number = gets.chomp
  train_name.add_cart(cart_number)
  end

  def remove_cart
  print "Введите название поезда от которого нужно отцепить вагон:"
  train_name = gets.chomp
  print "Введите номер вагона который вы хотите отцепить:"
  cart_number = gets.chomp
  train_name.add_cart(cart_number)
  end

  def move_forward(train_name)
  train_name.move_forward
  puts next_station.trains_list
  end

  def move_backward(train_name)
  train_name.move_backward
  puts prev_station.trains_list
  end
end

menu = Menu.new



