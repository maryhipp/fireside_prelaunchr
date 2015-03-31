Gridhook.configure do |config|
  # The path we want to receive events
  config.event_receive_path = '/'

  config.event_processor = proc do |event|
    # event is a Gridhook::Event object
    EmailEvent.create! event.attributes
  end
end