class Load < ActiveRecord::Base
	has_many :routes
	belongs_to :carrier

	validates_presence_of :pallet_count, :weight, :description
	validates :pallet_count, length: { is: 2}
	validates :weight, length: { is: 5}
	validates :pallet_count, numericality: { less_than_or_equal_to: 50 }
	validates :weight, numericality: { less_than_or_equal_to: 50000 }
end 