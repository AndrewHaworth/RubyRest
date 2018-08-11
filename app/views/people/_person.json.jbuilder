json.extract! person, :id, :title, :forename, :surname, :email, :telephone, :date_of_birth, :license_type, :occupation, :street, :city, :county, :license_period, :postcode, :created_at, :updated_at
json.url person_url(person, format: :json)
