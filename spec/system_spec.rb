require 'system'

describe 'System' do
  let(:order)    {double :order}
  let(:menu)     {double :menu, dishes: [nachos, burito]}
  let(:system)   {System.new(menu)}
  let(:nachos)   {double :nachos, price: 5.50}
  let(:burito)   {double :burito, price: 8}

   it 'has a menu that contains dishes when created' do
    expect(system.menu.dishes).to eq [nachos, burito]

  end

  it 'have a orders container empty when created' do
    expect(system.orders).to eq []
  end

  it 'can add order to the orders container' do
    system.add(order)
    expect(system.orders).to eq [order]
  end

  it 'place order and notifies with sms' do
    customer = double :customer, number: '+447832367439'
    order = double :order, customer: customer, time: 1752
    expect(system).to receive(:send_text).with(order.customer.number, system.text_message_for(order))
    system.place(order)
  end

  it 'prepares txt message to be send' do
    order = double :order
    expect(system).to receive(:calculate_delivery_time).with(order)
    system.text_message_for(order)

  end

  it 'calculates the future delivery time' do
    order = double :order, time: 1752
    expect(order).to receive(:time).and_return(1852)
    system.calculate_delivery_time(order)
  end

  # it 'records the order after it was placed successfuly' do
  # end

end