class Budgeteer < ActiveRecord::Base
  attr_accessible :amount, :description, :entry_date
end
