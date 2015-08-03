class CreateBudgeteers < ActiveRecord::Migration
  def change
    create_table :budgeteers do |t|
      t.string :description
      t.decimal :amount
      t.date :entry_date

      t.timestamps
    end
  end
end
