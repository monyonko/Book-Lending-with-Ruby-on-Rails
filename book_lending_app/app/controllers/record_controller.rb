class RecordController < ApplicationController
    
    #add record
    def index
        @add_record = Record.new
    end
    #modify record (either borrow date, returned date or expected date)
    def modify_record
        @update = Record.where(@book_id).upsert()
    end

    #show who has a book at a certain time
    def showBookDetails
        @whereisthebook = Book.find_by(@book_id)
    end
end