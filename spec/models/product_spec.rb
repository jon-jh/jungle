require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'saves successfully with all fields set' do
      category = Category.create(name: 'Test Category')
      product = Product.new(name: 'Test Product', price: 100, quantity: 10, category: category)
      expect(product).to be_valid
    end

    it 'is not valid without a name' do
      category = Category.create(name: 'Test Category')
      product = Product.new(name: nil, price: 100, quantity: 10, category: category)
      expect(product).not_to be_valid
      expect(product.errors.full_messages).to include("Name can't be blank")
    end

    it 'is not valid without a quantity' do
      category = Category.create(name: 'Test Category')
      product = Product.new(name: 'Test Product', price: 100, quantity: nil, category: category)
      expect(product).not_to be_valid
      expect(product.errors.full_messages).to include("Quantity can't be blank")
    end

    it 'is not valid without a category' do
      category = Category.create(name: 'Test Category')
      product = Product.new(name: 'Test Product', price: 100, quantity: 10, category: nil)
      expect(product).not_to be_valid
      expect(product.errors.full_messages).to include("Category can't be blank")
    end

    it 'is not valid without a price' do 
      category = Category.create(name: 'Test Category') 
      product = Product.new(name: 'Test Product', price_cents: nil, quantity: 10, category: category) 
      expect(product).not_to be_valid 
      expect(product.errors.full_messages).to include("Price cents can't be blank")
    end
  end
end
