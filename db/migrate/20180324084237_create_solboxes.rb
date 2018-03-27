class CreateSolboxes < ActiveRecord::Migration
  def change
    create_table :solboxes do |t|
      t.string :customer
      t.integer :battery_size
      t.integer :panel_size

      t.timestamps null: false
    end
  end
end
