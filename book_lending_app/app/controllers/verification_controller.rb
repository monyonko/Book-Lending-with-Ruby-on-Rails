class VerificationController < ApplicationController
    #verify book
    def index
        @verifications = Books.where(:verification_date = "")
    end

    #create verifications
    def create
        @create = Verifications.create()
    end

    #suspend verification
    def update
        @suspend = Verifications.where().update(:status = )
    end

    #show count
    def show_unverified_count
        Books.where().count
    end
end