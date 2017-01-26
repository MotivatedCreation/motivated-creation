class StaticPagesController < ApplicationController
  
  attr_accessor :logged_in
  attr_accessor :current_page
  attr_accessor :viewing_home_page
  
  def initialize
    super
    @logged_in = false
    @viewing_home_page = false
    @current_page = "Motivated Creation"
  end

  def home
    @viewing_home_page = true
  end

  def contact
    @current_page = "Contact"
  end

  def portfolio
    @current_page = "Portfolio"
  end

  def inquiry
    @current_page = "Inquiry"
  end

  def clients
    @current_page = "Clients"
  end

  def partners
    @current_page = "Partners"
  end

  def reviews
    @current_page = "Reviews"
  end
  
  def shop
    @current_page = "Shop"
  end
  
end
