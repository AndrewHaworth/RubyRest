class Person < ApplicationRecord
	validates_presence_of :title, :forename, :surname, :email, :license_period
	#Validate a real email is being used, with extra appendices allowed to allow emails such as .co.uk or @aber.ac.uk
	validates_format_of :email, with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: 'Please enter a valid email'

	belongs_to :quote, optional: true
end
