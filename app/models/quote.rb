class Quote < ApplicationRecord
	validates_presence_of :premium

	has_one :person,
		dependent: :destroy

	has_one :vehicle,
		dependent: :destroy

	has_one :driver_history,
		dependent: :destroy
end
