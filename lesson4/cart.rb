class Cart

  attr_reader :type, :number

  def initialize
  end

end

class PassengerCart < Cart
  def initialize
    super
    type = "passenger"
    @type = type
  end
end

class CargoCart < Cart
  def initialize
    super
    type = "cargo"
    @type = type
  end
end
