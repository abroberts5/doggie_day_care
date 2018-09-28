class Customer
  attr_reader     :full_name,
                  :id,
                  :dogs

  def initialize(first, last, id)
    @full_name   = first + " " + last
    @id          = id
    @dogs        = []
  end

  def add_dog(dog)
    @dogs << dog
  end
end
