class AuthorController < ApplicationController


    #create author
    def index
        @new = Author.new
    end

    #suspend author
    def update
        @suspend = Author.find_by().update()
    end

    #delete author account
    def destroy
        @delete = Author.find_by().destroy
    end

    #edit
    def modify_details
        @modify = Author.find_by().upsert()
    end
end