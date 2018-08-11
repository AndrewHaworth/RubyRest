class CreateVehicles < ActiveRecord::Migration[5.2]
  def change
    create_table :vehicles do |t|
      t.string :registration
      t.integer :mileage
      t.integer :value
      t.string :parking_location
      t.date :policy_start

      t.timestamps
    end
  end
end
