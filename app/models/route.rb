class Route < ActiveRecord::Base
	belongs_to :load
	belongs_to :carrier

	validates_presence_of :pickup_location, :destination, :pickup_date, :delivery_date
end 