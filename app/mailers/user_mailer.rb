class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome_user_mail.subject
  #

  def welcome_user_mail(user)
    @user = user
    mail(to: "aanish2710@gmail.com", subject: 'Your Registration is succesfull')
  end




end
