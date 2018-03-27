class Route < ActiveRecord::Base
	extend Geocoder::Model::ActiveRecord
	belongs_to :load

def address 
	[city, state].join(', ')
end

  geocoded_by :address
  after_validation :geocode
  after_save :geocode
end 