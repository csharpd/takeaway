require 'customer'

describe 'Customer' do

let(:hungrygirl) {Customer.new("Chloe")}

  context 'creating the customer' do
    it 'the customer is initialised with a name' do
      expect(hungrygirl.name).to eq "Chloe"
    end

    it 'the customer is initialised with a default number' do
      expect(hungrygirl.number).to eq 333
    end

    it 'the customer can provide a real number' do
      hungryguy = Customer.new("Felix","07832367439")
      expect(hungryguy.number).to eq "07832367439"
    end

    it 'customers shopping cart is empty when initialized' do
    expect(hungrygirl.shoppingcart.count).to eq 0
    end
  end

  context 'ordering' do
    it 'the customer can access the menu' do
      menu = double :menu
      expect(menu).to receive(:show)
      hungrygirl.view(menu)
    end

    it' the customer can add a dish to their shoppingcart ' do
      pasta = double :dish
      hungrygirl.select(pasta,2)
      expect(hungrygirl.shoppingcart).to eq [pasta, pasta]
    end



  end
end