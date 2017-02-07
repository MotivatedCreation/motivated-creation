require 'test_helper'

class ContactControllerTest < ActionDispatch::IntegrationTest
  
  test "should get initialize" do
    get contact_initialize_url
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_select "title", "Contact | Motivated Creation"
    assert_response :success
  end
  
end
