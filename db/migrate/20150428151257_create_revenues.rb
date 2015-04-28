class CreateRevenues < ActiveRecord::Migration
  def change
    create_table :revenues do |t|
      t.string :category
      t.date :date
      t.float :amount

      t.timestamps
    end
  end
end
