class Verification < ApplicationRecord
    belongs_to :books
    belongs_to :users

    validates :status, :issue, presence: true
    validates :issue, length: {:maximum :30}
end
