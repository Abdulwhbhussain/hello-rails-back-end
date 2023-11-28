# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

greetings = [
      'Hello! How can I assist you today?',
      'Greetings! I hope you\'re having a great day.',
      'Hi there! What can I help you with right now?',
      'Welcome! Feel free to ask me anything.',
      'Good day! Let me know how I can be of service.'
    ]

    greetings.each do |greeting|
      Message.create(greeting: greeting)
    end
