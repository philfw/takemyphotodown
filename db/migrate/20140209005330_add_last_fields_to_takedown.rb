class AddLastFieldsToTakedown < ActiveRecord::Migration
  def change
    add_column :takedowns, :sending_method_of_photograph, :text
    add_column :takedowns, :affirmation_good_faith, :boolean
  end
end
