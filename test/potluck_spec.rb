require './lib/dish'
require './lib/potluck'
require 'rspec'

describe Potluck do
  let(:candy_salad) { Dish.new("Candy Salad", :dessert) }
  let(:cocktail_meatballs) { Dish.new("Cocktail Meatballs", :entre) }
  let(:couscous_salad) { Dish.new("Couscous Salad", :appetizer) }
  let(:potluck) { Potluck.new("7-13-18") }
  let(:roast_pork) { Dish.new("Roast Pork", :entre) }
  let(:summer_pizza) { Dish.new("Summer Pizza", :appetizer) }
  let(:bean_dip) { Dish.new("Bean Dip", :appetizer) }

  describe '#initialize' do
    it 'exists and has attributes' do
    # potluck = Potluck.new("7-13-18")

    expect(potluck).to be_a(Potluck)
    expect(potluck.date).to eq("7-13-18")
    expect(potluck.dishes).to eq([])
    end
  end

  describe '#add_dish' do
    it 'adds dishes' do
    # potluck = Potluck.new("7-13-18")
    # couscous_salad = Dish.new("Couscous Salad", :appetizer)
    # cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
  
    potluck.add_dish(couscous_salad)
    potluck.add_dish(cocktail_meatballs)

    expect(potluck.dishes).to eq([couscous_salad, cocktail_meatballs])
    expect(potluck.dishes.length).to eq(2)
    end
  end

  
  describe '#menu' do
    it 'menu' do
      potluck.add_dish(couscous_salad)
      potluck.add_dish(summer_pizza)
      potluck.add_dish(roast_pork)
      potluck.add_dish(cocktail_meatballs)
      potluck.add_dish(candy_salad)
      potluck.add_dish(bean_dip)

      expected_result = {
        :appetizers=>["Bean Dip", "Couscous Salad", "Summer Pizza"],
        :entres=>["Cocktail Meatballs", "Roast Pork"],
        :desserts=>["Candy Salad"]
      }
  
      expect(potluck.menu).to eq(expected_result)
      expect(potluck.ratio(:appetizer)).to eq(50.0)
    end
  end
end