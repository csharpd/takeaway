require 'customer'

describe 'Customer' do

let(:hungrygirl) {Customer.new(name:"Chloe")}

  context 'Creating the customer' do
    it 'the customer is initialised with a name' do
      expect(hungrygirl.name).to eq "Chloe"
    end

    it 'the customer is initialised with a default number' do
      expect(hungrygirl.number).to eq '+447832367439'
    end

    it 'the customer can provide a number' do
      hungryguy = Customer.new(name:"Felix",number:"+447832367449")
      expect(hungryguy.number).to eq "+447832367449"
    end
  end
  context 'Ordering dishes' do
    it 'can add a dish to their order on the system' do
      order = double :order
      menu = double :menu
      system = double :system, menu: menu
      quantity = 5
      dish_name = "Sushi"
      sushi = double :sushi

      expect(order).to receive(:add).with(sushi,quantity)

      expect(menu).to receive(:select).with(dish_name).and_return(sushi)

      hungrygirl.add_dish_to(order, system, dish_name, quantity)
    end

    it 'can place their entire order' do
    order = double :order
    system = double :system
    estimate = 20

    expect(order).to receive(:place).with(system, estimate)
    hungrygirl.place(order, system, estimate)

    end
  end
end