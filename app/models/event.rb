class Event < ApplicationRecord
    validates_presence_of :event_name, :event_month, :event_day, :event_year, :event_description

    belongs_to :location
    
end
