class AccountController < ApplicationController
    
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def initialize
    super
    @page_name = "Account"
    @viewing_home_page = false
  end
  
  def account
    
  end
  
end
