class AddTitlesToImageUploads < ActiveRecord::Migration
  def change
    add_column :image_uploads, :title, :string
    add_column :image_uploads, :description, :text
  end
end
