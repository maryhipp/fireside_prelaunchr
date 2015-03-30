# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Prelaunchr::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'firesideprovisions',
  :password => 'realfood',
  :domain => 'https://pure-citadel-4400.herokuapp.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}