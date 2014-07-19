class Menu

  attr_reader :dishes

  def initialize(dishes=[])
    @dishes = dishes
  end

  def has_dishes?
    @dishes.any?
  end

  def show
    puts"#{dishes[:name].to_s} : £#{dishes[:price]}"
  end

end