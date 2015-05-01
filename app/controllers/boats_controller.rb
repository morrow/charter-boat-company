class BoatsController < ApplicationController

  def index
    @boats = Boat.all
  end

  def show
    @boat = Boat.find(params[:id])
  end

  def edit
    @boat = Boat.find(params[:id])
  end

  def update
    @boat = Boat.find(params[:id])
    if @boat.update(boat_params)
      flash[:success] = "#{@boat.name} successfully updated."
      redirect_to @boat
    else
      flash[:errors] = 'error'
    end
  end

  private
    def boat_params
      params.require(:boat).permit(:name, :description, :image, :passengers, :length)
    end

end
