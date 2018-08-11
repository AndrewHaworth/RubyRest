class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.date :date_created
      t.integer :premium

      t.timestamps
    end
  end
end
