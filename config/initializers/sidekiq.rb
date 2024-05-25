Sidekiq.configure_server do |config|
    # For dev
    config.redis = { url: 'redis//localhost:6379/0' }
end