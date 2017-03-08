class UserNotifier < ActionMailer::Base
  default :from => "\"Howdy!\" <howdy@firesideprovisions.com>"

  def send_signup_email(user)
    @user = user
    @twitter_message = "I just entered @FProvisions ski adventure giveaway for a week of gourmet meals & gear worth $4K! You in? #EatPlaySki"
    mail( :to => @user.email,
    :subject => 'Go on. Spread it around.' )
  end

end
