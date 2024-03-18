# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.create(username:"srinadh",password:"12345")
User.create(username:"vamshi",password:"12345")
User.create(username:"rajeev",password:"12345")
User.create(username:"ganesh",password:"12345")

Message.create(message_body:"I love you guys",user_id:2)
Message.create(message_body:"Myself vamshi",user_id:3)
Message.create(message_body:"my self rajeev",user_id:4)
Message.create(message_body:"my self ganesh",user_id:5)
