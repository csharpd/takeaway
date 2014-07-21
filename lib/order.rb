class Order

  attr_reader :customer
  attr_accessor :items_ordered, :time

  def initialize(customer)
    @customer = customer
    @items_ordered = []
    @time = time
  end

  def add(dish,quantity)
    quantity.times { items_ordered << dish}
  end

  def bill_breakdown
    items_ordered.map{|dish| dish.price }
  end

  def final_bill_amount
    bill_breakdown.inject(:+)
  end

  def place(system,estimate)
    raise "Your estimate is wrong. The final bill ammount for this order is #{final_bill_amount}" unless estimate == final_bill_amount
    @time = time_now
    system.place(self)
  end

  def time_now
    Time.now
  end
end