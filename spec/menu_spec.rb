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

  it 'can print the dish name in the menu' do
    curry = double :dish, name: "Vindaloo", price: 5
    menu = Menu.new([curry])
    expect(curry).to receive(:name).and_return("Vindaloo")
    menu.print
  end

  it 'can print the dish price in the menu' do
    curry = double :dish, name: "Vindaloo", price: 5
    menu = Menu.new([curry])
    expect(curry).to receive(:price).and_return(5)
    menu.print
  end

  # it 'the output of printing the menu looks great!' do
  #   curry = double :dish, name: "Vindaloo", price: 5
  #   menu = Menu.new([curry])
  #   expect(menu.print).to eq "Vindaloo: £5"
  #   menu.print
  # end



end