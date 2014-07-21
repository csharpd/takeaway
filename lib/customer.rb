class Customer

attr_reader :name
attr_accessor :number

  def initialize(name: nil, number: '+447832367439')
    @name = name
    @number = number
  end

  def add_dish_to(order,system,dish_name,quantity)
    order.add(system.menu.select(dish_name),quantity)
  end

  def place(order, system, estimate)
    order.place(system, estimate)
  end

end

