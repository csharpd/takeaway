class Dish

attr_reader :name, :price

  def initialize(name, price = "Not Available")
    @name = name
    @price = price
  end


end