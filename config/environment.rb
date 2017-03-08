# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Prelaunchr::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => 'firesideprovisions',
  :password => ENV['sendgrid_password'],
  :domain => 'http://prelaunchr.firesideprovisions.com',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
