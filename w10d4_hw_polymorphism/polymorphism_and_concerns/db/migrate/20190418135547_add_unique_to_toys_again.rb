class AddUniqueToToysAgain < ActiveRecord::Migration[5.1]
  def change
    change_column :toys, :name, :string, unique: true
  end
end
