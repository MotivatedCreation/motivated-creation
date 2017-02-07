require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  
  test "should get initialize" do
    get home_initialize_url
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_select "title", "Home | Motivated Creation"
    assert_response :success
  end
  
end
