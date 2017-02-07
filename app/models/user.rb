class User < ApplicationRecord
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    
    attr_accessor :name
    attr_accessor :email
    attr_accessor :password
    
    validates(:name,  presence: true)
    
    has_secure_password
    validates(:password, 
              presence: true, 
              length: { minimum: 6 })
              
    validates(:email, 
              presence: true, 
              length: { maximum: 255 }, 
              format: { with: VALID_EMAIL_REGEX },
              uniqueness: { case_sensitive: false })
              
    before_save { self.email = email.downcase }
end
