require 'order'

describe 'Order' do

  let(:customer)             {double :customer}
  let(:order)                {Order.new(customer)}
  let(:nachos)               {double :nachos, price: 5.50}
  let(:burito)               {double :burito, price: 8}

    it 'is created in conjunction with a customer' do
      expect(order.customer).to eq customer
    end

    it 'contains a list of items that the customer has selected from the menu' do
      quantity = 2
      order.add(nachos,quantity)
      expect(order.items_ordered).to eq [nachos, nachos]
    end

    it 'can generate a list containing each price for every item selected so far' do
      order.add(nachos,2)
      expect(order.bill_breakdown).to eq [5.50, 5.50]
    end

    it 'can produce a final bill total' do
      order.add(nachos,2)
      order.add(burito,4)
      expect(order.final_bill_amount).to eq 43
    end

    it 'places an order on the system with the list of dishes selected and the customers estimate of the final bill total' do
      quantity = 2
      order.add(nachos,quantity)
      order.add(burito,quantity)
      system = double :system
      estimate = 27

      expect(system).to receive(:place).with(order)

      order.place(system, estimate)
    end

    it 'raises an error if the estimate price differs from the real price' do
        quantity = 2
        order.add(nachos,quantity)
        order.add(burito,quantity)
        system = double :system
        estimate = 20

        allow(system).to receive(:place).with(order)

        expect{(order.place(system, estimate))}.to raise_error(RuntimeError)
    end

    it 'records the time that the order was placed' do
      expect(order.time_now).to be_an_instance_of(Time)
    end
end
