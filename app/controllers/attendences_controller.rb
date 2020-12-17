class AttendencesController < ApplicationController
  include AttendencesHelper
    
  def index
    @attendences = attendence.all
  end
  
  def new
    @attendence = Attendence.new
  end
  
  def create
    @attendence = Attendence.new(attendence_params)
  
    if @attendence.save
      redirect_to events_path
    else
      render 'new'
    end
  end
end
