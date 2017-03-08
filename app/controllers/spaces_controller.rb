class SpacesController < ApplicationController
  before_action :set_space, only: [:show, :edit, :update]
  before_action :authenticate_user!, except: [:show, :index]

  def index
    @spaces = Space.all
    @spaces = @spaces.where(industry: params[:industry]) if (params[:industry] && params[:industry] != "all")
    @spaces = @spaces.near(params[:location], params[:radius]) if (params[:location] && params[:radius])

    if params[:amenities]
      @spaces = @spaces.select do |space|
        params[:amenities].all? { |amenity| space[amenity] }
      end
    end

    @hash = Gmaps4rails.build_markers(@spaces) do |space, marker|
      marker.lat space.latitude
      marker.lng space.longitude
      marker.infowindow render_to_string(partial: "/spaces/map_box", locals: { space: space })
    end
  end

  def show
    @booking = Booking.new
    @hash = Gmaps4rails.build_markers(@space) do |space, marker|
      marker.lat space.latitude
      marker.lng space.longitude
    end
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
    amenities = params[:space][:amenities]
    @space = Space.new(space_params)
    @space.user = current_user

    if @space.save!
      amenities.each do |amenity|
        @space.update_attribute(amenity.to_sym, true)
      end
      redirect_to @space, notice: "Space was successfully created. <a href='#{dashboard_path}' class='alert-cta'>Add desks in your dashboard</a>"
    else
      render :new
    end
  end


  def destroy
    @space = Space.find(params[:id])

    if @space.destroy
      redirect_to dashboard_path, notice: 'Space was successfully destroyed.'
    end
  end

  private

  def set_space
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:address, :latitude, :longitude, :company_name, :industry, :company_info, :reciption, :security, :event_space, :bike_storage, :phone_booth, :kitchen, :lockers, :cafe_restaurant, :showers, :meeting_room, :hours, :wifi, :refreshment, photos: [])
  end
end
