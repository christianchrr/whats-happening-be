class EventsController < ApplicationController
    before_action :set_event, only: [:show, :edit, :update, :destroy]

    def show
        render json: @event
    end

    def index
        @events = Event.all
        render json: @events
    end

    def new
        @event = Event.new
    end

    def create
        @event = Event.create(event_params(:name, :month, :day, :year, :description))
        render json: @event         
    end

    def edit
    end

    def update
        @event.update(event_params(:name, :month, :day, :year, :description))
    end

    def destroy
        @event.destroy
    end

    private

    def set_event
        @event = Event.find(params[:id])
    end

    def event_params(*args)
        params.require(:event).permit(*args)
    end

end
