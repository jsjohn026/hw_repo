class CreatePersonsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :persons do |t|
      t.string :name, null: false
      t.timestamps
      t.integer :house_id, null: false
    end
  end
end
