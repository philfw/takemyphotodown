class AddSessionIdToTakedowns < ActiveRecord::Migration
  def change
    add_column :takedowns, :session_id, :string
    add_index :takedowns, :session_id
  end
end
