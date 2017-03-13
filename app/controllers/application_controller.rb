class ApplicationController < ActionController::Base
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  attr_accessor :page_name
  attr_accessor :viewing_home_page
  
  def initialize
    super
    @viewing_home_page = false
    @page_name = "Motivated Creation"
  end
  
end