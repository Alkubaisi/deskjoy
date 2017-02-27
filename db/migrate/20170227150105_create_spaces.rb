class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.string :address
      t.string :industry
      t.string :location
      t.text :company_info
      t.boolean :reciption
      t.boolean :security
      t.boolean :event_space
      t.boolean :bike_storage
      t.boolean :phone_booth
      t.boolean :kitchen
      t.boolean :lockers
      t.boolean :cafe_restaurant
      t.boolean :showers
      t.boolean :meeting_room
      t.boolean :hours
      t.boolean :wifi
      t.boolean :refreshment

      t.timestamps
    end
  end
end
