class Quote < ApplicationRecord
	#Quotes have one of each other model. Not necessary in this iteration per se, but in future iterations where accounts could log their quotes, this can be used to retreive them.
	has_one :person
	has_one :vehicle
	has_one :driver_history

	#Accepting nested attributes is how the quote#new page can handle the creation of the person, vehicle, and driver history models as well as its own. This makes the site far more intuitive than having separate pages for each model, passing values on until reaching Quote to give a verdict. This makes that much cleaner.
	accepts_nested_attributes_for :person, :vehicle, :driver_history

	#This is here to update the Quote with the relevant date and Premium value upon being created on the quote#new page.
	def update(value)
		self.premium = value
		self.date_created = Date.today
	end
end
