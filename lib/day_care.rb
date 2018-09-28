class DayCare
  attr_reader     :customer_list

  def initialize(place)
    @customer_list    = []
  end

  def add_customer(new_cust)
    @customer_list << new_cust
  end

  def list_dogs
    new_list = []
    @customer_list.find_all do |cust|
      cust.dogs.find_all do |c|
        new_list << c.name
      end
    end
    p new_list.join(", ")
  end

  # def unfed_dogs
  #   unfed_list = []
  #   @customer_list.find_all do |cust|
  #     cust.dogs.find_all do |c|
  #       unfed_list << c.feed == 0
  #       require 'pry'; binding.pry
  #     end
  #   end
  #   p unfed_list
  # end

end
