class AddInfoToSpaces < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :city, :string
    add_column :spaces, :postcode, :string
  end
end
