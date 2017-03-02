class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit]

  def index
    @spaces = Space.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @space = Space.new
  end

  def edit
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
    params.require(:space).permit(:address, :industry, :company_info, :reciption, :security, :event_space, :bike_storage, :phone_booth, :kitchen, :lockers, :cafe_restaurant, :showers, :meeting_room, :hours, :wifi, :refreshment, photos: [])
  end
end
