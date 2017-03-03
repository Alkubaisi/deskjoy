class TablesController < ApplicationController

 def edit
  end

  def update
    respond_to do |format|
      if @table.update(table_params)
        format.html { redirect_to @space, notice: 'space was successfully updated.' }
      else
        format.html { render :edit }

      end
    end
  end



  def create
      @space = Space.find(params[:space_id])
    @table = Table.new(table_params)
    @table.space = @space
   if @table.save
      respond_to do |format|
        format.html {redirect_to space_path(@space)}
       format.js
      end
    else
      respond_to do |format|
        format.html {render 'space/show'}
        format.js #create.js.erb
      end
    end
  end

  def new
    @space = Space.find(params[:space_id])
    @table = Table.new
  end


  private



  def table_params
    params.require(:table).permit(:desk_type, :price )
  end
end

