class Train
  
  def initialize(number, type, carts)
    @carts = carts.to_i
  end

  def chspeed(speed)
    @speed = speed
  end

  def speed
    puts @speed
  end

  def stop
    @speed = 0
  end

  def carts
    puts carts
  end

  def add_cart
    carts += 1 if @speed = 0
  end

  def remove_cart
    carts -= 1 if @speed = 0
  end
  #Не понял как добавить маршрут поезду
end
