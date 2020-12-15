class EventsController < ApplicationController
  before_action :logged_in_user
  def index
    @events = current_user.created_events.all
  end

  def show
    @event = Event.find(params[:id])
    @user = @event.creator
  end
  
  
  def new
    @event = current_user.created_events.new
  end

  def create
    @events = current_user.created_events.build(event_params)
    if @events.save
      flash[:success] = "Event has been created!"
      redirect_to root_path
    else
      render 'new'
    end
  end

  def event_params
    params.require(:event).permit(:description)
  end

  
end
