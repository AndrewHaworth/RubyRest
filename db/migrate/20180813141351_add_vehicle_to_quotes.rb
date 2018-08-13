class AddVehicleToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotes, :vehicle, foreign_key: true
  end
end
