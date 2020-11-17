class Event < ApplicationRecord
    validates_presence_of :name, :month, :day, :year, :description
end
