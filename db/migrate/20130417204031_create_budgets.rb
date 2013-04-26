class CreateBudgets < ActiveRecord::Migration
  def change
    create_table :budgets do |t|
      t.string :name
      t.string :number
      t.date :starts_at
      t.date :ends_at

      t.timestamps
    end
  end
end
