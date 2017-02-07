require 'test_helper'

class ShopControllerTest < ActionDispatch::IntegrationTest
  
  test "should get initialize" do
    get shop_initialize_url
    assert_response :success
  end

  test "should get shop" do
    get :shop
    assert_select "title", "Shop | Motivated Creation"
    assert_response :success
  end
  
end
