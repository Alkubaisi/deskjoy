class ChaangePriceInbookings < ActiveRecord::Migration[5.0]
  def change
    rename_column :bookings, :price_cents, :price_pennies
  end
end
