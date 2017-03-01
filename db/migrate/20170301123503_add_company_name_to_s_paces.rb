class AddCompanyNameToSPaces < ActiveRecord::Migration[5.0]
  def change
    add_column :spaces, :company_name, :string
    add_column :tables, :desk_type, :string

  end
end
