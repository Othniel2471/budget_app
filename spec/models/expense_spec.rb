require 'rails_helper'

RSpec.describe Expense, type: :model do
  let(:user) { User.create(name: 'Test User', email: 'user@test.com', password: 'password') }

  it 'is valid with valid attributes' do
    expense = Expense.new(name: 'Test Expense', amount: 10.00, author: user)
    expect(expense).to be_valid
  end

  it 'is not valid without a name' do
    expense = Expense.new(amount: 10.00, author: user)
    expect(expense).to_not be_valid
  end

  it 'is not valid without an amount' do
    expense = Expense.new(name: 'Test Expense', author: user)
    expect(expense).to_not be_valid
  end

  it 'is not valid with a negative amount' do
    expense = Expense.new(name: 'Test Expense', amount: -10.00, author: user)
    expect(expense).to_not be_valid
  end

  it 'is valid with a zero amount' do
    expense = Expense.new(name: 'Test Expense', amount: 0, author: user)
    expect(expense).to be_valid
  end
end
