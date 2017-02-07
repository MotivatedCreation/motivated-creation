require 'test_helper'

class PortfolioControllerTest < ActionDispatch::IntegrationTest
  
  test "should get initialize" do
    get portfolio_initialize_url
    assert_response :success
  end

  test "should get portfolio" do
    get :portfolio
    assert_select "title", "Portfolio | Motivated Creation"
    assert_response :success
  end
  
end
