class UserNotifier < ActionMailer::Base
  default :from => 'hello@firesideprovisions.com'

  def send_signup_email(user)
    @user = user
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
