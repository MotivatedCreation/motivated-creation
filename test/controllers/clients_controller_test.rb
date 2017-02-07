require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  
  test "should get initialize" do
    get clients_initialize_url
    assert_response :success
  end

  test "should get clients" do
    get :clients
    assert_select "title", "Clients | Motivated Creation"
    assert_response :success
  end
  
end
