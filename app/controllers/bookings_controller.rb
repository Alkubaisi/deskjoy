class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.price_pennies = (@booking.end - @booking.start).to_i * @booking.table.price * 100
    if @booking.save
      redirect_to dashboard_path, notice: 'Booking was successfully created.'
    else
      redirect_to dashboard_path, notice: 'There was an error creating your booking!'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start, :end, :table_id)
  end
end
