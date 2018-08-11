class Route

  attr_reader :stations
  
  def initialize(first, last)
    @stations = [first, last]
    puts "Маршрут #{self} успешно создан."
  end

  def add_station(station)
    @stations.insert(-2, station)
  end

  def delete_station(station)
    @stations.delete(station) if ![@stations.first, @stations.last].include?(station)
  end

  def list_stations
    @stations.each {|station| puts station.name}
  end

end
