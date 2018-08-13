class Person < ApplicationRecord
	validates_presence_of :title, :forename, :surname, :email, :license_period

	belongs_to :quote, optional: true
end
