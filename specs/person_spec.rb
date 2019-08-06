require ('Minitest/autorun')
require ('Minitest/rg')
require_relative('../person')

class PersonTest < MiniTest::Test

  def setup
    @person1 = Person.new("Amanda", 31)
  end

  def test_person_name
    assert_equal("Amanda", @person1.name())
  end

  def test_person_age
    assert_equal(31, @person1.age())
  end

end
