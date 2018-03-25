class Load < ActiveRecord::Base
	belongs_to :carrier
	has_many :load_routes
	has_many :routes, through: :load_routes
end 