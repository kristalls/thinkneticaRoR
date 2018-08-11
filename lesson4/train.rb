class Train
  
  attr_reader :number, :carts, :speed, :type

  def initialize(number)
    @type = type
    @carts = []
    @number = number
    @speed = speed
    puts "Поезд #{self} успешно создан."
  end

  def speed_up(change)
    @speed += change if speed > 0
  end

  def slow_down(change)
    @speed -= change if speed > 0
  end

  def stop
    @speed = 0
  end

  def add_cart(cart)
    @carts.push(cart) if @speed == 0 && cart.type == self.type
  end

  def remove_cart(cart)
    @carts.delete(cart) if @speed == 0 && !self.carts.empty?
  end

  def add_route(route)
    @route = route
    @index = 0
    @route.stations[@index].add_train(self)
  end

  def current_station
    @route.stations[@index]
  end

  def prev_station
    @route.stations[@index - 1]
  end

  def next_station
    @route.stations[@index + 1]
  end

  def move_forward
    if next_station
      next_station.add_train(self)
      current_station.delete_train(self)
      @index += 1
    end
  end

  def move_backward
    if prev_station
      current_station.delete_train(self)
      prev_station.add_train(self)
      @index -= 1 
    end
  end

  def list_trains
    ObjectSpace.each_object(Train).to_a
  end
end

class PassengerTrain < Train
  def initialize(number)
    super
    @type = "passenger"
  end
end

class CargoTrain < Train
  def initialize(number)
    super
    @type = "cargo"
  end
end






