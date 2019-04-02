class EditHouseId < ActiveRecord::Migration[5.2]
  def change
    change_column :persons, :house_id, :integer, null: false
  end
end
