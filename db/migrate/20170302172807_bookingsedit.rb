class Bookingsedit < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :duration
    add_column :bookings, :start_date, :string
     add_column :bookings, :end_tdate, :string
  end
end
