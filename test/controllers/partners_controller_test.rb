require 'test_helper'

class PartnersControllerTest < ActionDispatch::IntegrationTest
  
  test "should get initialize" do
    get partners_initialize_url
    assert_response :success
  end

  test "should get partners" do
    get :partners
    assert_select "title", "Partners | Motivated Creation"
    assert_response :success
  end
  
end
