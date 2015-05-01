class RatesController < ApplicationController

  def new
    @rate = Rate.new
  end

  def index
    @rates = Rate.where(:active => true)
  end

  def create
    @rate = Rate.create(rate_params)
    if @rate.save
      flash[:success] = "Rate successfully updated."
      redirect_to @rate
    else
      flash[:errors] = 'error'
    end
  end

  def update
    @rate = Rate.find(params[:id])
    if @rate.update(rate_params)
      flash[:success] = "Rate successfully updated."
      redirect_to '/rates'
    else
      flash[:errors] = 'error'
    end
  end

  def show
    @rate = Rate.find(params[:id])
  end

  def edit
    @rate = Rate.find(params[:id])
  end

  private
    def rate_params
      params.require(:rate).permit(:start, :end, :active, :boat_id, :full_day, :half_day, :night, :full_day_pax, :half_day_pax, :night_pax, :discount)
    end

end
