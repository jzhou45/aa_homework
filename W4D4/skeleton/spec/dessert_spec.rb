require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef") }
  subject(:brownie) { Dessert.new("brownie", 50, chef) }
  
  describe "#initialize" do
    it "sets a type" do
      expect(brownie.type).to eq('brownie')
    end
    it "sets a quantity" do
      expect(brownie.quantity).to eq(50)
    end
    it "starts ingredients as an empty array" do
      expect (brownie.chef).to eq(chef)
    end
    it "raises an argument error when given a non-integer quantity" do
      expect { Dessert.new("brownie", "non-integer quantity", "chef") }.to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      expect(brownie.ingredients).to eq(["eggs"])
      add_ingredient("eggs")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      expect(brownie.ingredients).to_not eq(brownie.ingredients)
      mix!
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      expect(brownie.quantity).to eq(30)
      eat(20)
    end
    it "raises an error if the amount is greater than the quantity" do
      expect(brownie.eat(60)).to raise("not enough left!")
      brownie.eat(60)
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      expeect(brownie.chef).to eq(chef.capitalize)
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(brownie.make_more).to include(chef.bake)
    end
  end
end
