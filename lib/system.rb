require_relative 'send_text'

class System

  attr_accessor :menu, :orders

  def initialize(menu)
    @menu = menu
    @orders ||=[]
  end

  def add(order)
    orders << order
  end

  def text_message_for(order)
     "Thank you! Your takeaway order has been placed and will be delivered before #{calculate_delivery_time(order)}, otherwise - it's on us!"
  end

  def calculate_delivery_time(order)
    time = order.time + 3600
    time.to_s.split(" ").[]1
  end

  def place(order)
    add(order)
    send_text(order.customer.number, text_message_for(order))
  end

end