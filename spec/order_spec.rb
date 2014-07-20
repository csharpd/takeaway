require 'order'

describe 'order' do

  let(:customer){double :customer}
  let(:order){Order.new(customer)}
  let(:nachos){double :nachos, price: 5.50}

    it 'needs to be created with a customer attached to it' do
      expect(order.customer).to eq customer
    end

    it 'has a list of items ordered' do
      quantity = 2
      order.add(nachos,quantity)
      expect(order.items_ordered).to eq [nachos, nachos]
    end

    it 'has a list containing each price for every item ordered so far' do
      order.add(nachos,2)
      expect(order.bill_breakdown).to eq [5.50, 5.50]
    end

    it 'can produce a final bill total' do
      burito = double :burito, price: 8
      order.add(nachos,2)
      order.add(burito,4)
      expect(order.final_bill_amount).to eq 43
    end



end
