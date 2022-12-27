class UserMailer < ApplicationMailer

    def run
        # @user = User.pluck(:email).first
        mail(to: 'karthis1015@gmail.com', subject: 'API mail')
    end
end 