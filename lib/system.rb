class System

  attr_accessor :menu, :orders

  def initialize(menu)
    @menu = menu
    @orders ||=[]
  end

  def add(order)
    orders << order
  end

  def confirm_by_text(order)
     "Thank you! Your order was placed and will be delivered before #{calculate_delivery_time(order)}"
  end

  def calculate_delivery_time(order)
    time = order.time + 3600
    time.to_s.split(" ").[]1
  end

end