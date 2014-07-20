require 'menu'

describe 'Menu' do

  let(:menu)    {Menu.new}

  it 'doesnt have dishes when initialised' do
    menu = Menu.new
    expect(menu).not_to have_dishes
  end

  it 'can contain dishes' do
    dish = :double
    menu = Menu.new([dish])
    expect(menu).to have_dishes
  end

  it 'can have dishes added to it' do
    meatballs = double :dish
    menu.add(meatballs)
    expect(menu.dishes).to eq ([meatballs])
  end

end