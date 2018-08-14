class AddQuoteIdToDriverHistories < ActiveRecord::Migration[5.2]
  def change
	  add_column :driver_histories, :quote_id, :integer
  end
end
