class Station
  attr_accessor :trains
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

  def trains_by_type(type = :all)
    @trains.select { |train| train.type == type || type == :all}   
  end

end
