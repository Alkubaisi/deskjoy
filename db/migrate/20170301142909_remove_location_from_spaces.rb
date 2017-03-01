class RemoveLocationFromSpaces < ActiveRecord::Migration[5.0]
  def change
    remove_column :spaces, :location, :string
    change_column :spaces, :address, :string
  end
end
