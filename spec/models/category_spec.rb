require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:user) { User.create(name: 'Test User', email: 'user@test.com', password: 'password') }

  it 'is valid with valid attributes' do
    category = Category.new(name: 'Test Category', icon: 'test icon', user:)
    expect(category).to be_valid
  end

  it 'is not valid without a name' do
    category = Category.new(icon: 'test icon', user:)
    expect(category).to_not be_valid
  end

  it 'has a name' do
    category = Category.new(name: 'Test Category', icon: 'test icon', user:)
    expect(category).to be_valid
  end

  it 'is not valid without an icon' do
    category = Category.new(name: 'Test Category', user:)
    expect(category).to_not be_valid
  end
end
