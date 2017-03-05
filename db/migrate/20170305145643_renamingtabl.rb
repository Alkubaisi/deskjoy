class Renamingtabl < ActiveRecord::Migration[5.0]
  def change
    rename_column :tables, :start_date, :available
     rename_column :tables, :end_date, :not_available
  end
end
