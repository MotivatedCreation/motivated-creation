class BlogEntry < ApplicationRecord
    belongs_to :user
    default_scope -> { order(created_at: :desc) }
    
    validates :user_id, presence: true
    validates :title, presence: true, length: { maximum: 140 }
    validates :text, presence: true
end
