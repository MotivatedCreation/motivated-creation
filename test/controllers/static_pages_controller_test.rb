require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Motivated Creation"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "Contact | Motivated Creation"
  end

  test "should get portfolio" do
    get :portfolio
    assert_response :success
    assert_select "title", "Portfolio | Motivated Creation"
  end

  test "should get inquiry" do
    get :inquiry
    assert_response :success
    assert_select "title", "Inquiry | Motivated Creation"
  end

  test "should get clients" do
    get :clients
    assert_response :success
    assert_select "title", "Clients | Motivated Creation"
  end

  test "should get partners" do
    get :partners
    assert_response :success
    assert_select "title", "Partners | Motivated Creation"
  end

  test "should get reviews" do
    get :reviews
    assert_response :success
    assert_select "title", "Reviews | Motivated Creation"
  end
  
  test "should get shop" do
    get :shop
    assert_response :success
    assert_select "title", "Shop | Motivated Creation"
  end

end
