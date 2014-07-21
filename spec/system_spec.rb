require 'system'

describe 'System' do
  let(:order)    {double :order}
  let(:menu)     {double :menu, dishes: [nachos, burito]}
  let(:system)   {System.new(menu)}
  let(:nachos)   {double :nachos, price: 5.50}
  let(:burito)   {double :burito, price: 8}

   it 'is initialized with a menu containing available dishes' do
    expect(system.menu.dishes).to eq [nachos, burito]

  end

  it 'have a orders container empty when created' do
    expect(system.orders).to eq []
  end

  it 'can add order to the orders container' do
    system.add(order)
    expect(system.orders).to eq [order]
  end

  it 'prepares text message to be send' do
    order = double :order
    expect(system).to receive(:calculate_delivery_time).with(order)
    system.text_message_for(order)
  end

  it 'places the whole order and notifies the customer with a text' do
    customer = double :customer, number: '+447832367439'
    order = double :order, customer: customer, time: 1752
    expect(system).to receive(:send_text).with(order.customer.number, system.text_message_for(order))
    system.place(order)
  end

  it 'calculates the estimated time of delivery' do
    order = double :order, time: 1752
    expect(order).to receive(:time).and_return(1852)
    system.calculate_delivery_time(order)
  end

end