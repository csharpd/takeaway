require 'menu'

describe 'Menu' do

  let(:menu)    {Menu.new}

  it 'doesnt have dishes when initialised' do
    menu = Menu.new
    expect(menu).not_to have_dishes
  end

  it 'can have dishes added to it' do
    meatballs = double :dish, name: "meatballs", price: "5.50"
    menu.add(meatballs)
    expect(menu.dishes).to eq ([meatballs])
  end

  it 'can have a dish selected from it' do
    meatballs = double :dish, name: "meatballs", price: "5.50"
    menu.add(meatballs)
    expect(menu.select("meatballs")).to eq meatballs
  end



end