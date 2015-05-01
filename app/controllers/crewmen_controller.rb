class CrewmenController < ApplicationController

  def index
    @crew = Crewman.all
  end

  def show
    @crewman = Crewman.find(params[:id])
  end

  def edit
    @crewman = Crewman.find(params[:id])
  end

  def update
    @crewman = Crewman.find(params[:id])
    if @crewman.update(crewman_params)
      flash[:success] = "#{@crewman.name} successfully updated."
      redirect_to @crewman
    else
      flash[:errors] = 'error'
    end
  end

  private
    def crewman_params
      params.require(:crewman).permit(:name, :bio, :image)
    end

end
