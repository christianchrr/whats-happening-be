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
        @location = Location.create(location_params(:location_name, :location_address_line_one, :location_address_line_two, :location_city, :location_state, :location_zip_code))
        render json: @location
    end

    def edit
    end

    def update
        @location.update(location_params(:location_name, :location_address_line_one, :location_address_line_two, :location_city, :location_state, :location_zip_code))
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
