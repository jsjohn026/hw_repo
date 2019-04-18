class AddUniqueToToys < ActiveRecord::Migration[5.1]
  def change
    change_column :toys, :name, :string, unqiue: true
  end
end
