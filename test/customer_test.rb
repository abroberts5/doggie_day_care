require 'minitest/autorun'
require 'minitest/pride'
require './lib/customer'
require './lib/dog'

class CustomerTest < Minitest::Test
  def test_it_exists
    customer = Customer.new("Alice", "Jones", "2")
    assert_instance_of Customer, customer
  end

  def test_it_has_attributes
    customer = Customer.new("Alice", "Jones", "2")
    assert_equal "Alice Jones", customer.full_name
    assert_equal "2", customer.id
  end

  def test_dogs_is_empty_array_and_can_add
    doggie = Dog.new("Comet", "German Shepherd")
    customer = Customer.new("Alice", "Jones", "2")
    assert_equal [], customer.dogs

    customer.add_dog(doggie)
    assert_equal [doggie], customer.dogs
  end
end
