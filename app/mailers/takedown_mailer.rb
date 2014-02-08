class TakedownMailer < ActionMailer::Base
  default from: "takemyphotodown@gmail.com"

  def signup_confirmation(user)
  	@greeting = "Hi"

  	@user = user
  	mail to: user.email, subject: "Sign Up Confirmation"
  end

  def contact_valcu(email, subject="DMCA Takedown Notice and Request", body)
  	@email = email
  	@subject = subject
  	@body = body


  	mail to: "valcu.webmaster@gmail.com", subject: , from: email
  end
end
