class AddPhotographNamesToTakedown < ActiveRecord::Migration
  def change
    add_column :takedowns, :photograph_names, :text
  end
end
