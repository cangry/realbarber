require 'test_helper'

class NotifierTest < ActionMailer::TestCase
  test "new_account_confirmation_email" do
    mail = Notifier.new_account_confirmation_email
    assert_equal "New account confirmation email", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
