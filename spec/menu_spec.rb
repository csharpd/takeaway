require 'menu'

describe 'Menu' do
  it 'should be initialised with no dishes' do
    menu = Menu.new
    expect(menu).not_to have_dishes
  end

  it 'can have dishes when initialized' do
    menu = Menu.new([{name: :sushi, price: 4}])
    expect(menu).to have_dishes
  end

  it 'can display the dishes it is initialized with' do
    menu = Menu.new([{name: :sushi, price: 4}])
    expect(menu.show).to eq "Sushi: £4"
  end
end