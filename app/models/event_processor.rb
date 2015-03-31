class EventProcessor

  def call(gridhook_event)
    email = gridhook_event.email
    if gridhook_event.event = "bounce"
    	user = User.find_by_email(email)
    	user.destroy
    end
  end
  
end