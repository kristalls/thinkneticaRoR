class Route
  
  def initialize(first, last)
    @stations = [first, last]
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def delete_station(station)
    @station.delete(station)
  end

  def show
    puts @station
  end

end
