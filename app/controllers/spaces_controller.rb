class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update]

  def index
    @spaces = Space.all
  end

  def show
    @booking = Booking.new
  end



  def edit
  end
  def update
    respond_to do |format|
      if @space.update(space_params)
        format.html { redirect_to @space, notice: 'space was successfully updated.' }
      else
        format.html { render :edit }

      end
    end
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save
      redirect_to @space, notice: 'Space was successfully created.'
    else
      render :new
    end
  end

  private

  def set_space
    @space = Space.find(params[:id])
  end

  def space_params
<<<<<<< HEAD
    params.require(:space).permit(:address, :industry, :company_info, :reciption, :security, :event_space, :bike_storage, :phone_booth, :kitchen, :lockers, :cafe_restaurant, :showers, :meeting_room, :hours, :wifi, :refreshment, photos: [])
=======
    params.require(:space).permit(:company_name, :address, :industry, :company_info, :reciption, :security, :event_space, :bike_storage, :phone_booth, :kitchen, :lockers, :cafe_restaurant, :showers, :meeting_room, :hours, :wifi, :refreshment, photos: [])
>>>>>>> f091e429d301ac65c993e1cf8f532a8eb975acb3
  end
end
