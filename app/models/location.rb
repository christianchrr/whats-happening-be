class Location < ApplicationRecord
    validates_presence_of :location_name, :location_address_line_one, :location_city, :location_state, :location_zip_code

    has_many :events
end
