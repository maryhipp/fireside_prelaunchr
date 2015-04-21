class UserNotifier < ActionMailer::Base
  default :from => "\"Howdy!\" <howdy@firesideprovisions.com>"

  def send_signup_email(user)
    @user = user
    @twitter_message = "Excited for @FProvisions to launch. I’ll be headed #outdoors this summer with great meals, for free!"
    mail( :to => @user.email,
    :subject => 'Thanks for signing up for Fireside Provisions' )
  end

end
