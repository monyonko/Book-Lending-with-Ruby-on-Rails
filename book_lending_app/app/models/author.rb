class Author < ApplicationRecord
    has_many :books
    belongs_to :users

    validates :first_name, :second_name, :is_active, presence: true
    validates :first_name, :second_name, length: {in: 2..10}, format: {with: /[A-Za-z0-9_-]+/}
    
end
