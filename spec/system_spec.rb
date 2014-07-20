require 'system'

describe 'system' do
  let(:order)    {double :order}
  let(:menu)     {double :menu, dishes: [nachos]}
  let(:system)   {System.new(menu)}
  let(:nachos)   {double :nachos, price: 5.50}
  let(:burito)   {double :burito, price: 8}

   it 'has a menu that contains dishes when created' do
    expect(system.menu.dishes).to eq [nachos]

  end

  it 'have a orders container empty when created' do
    expect(system.orders).to eq []
  end

  it 'can add order to the orders container' do
    system.add(order)
    expect(system.orders).to eq [order]
  end

  # it 'place order and notifies with sms' do

  # end

  # it 'prepares the text to be send in the sms' do

  # end

  # it 'calculates the future delivery time' do

  # end

  # it 'records the order after it was placed successfuly' do
  # end

end