# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/welcome_user_mail


  def welcome_user_mail
    UserMailer.welcome_user_mail(User.find(1))
  end

end
