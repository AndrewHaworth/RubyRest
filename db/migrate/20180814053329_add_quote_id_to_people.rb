class AddQuoteIdToPeople < ActiveRecord::Migration[5.2]
  def change
	  add_column :people, :quote_id, :integer
  end
end
