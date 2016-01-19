require 'test_helper'

class FeedbackMailerTest < ActionMailer::TestCase
  test "send me feedback" do
    feedback = Feedback.new(
      name: 'Feedback Sam',
      email: 'thesamoffeedback@example.com',
      subject: 'The Feedback of all Feedback',
      content: 'Delivering what was promised.'
    )

    email = FeedbackMailer.send_me_feedback(feedback).deliver_now

    refute ActionMailer::Base.deliveries.empty?

    assert_equal ['melancholyfleur@gmail.com'], email.to
    assert_equal ['thesamoffeedback@example.com'], email.from
    assert_equal 'The Feedback of all Feedback', email.subject
    assert_equal 'Delivering what was promised.', email.body.to_s
  end
end
