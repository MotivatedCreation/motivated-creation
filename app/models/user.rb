class User < ApplicationRecord
    
    has_many :blog_entries, dependent: :destroy
    
    before_save { self.email = email.downcase }
    
    validates(:name, presence: true)
    
    validates(:email, 
              presence: true, 
              length: { maximum: 255 },
              uniqueness: { case_sensitive: false })
              
    has_secure_password
    validates(:password,
              presence: true,
              length: { minimum: 6 }, allow_nil: true)
end
