class BookingsController < ApplicationController




def new
    @booking = Booking.new
       @space = Space.find(params[:space_id])
  end

  def create
    @booking = Booking.new(bookibng_params)
    @booking.user = current_user
    if @booking.save
      redirect_to dashboard, notice: 'Booking was successfully created.'
    else
      render :new
    end
  end


  private
    def booking_params
    params.require(:booking).permit(:start_date, :end_tdate, :table_id)
  end



end
