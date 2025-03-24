class Book < ApplicationRecord
    belongs_to :authors
    has_many :verifications
    has_many :reviews
    
end
