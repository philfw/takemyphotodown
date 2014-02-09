class Takedown < ActiveRecord::Base
  # attr_accessible :as_guest, :cell_phone_number, :destination_emails, :electronically_signed_datetime, :email_address, :first_name, :home_phone_number, :images_confirmed, :last_name, :mailing_address1, :mailing_address2, :mailing_city, :mailing_state, :mailing_zip, :mark_for_destruction, :middle_initial, :notice_date, :offending_urls, :offending_website_names, :photograph_descriptions, :user_id
  has_many :image_uploads
  accepts_nested_attributes_for :image_uploads, allow_destroy: true, :reject_if => proc { |attributes| attributes['image'].blank? && attributes['image_cache'].blank? }


end
