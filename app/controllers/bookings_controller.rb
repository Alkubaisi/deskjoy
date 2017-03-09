class BookingsController < ApplicationController

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @space = Space.find(params[:space_id])
    @booking = Booking.new(booking_params)
    @booking.state = "pending"
    @booking.user = current_user
    @booking.price_pennies = (@booking.end - @booking.start).to_i * @booking.table.price * 100
    if @booking.save
      redirect_to new_space_booking_payment_path(@space, @booking)
    else
      redirect_to :back, notice: 'There was an error creating your booking!'
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start, :end, :table_id)
  end
end
