# Be sure to restart your server when you modify this file.

# Your secret key for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!
# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
Prelaunchr::Application.config.secret_token = ENV["RAILS_SECRET"] || '4194ac385f1939531f2151deb05c9f541aab3359855d802080a92d696866203ab36793d64b1660f485b1e1e869cd454f2e6dd86c67d211c3ec118d2f6b19f2ab'