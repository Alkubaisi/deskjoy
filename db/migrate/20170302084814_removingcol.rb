class Removingcol < ActiveRecord::Migration[5.0]
  def change
    remove_column :spaces, :name
    change_column :spaces, :address, :text
  end
end
