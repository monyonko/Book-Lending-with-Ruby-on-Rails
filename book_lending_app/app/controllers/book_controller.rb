class BookController < ApplicationController
    #showcase books
    def index
        @all_books = Books.all
    end

    def createBook
        @new_book = Books.new
    end

    def update
        @update_details = Books.where().update()
    end

    #book details
    def individualBook
        @book = Book.find_by()
    end

    def borrowBook
        @borrow = Book.where().update()
    end

    def returnBook
        @return = Book.where().update()
    end

    def reborrow
        @reborrow = Book.where().update()
    end


    #show all book details to admin only
    def AllBookDetails
        @catalogue = Book.joins(author:, records:, author:, verification:).where(:book_id)
    end

end