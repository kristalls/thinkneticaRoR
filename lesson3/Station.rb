class Station
  
  def initialize
    @trains = Hash.new
  end

  def add_train(new_train, type)
    @trains[new_train] = type
    @trains.each { |train, type| puts "New #{type} train #{train} just arrived." }
  end

  def delete_train(train)
    @trains.delete(train) { |train| "Train #{train} not found" }
  end

  def trains_type_list(type)
    @trains.select { |train, type1| type1 = type}
  end

  def trains_type_list(type)
    @trains.key(type)
  end

end
