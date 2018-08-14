class Person < ApplicationRecord
	validates_presence_of :title, :forename, :surname, :email, :license_period
	
	validates_format_of :email, with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i, message: 'Please enter a valid email'

	belongs_to :quote, optional: true
end
