json.extract! driver_history, :id, :date_of_incidient, :value, :description, :incident_type, :created_at, :updated_at
json.url driver_history_url(driver_history, format: :json)
