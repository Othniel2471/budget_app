class ExpensesController < ApplicationController
  before_action :set_Expense, only: %i[show edit update destroy]
  before_action :category_params, only: %i[destroy]

  # GET /Expenses or /Expenses.json
  def index
    @expenses = Expense.all
  end

  # GET /Expenses/1 or /Expenses/1.json
  def show; end

  # GET /Expenses/new
  def new
    @expense = Expense.new
    @user_categories = Category.where(user_id: current_user.id)
  end

  # GET /Expenses/1/edit
  def edit; end

  # POST /Expenses or /Expenses.json
  def create
    params = expense_params

    @expense = Expense.new(name: params[:name], amount: params[:amount])
    @expense.author = current_user # Set the author to the current user

    category_ids = params[:category_ids]
    category_ids.each do |id|
      category = Category.find(id) unless id == ''
      @expense.categories.push(category) unless category.nil?
    end

    respond_to do |format|
      if @expense.save
        format.html { redirect_to categories_url, notice: 'Expense was successfully created.' }
        format.json { render :show, status: :created, location: @expense }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Expenses/1 or /Expenses/1.json
  def update
    respond_to do |format|
      if @expense.update(expense_params)
        format.html { redirect_to Expense_url(@expense), notice: 'Expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Expenses/1 or /Expenses/1.json
  def destroy
    @expense.destroy
    @category = category_params

    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_Expense
    @Expense = Expense.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def expense_params
    params.require(:expense).permit(:name, :amount, category_ids: [])
  end

  def category_params
    params.permit(:id)
  end
end
