require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get new" do
    get signup_path
    assert_response :success
  end





    assert_redirected_to users_url
  end
end
