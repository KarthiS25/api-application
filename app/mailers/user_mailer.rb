class UserMailer < ApplicationMailer

    def run
        @user = User.pluck(:email).first
        mail(to: @user, subject: 'API mail')
    end
end