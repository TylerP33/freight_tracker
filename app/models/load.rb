class Load < ActiveRecord::Base
	has_many :routes
	belongs_to :carrier
end 