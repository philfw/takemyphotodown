class ImageUpload < ActiveRecord::Base
  belongs_to :takedown
  mount_uploader :image, ImageUploader


end
