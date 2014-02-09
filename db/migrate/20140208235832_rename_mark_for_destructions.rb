class RenameMarkForDestructions < ActiveRecord::Migration
  def change
  	rename_column :image_uploads, :mark_for_destruction, :mark_for_trash
  	rename_column :takedowns, :mark_for_destruction, :mark_for_trash
  end
end
