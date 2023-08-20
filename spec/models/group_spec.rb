require 'rails_helper'

RSpec.describe Group, type: :model do
  let(:user) { User.create(name: 'John Doe', email: 'john@example.com', password: 'password') }

  describe 'validations' do
    it 'validates presence of name' do
      group = Group.new(icon: '🛒')
      expect(group).not_to be_valid
      expect(group.errors[:name]).to include("can't be blank")
    end

    it 'validates presence of icon' do
      group = Group.new(name: 'Groceries')
      expect(group).not_to be_valid
      expect(group.errors[:icon]).to include("can't be blank")
    end
  end

  describe 'associations' do
    it 'belongs to user' do
      association = Group.reflect_on_association(:user)
      expect(association.macro).to eq(:belongs_to)
    end

    it 'has many spendings dependent destroy' do
      association = Group.reflect_on_association(:spendings)
      expect(association.macro).to eq(:has_many)
      expect(association.options[:dependent]).to eq(:destroy)
    end
  end
end
