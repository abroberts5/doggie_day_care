require 'minitest/autorun'
require 'minitest/pride'
require './lib/dog'
require './lib/customer'
require './lib/day_care'

class DayCareTest < Minitest::Test
  def test_it_exists
    day_care = DayCare.new("The Dog Spot")
    assert_instance_of DayCare, day_care
  end

  def test_it_can_add_customer_as_well
    doggie_1 = Dog.new("Comet", "German Shepherd")
    doggie_2 = Dog.new("Lassie", "Collie")
    doggie_3 = Dog.new("Martha", "Bernese Mountain Dog")
    customer_1 = Customer.new("Alice", "Jones", "2")
    customer_2 = Customer.new("Tracy", "Nguyen", "5")
    day_care = DayCare.new("The Dog Spot")

    customer_1.add_dog(doggie_1)
    customer_2.add_dog(doggie_2)
    customer_2.add_dog(doggie_3)

    day_care.add_customer(customer_1)
    day_care.add_customer(customer_2)

    assert_equal [customer_1, customer_2], day_care.customer_list
  end

  def test_it_can_list_dogs
    doggie_1 = Dog.new("Comet", "German Shepherd")
    doggie_2 = Dog.new("Lassie", "Collie")
    doggie_3 = Dog.new("Martha", "Bernese Mountain Dog")
    customer_1 = Customer.new("Alice", "Jones", "2")
    customer_2 = Customer.new("Tracy", "Nguyen", "5")
    day_care = DayCare.new("The Dog Spot")

    customer_1.add_dog(doggie_1)
    customer_2.add_dog(doggie_2)
    customer_2.add_dog(doggie_3)

    day_care.add_customer(customer_1)
    day_care.add_customer(customer_2)

    assert_equal "Comet, Lassie, Martha", day_care.list_dogs
  end

  def test_it_has_list_of_unfed_dogs
    doggie_1 = Dog.new("Comet", "German Shepherd")
    doggie_2 = Dog.new("Lassie", "Collie")
    doggie_3 = Dog.new("Martha", "Bernese Mountain Dog")
    customer_1 = Customer.new("Alice", "Jones", "2")
    customer_2 = Customer.new("Tracy", "Nguyen", "5")
    day_care = DayCare.new("The Dog Spot")

    customer_1.add_dog(doggie_1)
    customer_2.add_dog(doggie_2)
    customer_2.add_dog(doggie_3)

    day_care.add_customer(customer_1)
    day_care.add_customer(customer_2)

    assert_equal [doggie_1, doggie_2, doggie_3], day_care.unfed_dogs
    assert_equal "Yum!", doggie_1.feed
    assert_equal [doggie_2, doggie_3], day_care.unfed_dogs
  end
end
