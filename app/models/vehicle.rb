class Vehicle < ApplicationRecord
	validates_presence_of :mileage, :value, :registration

	belongs_to :quote, optional: true
end
