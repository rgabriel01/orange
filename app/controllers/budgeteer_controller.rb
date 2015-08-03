class BudgeteerController < ApplicationController
  def create
    budget = Budgeteer.new(params['budgeteer']) if params['budgeteer'].present?
    returnStatus = budget.save ? {success: true} : {error: true, message: budget.errors.full_messages}
    render json: returnStatus
  end

  def index
  end

  def get_budgets
    budgets  = Budgeteer.order('created_at desc').all
    render json: Budgeteer::Presenter.new(budgets).render
  end

end
