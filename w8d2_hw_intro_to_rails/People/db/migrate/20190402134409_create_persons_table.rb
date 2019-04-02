class CreatePersonsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :persons do |t|
      # same as if you had coded:
      # self.create_table(:persons_tables) do |table|
      # end
      # creates a sql table in database
      t.string :name, null: false
      t.timestamps
      
    end
  end
end
 