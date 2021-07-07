class Bus
  attr_reader :name, :capacity, :passengers
  def initialize(name,capacity)
    @name = name
    @capacity = capacity
    @passengers = []
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def yell_at_passengers
    @passengers.map do |passenger|
      passenger.upcase
    end
  end

  def number_of_passengers
    @passengers.count
  end

  def over_capacity?
    if number_of_passengers > 4
      true
    else
      false
    end
  end

  def kick_out
      @passengers.shift
  end
end
