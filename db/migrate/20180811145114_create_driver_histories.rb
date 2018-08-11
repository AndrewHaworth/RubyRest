class CreateDriverHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :driver_histories do |t|
      t.date :date_of_incidient
      t.integer :value
      t.text :description
      t.string :incident_type

      t.timestamps
    end
  end
end
