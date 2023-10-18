require 'rails_helper'

RSpec.describe 'Categories index page', type: :feature do
  let(:user) { User.create(name: 'otsama', email: 'test@test.com', password: '121212') }

  before :each do
    user.confirm
    visit new_user_session_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
  end

  describe 'index page' do
    before :each do
      # Create a category for the user
      @category = Category.create(name: 'Sample Category', icon: 'icon test', user:)
    end

    it 'shows the categories' do
      visit categories_path
      expect(page).to have_content('Sample Category')
    end

    it 'shows category name' do
      visit categories_path
      expect(page).to have_content(@category.name)
    end

    it 'shows category icon' do
      visit categories_path
      expect(page).to have_content(@category.icon)
    end
  end
end
