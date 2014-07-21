require 'system'

describe 'system' do
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


  it 'confirms the order by text once places' do
    order = double :order
    expect(system).to receive(:calculate_delivery_time).with(order)
    system.confirm_by_text(order)

  end

  it 'calculates the future delivery time' do
    order = double :order, time: 1752
    expect(order).to receive(:time).and_return(1852)
    system.calculate_delivery_time(order)
  end

  # it 'records the order after it was placed successfuly' do
  # end

end