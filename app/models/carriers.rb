class Carrier < ActiveRecord::Base
	has_secure_password
	has_many :freight
end