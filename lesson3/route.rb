class Route
  attr_reader :stations
  
  def initialize(first, last)
    @stations = [first, last]
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def delete_station(station)
    @stations.delete(station) if ![@stations.first, @stations.last].include?(station)
  end

  def list
    @stations.each {|station| puts station}
  end

end
