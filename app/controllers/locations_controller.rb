class LocationsController < ApplicationController
    before_action :set_location, only: [:show, :edit, :update, :destroy]

    def show
        render json: @location
    end

    def index
        @locations = Location.all
        render json: @locations
    end

    def new
        @location = Location.new
    end

    def create
        @location = Location.create(location_params(:name, :address_line_one, :address_line_two, :city, :state, :zip))
        render json: @location         
    end

    def edit
    end

    def update
        @location.update(location_params(:name, :address_line_one, :address_line_two, :city, :state, :zip))
    end

    def destroy
        @location.destroy
    end

    private

    def set_location
        @location = Location.find(params[:id])
    end

    def location_params(*args)
        params.require(:location).permit(*args)
    end

end
