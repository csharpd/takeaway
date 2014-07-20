class Order

  attr_reader :customer
  attr_accessor :items_ordered

  def initialize(customer)
    @customer = customer
    @items_ordered = []
  end

  def add(dish,quantity)
    quantity.times { items_ordered << dish}
  end

  def bill_breakdown
    items_ordered.map{|dish| dish.price }
  end

  def final_bill_amount
    bill_breakdown.inject{|acc,num| acc + num}
  end
end