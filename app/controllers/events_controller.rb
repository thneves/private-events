class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  def new
    @event = current_user.created_events.new
  end

  def create
    @event = current_user.created_events.build(event_params)
    if @event.save
      flash[:success] = "Object successfully created"
      redirect_to event_path(@event)
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def show
    @event = Event.find(params[:id])
  end
  
  private

  def event_params
    params.require(:event).permit(:description, :date)
  end  
  
end
