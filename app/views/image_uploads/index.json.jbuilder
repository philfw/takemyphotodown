json.array!(@image_uploads) do |image_upload|
  json.extract! image_upload, :id, :user_id, :takedown_id, :image, :mark_for_destruction
  json.url image_upload_url(image_upload, format: :json)
end
