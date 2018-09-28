class Dog
  attr_reader       :name,
                    :breed,
                    :feed

  def initialize(name, breed)
    @name         = name
    @breed        = breed
    @feed         = 0
  end

  def fed?
    @feed >= 1
  end

  def feed
    @feed += 1
    p "Yum!"
  end
end
