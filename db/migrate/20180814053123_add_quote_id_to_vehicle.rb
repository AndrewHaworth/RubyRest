class AddQuoteIdToVehicle < ActiveRecord::Migration[5.2]
  def change
	  add_column :vehicles, :quote_id, :integer
  end
end
