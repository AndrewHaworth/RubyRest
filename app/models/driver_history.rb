class DriverHistory < ApplicationRecord
	validates_presence_of :value, :description

	belongs_to :quote, optional: true
end
