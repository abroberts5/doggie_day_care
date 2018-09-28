require 'minitest/autorun'
require 'minitest/pride'
require './lib/dog'

class DogTest < Minitest::Test
  def test_case_name
    doggie = Dog.new("Comet", "German Shepherd")
    assert_instance_of Dog, doggie
  end

  def test_it_has_attributes
    doggie = Dog.new("Comet", "German Shepard")
    assert_equal "Comet", doggie.name
    assert_equal "German Shepard", doggie.breed
  end

  def test_it_can_be_fed
    doggie = Dog.new("Comet", "German Shepard")
    assert_equal false, doggie.fed?
    assert_equal "Yum!", doggie.feed
    assert_equal true, doggie.fed?
  end
end
