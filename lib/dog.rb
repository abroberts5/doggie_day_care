class Dog
  attr_reader       :name,
                    :breed,
                    :feed

  def initialize(name, breed)
    @name         = name
    @breed        = breed
    @feed         = false
  end

  def fed?
    @feed
  end

  def feed
    "Yum!"
  end
end
