class UserNotifier < ActionMailer::Base
  default :from => 'howdy@firesideprovisions.com'

  def send_signup_email(user)
    @user = user
    @twitter_message = "Excited for @FProvisions to launch. I’ll be headed #outdoors this summer with great meals, for free!"
    mail( :to => @user.email,
    :subject => 'Thanks for signing up for Fireside Provisions' )
  end

  # def send_prize_email(user, prize)
  # 	@user = user
  # 	@prize = prize
  # 	mail( :to => @user.email,
  #   :subject => 'Enjoy Your Coupon Code' )
  # end

end
