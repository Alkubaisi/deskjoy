class Tableedit < ActiveRecord::Migration[5.0]
  def change
    remove_column :tables, :title
    remove_column :tables, :description
    add_column :tables, :start_date, :string
    add_column :tables, :end_date, :string

  end
end
