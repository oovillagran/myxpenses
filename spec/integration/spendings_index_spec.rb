# spec/integration/spendings_index_spec.rb
require 'rails_helper'

RSpec.feature 'Spendings Index Page', type: :feature do
  before do
    @user = User.create(name: 'Test User', email: 'test@example.com', password: 'password')
    @group1 = Group.create(name: 'Category 1', user: @user)
    @group2 = Group.create(name: 'Category 2', user: @user)
    @spending1 = Spending.create(name: 'Transaction 1', amount: 50.00, user: @user, group: @group1)
    @spending2 = Spending.create(name: 'Transaction 2', amount: 30.00, user: @user, group: @group1)

    # Sign in the user
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: 'password'
    click_button 'Log in'

    visit root_path

    visit user_group_spendings_path(@user, @group1)
  end

  scenario 'displays the page header' do
    expect(page).to have_content("Transactions #{@group1.name}")
  end

  scenario 'displays existing transactions' do
    expect(page).to have_content('Transaction 1')
    expect(page).to have_content('Transaction 2')
  end

  scenario 'displays total spending for the group' do
    expect(page).to have_content('$80.00')
  end

  scenario 'displays "There are no transactions yet." when no transactions exist' do
    Spending.destroy_all

    visit user_group_spendings_path(@user, @group1)

    expect(page).to have_content('There are no transactions yet.')
  end

  scenario 'redirects to the new transaction form' do
    click_button('Add New Transaction')

    expect(page).to have_current_path(new_user_group_spending_path(@user, @group1))
  end
end
