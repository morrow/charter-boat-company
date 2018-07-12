class BookingsController < ApplicationController

  def index
    @calender = Calendar.where(:public => true).first
  end

end
