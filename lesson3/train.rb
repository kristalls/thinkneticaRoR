class Train
  
  attr_reader :number, :carts, :speed, :type

  def initialize(number, type, carts)
    @carts = carts.to_i
    @number = number
    @type = type
    @speed = 0
  end

  def speed_up(speed)
    @speed = speed if speed > 0 #Зачем создавать два метода если они абсолютно одинаковы?
  end

  def slow_down(speed)
    @speed = speed if speed > 0
  end

  def stop
    @speed = 0
  end

  def add_cart
    @carts += 1 if @speed == 0 
  end

  def remove_cart
    @carts -= 1 if @speed == 0 && @carts > 0
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
