class UserMailer < ActionMailer::Base
    default from: "Harry's <welcome@harrys.com>"

    def signup_email(user)
        @user = user
        mail(:to => user.email, :subject => "Thanks for signing up!")
    end
end
