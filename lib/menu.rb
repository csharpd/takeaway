class Menu

  attr_accessor :dishes

  def initialize(dishes=[])
    @dishes = dishes
  end

  def has_dishes?
    @dishes.any?
  end

  def add(dish)
    dishes << dish
  end

  def select(dish_name)
    dishes.select{|dish| dish.name == dish_name}.first
  end

end