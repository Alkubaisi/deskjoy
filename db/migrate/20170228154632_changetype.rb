class Changetype < ActiveRecord::Migration[5.0]
  def change
    change_column :spaces, :address, :text
  end
end
