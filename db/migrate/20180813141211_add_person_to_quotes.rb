class AddPersonToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotes, :person, foreign_key: true
  end
end
