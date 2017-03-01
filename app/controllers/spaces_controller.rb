class SpacesController < ApplicationController
  def index
    @spaces = Space.all
  end

  def new
    @space = Space.new
  end
  
  def edit
    set_space
  end

  def show
    set_space
  end
  
  def create
    @space = Space.new(space_params)
    @space.user = current_user
    if @space.save
      redirect_to @space, notice: 'Space was successfully created.'
    else
      render :new
  end

  private
    
  # Use callbacks to share common setup or constraints between actions.
  def set_space
    @space = Space.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def space_params
    params.require(:space).permit(:name, :address, :industry, :location, :company_info, :reciption, :security, :event_space, :bike_storage, :phone_booth, :kitchen, :lockers, :cafe_restaurant, :showers, :meeting_room, :hours, :wifi, :refreshment, photos: [])
  end
end
