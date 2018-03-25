class Carrier < ActiveRecord::Base
	has_many :loads
	
	has_secure_password

end