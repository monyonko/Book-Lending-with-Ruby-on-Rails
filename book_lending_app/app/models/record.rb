class Record < ApplicationRecord
    belongs_to :users

    before_validation :borrowed, :expected, on: [:create, :update]
    validates :user_id, :book_id, :borrow_date, :expected_date, :returned_on, presence: true
    #expected date should be 14 days after borrowed date
    def expected(:expected_date, :borrowed_date)
        if :expected_date < :borrowed_date
            :expected_date = Date.today + 14
        end

    end
    #borrow_date should be the same date the record is created
    def borrowed(:borrow_date)
        if :borrowed_date != Date.today
            :borrow_date = Date.today.to_s()
        end
    end
end
