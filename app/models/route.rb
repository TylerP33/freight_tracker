class Route < ActiveRecord::Base
	extend Geocoder::Model::ActiveRecord
	has_many :loads
	has_many :carriers, through: :loads

	validates_presence_of :pickup_location, :destination, :pickup_date, :delivery_date

def address 
	[pickup_location].join(', ')
	[destination].join(', ')
end

  geocoded_by :address
  after_validation :geocode
  after_save :geocode
end 