class TablesController < ApplicationController

  def edit
    @space = Space.find(params[:space_id])
    @table = Table.find(params[:id])
  end

  def update

    @table = Table.find(params[:id])
    if @table.update(table_params)
      redirect_to @space, notice: 'space was successfully updated.'
    else
      render :edit
    end
  end

  def new
    @space = Space.find(params[:space_id])
    @table = Table.new
  end

  def create
    @space = Space.find(params[:space_id])
    @table = Table.new(table_params)
    @table.space = @space
    if @table.save
      redirect_to space_path(@space)
    else
      render 'new'
    end
  end

  def destroy
    @table = Table.find(params[:id])

    if @table.destroy
      redirect_to dashboard_path, notice: 'Table was successfully destroyed.'
    end
  end

  private

  def table_params
    params.require(:table).permit(:desk_type, :price )
  end
end

