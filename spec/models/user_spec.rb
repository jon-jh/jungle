require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    it 'is valid with a password and password_confirmation' do
      user = User.new(password: 'password', password_confirmation: 'password')
      expect(user).to be_valid
    end

    it 'is not valid without a password' do
      user = User.new(password: nil, password_confirmation: 'password')
      expect(user).not_to be_valid
      expect(user.errors.full_messages).to include("Password can't be blank")
    end

    it 'is not valid without a password_confirmation' do
      user = User.new(password: 'password', password_confirmation: nil)
      expect(user).not_to be_valid
      expect(user.errors.full_messages).to include("Password confirmation can't be blank")
    end

    it 'is not valid when password and password_confirmation do not match' do
      user = User.new(password: 'password', password_confirmation: 'different')
      expect(user).not_to be_valid
      expect(user.errors.full_messages).to include("Password confirmation doesn't match Password")
    end
  end
end
