require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  
  test "should get initialize" do
    get reviews_initialize_url
    assert_response :success
  end

  test "should get reviews" do
    get :reviews
    assert_select "title", "Reviews | Motivated Creation"
    assert_response :success
  end
  
end
