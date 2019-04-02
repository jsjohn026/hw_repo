class AddHouseId < ActiveRecord::Migration[5.2]
  def change
    add_column :persons, :house_id, :integer
  end
end
