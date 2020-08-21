class EventsController < ApplicationController

  before_action :authenticate_user!, except: [:show, :index]

  def new
    @event = Event.new
  end

  def create
    @event = current_user.created_events.build(event_params)
    @event.save

    flash.notice = "Event '#{@event.title}' created!"

    redirect_to user_path(@event.creator)
  end

  def show
    @event = Event.find(params[:id])
  end

  def index
    @events = Event.all
  end

  def event_params
    params.require(:event).permit(:title, :date, :location)
  end

end
