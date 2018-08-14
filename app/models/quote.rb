class Quote < ApplicationRecord
	has_one :person
	has_one :vehicle
	has_one :driver_history

	accepts_nested_attributes_for :person, :vehicle, :driver_history

	def update(value)
		self.premium = value
		self.date_created = Date.today
	end
end
