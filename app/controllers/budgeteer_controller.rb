class BudgeteerController < ApplicationController
  def create
    budget = Budgeteer.new(params['budgeteer']) if params['budgeteer'].present?
    returnStatus = budget.save ? {success: true} : {error: true, message: budget.errors.full_messages}
    render json: returnStatus
  end

  def index
  end

  def get_budgets
    budgets  = Budgeteer.all
    presenter = Budgeteer::Presenter.new(budgets).render
    render json: presenter
  end

end
