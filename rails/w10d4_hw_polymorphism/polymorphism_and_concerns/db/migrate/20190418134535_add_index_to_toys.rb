class AddIndexToToys < ActiveRecord::Migration[5.1]
  def change
    
  end

  add_index :toys, :name, unique: true
end
