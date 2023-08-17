require 'rails_helper'

RSpec.feature 'Groups Index Page', type: :feature do
  before do
    @user = User.create(name: 'Test User', email: 'test@example.com', password: 'password')
    @group1 = Group.create(name: 'Category 1', icon: 'icon1', user: @user)
    @group2 = Group.create(name: 'Category 2', icon: 'icon2', user: @user)

    # Sign in the user
    visit new_user_session_path
    fill_in 'Email', with: @user.email
    fill_in 'Password', with: 'password'
    click_button 'Log in'

    visit root_path

    visit user_groups_path(@user)
  end

  scenario 'displays the page header' do
    expect(page).to have_content('Categories')
  end

  scenario 'displays existing categories' do
    expect(page).to have_content('Category 1')
    expect(page).to have_content('Category 2')
  end

  scenario 'displays total spending for each category' do
    expect(page).to have_content('$ 0.00', count: 2) # Assuming there are no spendings initially
  end

  scenario 'displays "There are no categories yet." when no categories exist' do
    Group.destroy_all

    visit user_groups_path(@user)

    expect(page).to have_content('There are no categories yet.')
  end

  scenario 'redirects to the new category form' do
    click_button('Add New Category')

    expect(page).to have_current_path(new_user_group_path(@user))
  end
end
