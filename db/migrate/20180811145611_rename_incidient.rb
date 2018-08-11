class RenameIncidient < ActiveRecord::Migration[5.2]
  def change
	  rename_column :driver_histories, :date_of_incidient, :date_of_incident
  end
end
