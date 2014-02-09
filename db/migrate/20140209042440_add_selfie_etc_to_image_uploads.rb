class AddSelfieEtcToImageUploads < ActiveRecord::Migration
  def change
    add_column :image_uploads, :selfie, :boolean
    add_column :image_uploads, :sending_method_of_photograph, :text
    add_column :image_uploads, :offending_title, :string
    add_column :image_uploads, :offending_url, :text
    add_column :image_uploads, :offending_website_name, :string
  end
end
