class CreateCables < ActiveRecord::Migration
  def change
    create_table :cables do |t|
      t.string :cable_identity
      t.integer :solbox_from_id, index: true
      t.integer :solbox_to_id, index: true
      t.integer :distance

      t.timestamps null: false
    end
  end
end
