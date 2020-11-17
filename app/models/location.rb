class Location < ApplicationRecord
    validates_presence_of :name, :address_line_one, :city, :state, :zip

end
