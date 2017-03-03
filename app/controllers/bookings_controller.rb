class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard_path, notice: 'Booking was successfully created.'
    else
      # render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :table_id)
  end
end
