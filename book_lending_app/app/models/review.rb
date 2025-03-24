class Review < ApplicationRecord
    belongs_to :users
    belongs_to :books

    validates :review, presence: true, length: {maximum: 100}
end
