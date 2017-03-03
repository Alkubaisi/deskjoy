class Useradding < ActiveRecord::Migration[5.0]
  def change
     add_column :users, :facebook, :string
     change_column :users, :info, :text
  end
end
