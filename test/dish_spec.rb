require './lib/dish'
require 'rspec'

describe Dish do
  let(:dish) { Dish.new("Couscous Salad", :appetizer) }

  describe '#initialize' do
    it 'exists and has attributes' do
    expect(dish).to be_a(Dish)
    expect(dish.name).to eq("Couscous Salad")
    expect(dish.category).to eq(:appetizer)
    end
  end
end