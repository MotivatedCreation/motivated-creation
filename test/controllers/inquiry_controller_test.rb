require 'test_helper'

class InquiryControllerTest < ActionDispatch::IntegrationTest
  
  test "should get initialize" do
    get inquiry_initialize_url
    assert_response :success
  end

  test "should get inquiry" do
    get :inquiry
    assert_select "title", "Inquiry | Motivated Creation"
    assert_response :success
  end
  
end
