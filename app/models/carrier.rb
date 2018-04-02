class Carrier < ActiveRecord::Base
	has_many :loads
	has_many :routes
	
	has_secure_password
	
	validates_presence_of :username, :email, :password
	validates :username, uniqueness: true
	#make sure to be freshened up on this for interview
end