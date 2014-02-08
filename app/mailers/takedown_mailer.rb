class TakedownMailer < ActionMailer::Base
  default from: "takemyphotodown@gmail.com"

  def signup_confirmation(user)
  	@greeting = "Hi"

  	@user = user
  	mail to: user.email, subject: "Sign Up Confirmation"
  end

  def contact_valcu(from, to_emails, subject, body)
    @from = from || "valcu.webmaster@gmail.com"
  	@to_emails = to_emails
  	@subject = subject || "DMCA Takedown Notice and Request"
  	@body = body

    @to_emails.each do |to_email|
  	  mail to: to_email, subject: @subject, from: @from, body: @body
    end
  end
end
