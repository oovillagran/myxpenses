require 'rails_helper'

RSpec.describe SpendingsController, type: :request do
  include Devise::Test::IntegrationHelpers

  describe 'GET #index' do
    before do
      @user = User.create(name: 'test', email: 'test@test.com', password: '123456')
      login_as(@user, scope: :user)
      @group = Group.create(name: 'Sample Group', icon: 'photo.png', user: @user)
      @spending = Spending.create(name: 'Test', amount: 10.00, user: @user, group: @group)
    end

    it 'displays user spendings for a group' do
      get user_group_spendings_path(user_id: @spending.user_id, group_id: @spending.group_id)
      expect(response).to have_http_status(:success)
      expect(response.body).to include('Test')
    end
  end
end
