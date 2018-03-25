class Route < ActiveRecord::Base
	has_many :load_routes
	has_many :loads, through: :load_routes
	has_many :carriers, through: :loads
end 