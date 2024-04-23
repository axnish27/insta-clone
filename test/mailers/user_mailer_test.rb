require "test_helper"

class UserMailerTest < ActionMailer::TestCase
  test "welcome_user_mail" do
    mail = UserMailer.welcome_user_mail
    assert_equal "Welcome user mail", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
