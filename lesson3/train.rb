class Train
  
  attr_reader :number, :carts, :speed

  def initialize(number, type, carts)
    @carts = carts.to_i
    @number = number
    @type = type
    @speed = 0
  end

  def chspeed=(speed)
    @speed = speed
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

  def addroute(route)
    @route = route
    @index = 0
  end

  def current_station
    @current_station = @route.stations[@index]
  end

  def prev_station
    @prev_station = @route.stations[@index - 1]
  end

  def next_station
    @prev_station = @route.stations[@index + 1]
  end

  def move_forward
    @index += 1
  end

  def move_backward
    @index -= 1 if @index > 0
  end

end
