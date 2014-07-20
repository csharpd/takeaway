class System

  attr_accessor :menu, :orders

  def initialize(menu)
    @menu = menu
    @orders ||=[]
  end

  def add(order)
    orders << order
  end

end