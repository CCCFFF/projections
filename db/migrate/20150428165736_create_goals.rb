class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.date :start_date
      t.date :end_date
      t.text :description

      t.timestamps
    end
  end
end
