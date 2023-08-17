require 'rails_helper'

RSpec.describe GroupsController, type: :request do
  include Devise::Test::IntegrationHelpers

  describe 'GET #index' do
    before do
      @user = User.create(name: 'test', email: 'test@test.com', password: '123456')
      login_as(@user, scope: :user)
      @group = Group.create(name: 'Sample Group', icon: 'icon.png', user: @user)
    end

    it 'displays user groups' do
      get user_groups_path(@user)
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #new' do
    before do
      @user = User.create(name: 'test', email: 'test@test.com', password: '123456')
      login_as(@user, scope: :user)
    end

    it 'renders new group form' do
      get new_user_group_path(@user)
      expect(response).to render_template(:new)
    end
  end

  describe 'POST #create' do
    before do
      @user = User.create(name: 'test', email: 'test@test.com', password: '123456')
      login_as(@user, scope: :user)
    end

    it 'creates a new group' do
      group_params = { group: { name: 'New Group', icon: 'new_icon.png' } }

      post user_groups_path(@user), params: group_params
    end

    it 'renders new template if creation fails' do
      invalid_group_params = { group: { name: '', icon: 'new_icon.png' } }

      get new_user_group_path(@user), params: invalid_group_params
    end
  end

  describe 'DELETE #destroy' do
    before do
      @user = User.create(name: 'test', email: 'test@test.com', password: '123456')
      login_as(@user, scope: :user)
    end

    it 'destroys a group' do
      group = Group.create(name: 'Sample Group', icon: 'icon.png', user: @user)

      delete user_group_path(@user, group)
    end
  end
end
