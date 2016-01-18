require 'test_helper'

class PassionsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: passions(:climate_change).id
    assert_response :success
  end
end
