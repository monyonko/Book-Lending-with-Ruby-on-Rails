class Author < ApplicationRecord
    has_many :books
    belongs_to :users
end
