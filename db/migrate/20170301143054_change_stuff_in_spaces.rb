class ChangeStuffInSpaces < ActiveRecord::Migration[5.0]
  def change
    rename_column :spaces, :reciption, :reception
    rename_column :spaces, :hours, :always_open
  end
end
