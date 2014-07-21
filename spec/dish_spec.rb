require 'dish'

describe 'Dish' do
  it 'initalized with a name' do
    japanese_dish = Dish.new("Jelly Fish")
    expect(japanese_dish.name).to eq "Jelly Fish"
    expect(japanese_dish.price).to eq "Not Available"
  end

 it 'initalized with a price' do
    japanese_dish = Dish.new("Sushi",3)
    expect(japanese_dish.price).to eq 3
  end

end