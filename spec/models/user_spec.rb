require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'create' do
    it 'should create a valid user' do
      user = User.create(name: 'John Doe', email: 'john@example.com', password: 'password')
      expect(user.valid?).to be(true)
    end
  end

  describe 'spendings' do
    it 'should have many spendings' do
      user = User.new
      expect(user.spendings).to eq([])
    end
  end

  describe 'groups' do
    it 'should have many groups' do
      user = User.new
      expect(user.groups).to eq([])
    end
  end
end
