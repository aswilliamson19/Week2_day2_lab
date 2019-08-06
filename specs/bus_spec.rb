require ('Minitest/autorun')
require ('Minitest/rg')
require_relative('../bus')
require_relative('../person')

class BusTest < MiniTest::Test

  def setup
      person1 = Person.new("Amanda", 31)
      @bus = Bus.new(22, "Ocean Terminal", [])
  end

  def test_bus_route_number
    assert_equal(22, @bus.route_number())
  end

  def test_bus_destination
    assert_equal("Ocean Terminal", @bus.destination())
  end

  def test_drive
    assert_equal("Brum brum", @bus.drive())
  end

  def test_number_of_passengers
    assert_equal([], @bus.number_of_passengers)
  end

  def test_pick_up_passenger
    person1 = Person.new("Amanda", 31)
    @bus.pick_up_passenger(person1)
    assert_equal([person1], @bus.passengers)
  end

  def test_drop_off_passenger
    @bus2 = Bus.new(22, "Ocean Terminal", [])
    person1 = Person.new("Amanda", 31)
    person2 = Person.new("Alex", 31)
    @bus2.pick_up_passenger(person1)
    @bus2.pick_up_passenger(person2)
    @bus2.drop_off_passenger(person2)
    assert_equal( [person1], @bus2.passengers)
  end

  def test_remove_all_passengers
    person2 = Person.new("Davide", 31)
    person3 = Person.new("Shona", 31)
    @bus2 = Bus.new(22, "Ocean Terminal", ["Davide", "Shona"])
    assert_equal([], @bus2.remove_all_passengers())
  end

end
