require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with valid attributes' do
    expect(User.new(name: 'Test Name', email: 'test@gmail.com', password: 'password')).to be_valid
  end

  it 'is not valid without an email' do
    expect(User.new(name: 'Test Name', email: nil, password: 'password')).to_not be_valid
  end

  it 'has a name' do
    expect(User.new(name: 'Test Name', email: 'test@gmail.com', password: 'password')).to be_valid
  end
end
