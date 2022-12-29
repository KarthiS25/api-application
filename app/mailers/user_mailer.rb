class UserMailer < Devise::Mailer
    default from: "karthis1015@gmail.com"
    # def run
    #     # @user = User.pluck(:email).first
    #     mail(to: 'karthis1015@gmail.com', subject: 'API mail')
    # end

    def reset_password_instructions(record, token, opts={})
        # mail(to: 'karthis1015@gmail.com', subject: 'API mail')
        super
    end
    
end