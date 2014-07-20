class Customer

attr_reader :name, :number, :shoppingcart

  def initialize(name, number=333,shoppingcart=[])
    @name = name
    @number = number
    @shoppingcart = shoppingcart
  end

  def add_dish_to(order,system,dish_name,quantity)
    order.add(system.menu.select(dish_name),quantity)
  end

end

