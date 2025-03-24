class VerificationController < ApplicationController
    #verify book
    def index
        @Verifications = Books.where(:verification_date = "")

    end
    #suspend verification
    def suspend_verification
        Verifications.where().update(:status = )
    end

    def show_unverified_count
        Books.where().count
    end
end