class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.date :date
      t.string :category
      t.float :amount
      t.string :revenue

      t.timestamps
    end
  end
end
