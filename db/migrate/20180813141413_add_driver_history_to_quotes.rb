class AddDriverHistoryToQuotes < ActiveRecord::Migration[5.2]
  def change
    add_reference :quotes, :driver_history, foreign_key: true
  end
end
