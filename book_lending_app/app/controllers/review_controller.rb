class ReviewController < ApplicationController

    #add review
    def index
        @review = Review.new
    end

    #get my review for a certain book
    def my_review
        @book_review = Review.where(@book_id, @user_id)
    end 

    #get reviews on a certain book
    def get_book_reviews
        @book_reviews = Review.where(id = @book_id)
    end

    #post review
    def post_review
        @post_book_review = Review.where(@book_id).upsert(@review)
    end
end