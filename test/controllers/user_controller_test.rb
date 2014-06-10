require 'test_helper'

class UserControllerTest < ActionController::TestCase
  test "should get random" do
    get :random, id: 'ur36128788'
    assert_response :success
  end

end
