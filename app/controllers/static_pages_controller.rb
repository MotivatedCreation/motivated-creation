class StaticPagesController < ApplicationController
  
  attr_accessor :logged_in
  attr_accessor :show_navbar
  attr_accessor :current_page
  
  def initialize
    super
    @logged_in = false
    @show_navbar = true
    @current_page = "Motivated Creation"
  end

  def home
    @show_navbar = false
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
  
  def login
    @current_page = "Login"
  end
  
end
