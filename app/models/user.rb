class User < ApplicationRecord
    
    attr_accessor :name
    attr_accessor :company
    attr_accessor :email
    attr_accessor :accountType
    attr_accessor :password
    attr_accessor :url
    attr_accessor :avatarURL
    attr_accessor :logoURL
    
    validates(:name,  presence: true)
    
    has_secure_password
    validates(:password,
              presence: true,
              length: { minimum: 6 })
              
    validates(:email, 
              presence: true, 
              length: { maximum: 255 },
              uniqueness: { case_sensitive: false })
              
    before_save { self.email = email.downcase }

end
