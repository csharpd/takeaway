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

  def show
    dishes.map{ |dish| "#{dish[:name].to_s.capitalize}: £#{dish[:price]}" }.join("\n")
  end

  def order(dish,quantity)

  end

end