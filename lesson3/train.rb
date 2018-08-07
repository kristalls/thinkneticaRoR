class Train
  
  attr_reader :number, :carts, :speed

  def initialize(number)
    @carts = []
    @number = number
    @speed = 0
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
    @carts.delete(cart) if @speed == 0 && @carts > 0
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
end

class PassengerTrain < Train
  attr_reader :type #Как сделать чтобы в дополнение к основному initialize он принимал обновленный initialize?
  def initialize
    type = "passenger"
    @type = type
  end
end

class CargoTrain < Train
  attr_reader :type
  def initialize
    type = "cargo"
    @type = type
  end
end

class Cart
end

class PassengerCart < Cart
  attr_reader :type 
  def initialize
    type = "passenger"
    @type = type
  end
end

class CargoCart < Cart
  attr_reader :type
  def initialize
    type = "cargo"
    @type = type
  end
end





