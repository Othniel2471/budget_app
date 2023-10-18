require 'rails_helper'

RSpec.describe ExpenseCategory, type: :model do
  let(:user) { User.create(name: 'Test User', email: 'user@test.com', password: 'password') }
  let(:category) { Category.create(name: 'Test Category', icon: 'test icon', user:) }
  let(:expense) { Expense.create(name: 'Test Expense', amount: 10.00, author: user) }

  it 'is valid with valid attributes' do
    expense_category = ExpenseCategory.new(expense:, category:)
    expect(expense_category).to be_valid
  end

  it 'is not valid without an expense' do
    expense_category = ExpenseCategory.new(category:)
    expect(expense_category).to_not be_valid
  end

  it 'is not valid without a category' do
    expense_category = ExpenseCategory.new(expense:)
    expect(expense_category).to_not be_valid
  end
end
