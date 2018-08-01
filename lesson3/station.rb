class Station

  attr_reader :name

  def initialize(name)
    @name = name
    @trains = []
  end

  def add_train(train)
    @trains << train
  end

  def delete_train(train)
    @trains.delete(train) { |train| "Train #{train} not found" }
  end

end
