require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  
  test "should redirect to 404 page if user is not found" do
    user = User.new(id: "test")
    get user_path(user)
    assert_redirected_to "/404"
  end

end
