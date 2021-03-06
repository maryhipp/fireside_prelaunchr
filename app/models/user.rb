class User < ActiveRecord::Base
    belongs_to :referrer, :class_name => "User", :foreign_key => "referrer_id"
    has_many :referrals, :class_name => "User", :foreign_key => "referrer_id"
    
    attr_accessible :email

    validates :email, :uniqueness => true, :format => { :with => /\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/i, :message => "Invalid email format." }
    validates :referral_code, :uniqueness => true

    before_create :create_referral_code
    after_create :send_welcome_email

    REFERRAL_STEPS = [
        {
            'count' => 5,
            "html" => "Trail Provision",
            "class" => "one",
            "image" =>  ActionController::Base.helpers.asset_path("trail-mix.jpg"),
            "coupon" => "TRAILMIX"
        },
        {
            'count' => 10,
            "html" => "Trail Kit<br><span>(Hat and Trail Provision)</span>",
            "class" => "two",
            "image" => ActionController::Base.helpers.asset_path("hat.jpg"),
            "coupon" => "TRAILKIT"
        },
        {
            'count' => 25,
            "html" => "Overnighter<br><span>(Breakfast, Lunch and Dinner for two adventurers)</span>",
            "class" => "three",
            "image" => ActionController::Base.helpers.asset_path("overnighter.jpg"),
            "coupon" => "OVERNIGHTER"
        },
        {
            'count' => 50,
            "html" => "Weekender<br><span>(Two days of Breakfast, Lunch and Dinner for four adventurers)</span>",
            "class" => "four",
            "image" => ActionController::Base.helpers.asset_path("weekender.jpg"),
            "coupon" => "WEEKENDER"
        }
    ]

    private

    def create_referral_code
        referral_code = SecureRandom.hex(5)
        @collision = User.find_by_referral_code(referral_code)

        while !@collision.nil?
            referral_code = SecureRandom.hex(5)
            @collision = User.find_by_referral_code(referral_code)
        end

        self.referral_code = referral_code
    end

    def send_welcome_email
        UserNotifier.send_signup_email(self).deliver
    end
end
