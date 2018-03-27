class Carrier < ActiveRecord::Base
	has_many :loads
	
	has_secure_password

	def slug
		self.username.downcase.strip.gsub(' ', '-').gsub(/[^\w-]/, '')
	end

	def self.find_by_slug(slug)
		self.all.find {|username| username.slug == slug }
	end
end