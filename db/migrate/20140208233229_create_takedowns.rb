class CreateTakedowns < ActiveRecord::Migration
  def change
    create_table :takedowns do |t|
      t.integer :user_id
      t.date :notice_date
      t.text :offending_website_names
      t.string :first_name
      t.string :middle_initial
      t.string :last_name
      t.text :offending_urls
      t.text :destination_emails
      t.text :photograph_descriptions
      t.string :mailing_address1
      t.string :mailing_address2
      t.string :mailing_city
      t.string :mailing_state
      t.string :mailing_zip
      t.string :home_phone_number
      t.string :cell_phone_number
      t.string :email_address
      t.boolean :electronically_signed_datetime
      t.boolean :images_confirmed
      t.boolean :as_guest
      t.boolean :mark_for_destruction

      t.timestamps
    end
    add_index :takedowns, :user_id
  end
end
