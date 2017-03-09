class ChangeTypeTimesBookings < ActiveRecord::Migration[5.0]
  def change
    remove_column :bookings, :start_date, :string
    remove_column :bookings, :end_date, :string
    add_column :bookings, :start, :date
    add_column :bookings, :end, :date
  end
end
