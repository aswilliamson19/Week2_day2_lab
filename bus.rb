class Bus

attr_reader :route_number, :destination
attr_accessor :passengers

  def initialize(route_number, destination, passengers)
    @route_number = route_number
    @destination = destination
    @passengers = passengers
  end

  def drive()
    return "Brum brum"
  end

  def number_of_passengers
    return @passengers
  end

  def pick_up_passenger(person)
    return @passengers.push(person)
  end

  def drop_off_passenger(person)
    return @passengers.delete(person)
  end

  def remove_all_passengers
    return @passengers.clear
  end

end
