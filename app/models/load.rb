class Load < ActiveRecord::Base
	belongs_to :carrier
	has_many :routes
end 