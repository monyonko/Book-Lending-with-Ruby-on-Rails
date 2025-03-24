class Book < ApplicationRecord
    belongs_to :authors
    has_many :verifications
    has_many :reviews

    before_validation :expected
    validates :title, :ISBN, :availability, :cover_image, :date_verified, :time_verified/
    :date_uploaded, :time_uploaded, :edition, :category, presence: true
    validates :title, length: {in: 2..50 }
    validates :edition, length: {in: 1..10}
     #verified should be later or the same day book was uploaded
     def expected(:date_verified, :date_uploaded, :time_verified, :time_uploaded)
        if :date_verified < :date_uploaded
            k = :date_verified
            :date_verified = :date_uploaded
            :date_uploaded = k

            j = :time_verified
            :time_verified = :time_uploaded
            :time_uploaded = j
        end

    end
    validates :category, inclusion: {in: %w(Religious Educational Classic Drama Self_help Fiction Health Other)}

end
