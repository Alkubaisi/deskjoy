class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table :tables do |t|
      t.string :title
      t.text :description
      t.references :space, foreign_key: true
      t.integer :price

      t.timestamps
    end
  end
end
