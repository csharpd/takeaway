class Customer

attr_reader :name, :number, :shoppingcart

  def initialize(name, number=333,shoppingcart=[])
    @name = name
    @number = number
    @shoppingcart = shoppingcart
  end

  def view(menu)
    menu.show
  end

  def select(dish, quantity)
    quantity.times{ shoppingcart << dish }
  end

end

