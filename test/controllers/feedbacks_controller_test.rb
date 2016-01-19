require 'test_helper'

class FeedbacksControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

  test "successful post" do
    post :create, feedback: {
      name: 'Beavis',
      email: 'Beavis@example.com',
      subject: 'Cornholio',
      content: 'Uhhhhhhhhhhh'
    }

    assert_redirected_to root_path
    last_email = ActionMailer::Base.deliveries.last

    assert_equal 'Cornholio', last_email.subject
    assert_equal 'melancholyfleur@gmail.com', last_email.to[0]
    assert_equal 'Beavis@example.com', last_email.from[0]
    assert_match(/Uhhhhhhhhhhh/, last_email.body.to_s)

    ActionMailer::Base.deliveries.clear
  end

  test "failed post" do
    post :create, feedback: {
      name: '',
      email: '',
      subject: '',
      content: ''
    }

    [:name, :email, :subject, :content].each do |attr|
      assert_select 'li', "#{attr.capitalize} can't be blank"
    end
  end
end
