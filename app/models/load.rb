class Load < ActiveRecord::Base
	has_many :routes
	belongs_to :carrier

	validates_presence_of :pallet_count, :weight, :description
end 