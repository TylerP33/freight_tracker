class Carrier < ActiveRecord::Base
	has_secure_password
	has_many :loads
	has_many :routes, through: :loads
end