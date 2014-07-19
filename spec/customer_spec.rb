require 'customer'

describe 'Customer' do

  context 'creating the customer' do
    it 'the customer is initialised with a name' do
      hungrygirl = Customer.new("Chloe")
      expect(hungrygirl.name).to eq "Chloe"
    end

     it 'the customer is initialised with a default number' do
      hungrygirl = Customer.new("Chloe")
      expect(hungrygirl.number).to eq 333
    end

     it 'the customer can provide a real number' do
      hungryguy = Customer.new("Felix","07832367439")
      expect(hungryguy.number).to eq "07832367439"
    end
  end

  context 'ordering' do
    it 'can ask to see a menu' do
      menu = double :menu
      hungrygirl = Customer.new("Chloe")
      expect(menu).to receive(:to_s)
      hungrygirl.requests_menu
    end
  end
end