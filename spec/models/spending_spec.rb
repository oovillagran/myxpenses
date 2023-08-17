require 'rails_helper'

RSpec.describe Spending, type: :model do
  describe 'associations' do
    it 'should belong to a user and a group' do
      user = User.create(name: 'John Doe', email: 'john@example.com', password: 'password')
      group = Group.create(name: 'Sample Group', icon: 'icon.png', user:)
      spending = Spending.new(name: 'Expense 1', amount: 50.00, user:, group:)

      expect(spending.valid?).to be true
      expect(spending.user).to eq(user)
      expect(spending.group).to eq(group)
    end
  end
end
