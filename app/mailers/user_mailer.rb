class UserMailer < ApplicationMailer

  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

  def send_bulk_email(users)
    emails = users.pluck(:email)
    mail(bcc: emails, subject: "Hello This is testing for sending bulk email")
  end

  # def send_bulk_email(user)
  #   @user = user
  #   mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  # end
end
