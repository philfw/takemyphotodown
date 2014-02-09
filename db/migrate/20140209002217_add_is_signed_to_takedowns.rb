class AddIsSignedToTakedowns < ActiveRecord::Migration
  def change
    add_column :takedowns, :is_signed, :boolean
    add_index :takedowns, :is_signed
  end
end
