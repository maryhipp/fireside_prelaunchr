# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
Prelaunchr::Application.config.secret_token = ENV["RAILS_SECRET"] || '6636e39b9718082684f1a07130c64d6661a00617986959939883e4cc32ee3b67304d0516e7baa6019b8cecbe0781d03a6d8e7fc113ee1604ea03da41b0cbcb57'