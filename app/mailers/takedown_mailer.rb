class TakedownMailer < ActionMailer::Base
  default from: "takemyphotodown@gmail.com"

  def signup_confirmation(user)
  	@greeting = "Hi"

  	@user = user
  	mail to: user.email, subject: "Sign Up Confirmation"
  end

  def send_takedown(takedown, from, to_emails, subject)
    unless takedown.nil? || to_emails.blank?
      @takedown = takedown
      @from = from || "takemyphotodown@gmail.com"
  	  @to_emails = to_emails
  	  @subject = subject || "DMCA Takedown Notice and Request"
  	  # @body = body
      @takedown.image_uploads.each_with_index do |image_upload, index|
        begin attachments.inline[image_upload.image.to_s.split("/")[-1]] = File.read([Rails.root, "public", image_upload.image.url].join('/')) rescue nil end
      end
    	mail to: @to_emails, cc: @from, subject: @subject, from: @from
    end
  end
end
