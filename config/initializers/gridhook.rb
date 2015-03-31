Gridhook.configure do |config|
  # The path we want to receive events
  config.event_receive_path = '/'
  config.event_processor = EventProcessor.new
end