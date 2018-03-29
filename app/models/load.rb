class Load < ActiveRecord::Base
	has_one :route
	belongs_to :carrier
end 