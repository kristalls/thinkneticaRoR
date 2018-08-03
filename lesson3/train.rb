class Train
  
  attr_reader :number, :carts, :speed, :type

  def initialize(number, type, carts)
    @carts = carts.to_i
    @number = number
    @type = type
    @speed = 0
  end

  def changespeed(speed)
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
    @route.stations[@index].trains.push(self) #Здесь какая то ошибка но я не могу понять в чем она.
    @index = 0
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
    if !@route.stations[@index + 1].nil?
      @index += 1
      @route.stations[@index + 1].trains.push(self)
      @route.stations[@index].trains.delete(self)
    end
  end

  def move_backward
    if @index > 0 && !@route.stations[@index - 1].nil?
      @index -= 1 
    end
  end

end
