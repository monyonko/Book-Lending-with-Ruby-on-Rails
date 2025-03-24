class Book < ApplicationRecord
    belongs_to :authors
    has_many :verifications
end
