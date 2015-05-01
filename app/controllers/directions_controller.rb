class DirectionsController < ApplicationController

  def index
  end

  def edit
    @directions = Kv.find('directions')
  end

  def show
  end

end
