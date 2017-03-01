class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(profile_params)
    redirect_to profile_path(@user)
  end

  private

  def profile_params
    params.require(:user).permit(:first_name, :last_name, :twitter, :linkedin, :photo, :info)
  end
end
