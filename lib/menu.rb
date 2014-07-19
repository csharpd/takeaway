class Menu

  attr_reader :dishes

  def initialize(dishes=[])
    @dishes = dishes
  end

  def has_dishes?
    @dishes.any?
  end

  def add(dish)
    dishes << dish
  end

  def print
    dishes.each{|dish| puts dish.name + ": £" + dish.price.to_s}
  end
end