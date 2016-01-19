require 'test_helper'

class FeedbackTest < ActiveSupport::TestCase
  test 'responds to name, email, subject, and content' do
    msg = Feedback.new
    [:name, :email, :subject, :content].each do |attr|
      assert msg.respond_to? attr
    end
  end

  test 'accepts valid attributes' do
    valid_attrs = {
      name: 'Stephanie',
      email: 'Steph@example.com',
      subject: 'I want you to add a new passion to the list',
      content: 'World Hunger, here are some links:'
    }

    msg = Feedback.new valid_attrs

    assert msg.valid?
  end

  test 'attributes cannot be blank' do
    msg = Feedback.new
    refute msg.valid?
  end
end
