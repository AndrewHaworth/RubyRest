class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :title
      t.string :forename
      t.string :surname
      t.string :email
      t.string :telephone
      t.date :date_of_birth
      t.string :license_type
      t.string :occupation
      t.string :street
      t.string :city
      t.string :county
      t.integer :license_period
      t.string :postcode

      t.timestamps
    end
  end
end
