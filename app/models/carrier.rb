class Carrier < ActiveRecord::Base
	has_many :loads
	has_many :routes
	
	has_secure_password
	
	validates_presence_of :username, :email, :password
	validates :username, uniqueness: true
	#make sure to be freshened up on this for interview

	def slug
		self.username.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
	end

	def self.find_by_slug(slug)
		self.all.find {|username| username.slug == slug }
	end
end