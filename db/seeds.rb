# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Cat.destroy_all

User.create(name: "Jaimie", username: "jaimietn@gmail.com", password_digest: "1234")
User.create(name: "Will", username: "baintonw@gmail.com", password_digest: "will1")
User.create(name: "Yana", username: "yana@gmail.com", password_digest: "yana1")
User.create(name: "Matt", username: "matt@gmail.com", password_digest: "matt1")
puts "Made users!"

Cat.create(name: "Monkey", age: 2, gender: "male", description: "sweet little baby", user_id: 1, img_url: "/assets/Monkey.JPG")
Cat.create(name: "Agatha", age: 2, gender: "female", description: "mysterious shadow", user_id: 2, img_url: "/assets/Agatha.JPG")
Cat.create(name: "Frankie", age: 14, gender: "male", description: "loves to cuddle", user_id: 3, img_url: "/assets/Frankie.jpg")
Cat.create(name: "Ziggy", age: 1, gender: "male", description: "kind of crosseyed but handsome in his own way", user_id: 4, img_url: "/assets/Ziggy.jpg")
Cat.create(name: "Patty", age: 8, gender: "female", description: "big mama", user_id: 2, img_url: "/assets/Patty.jpg")
Cat.create(name: "Steve", age: 17, gender: "male", description: "papi", user_id: 3, img_url: "/assets/Steve.jpg")
Cat.create(name: "Sylvester", age: 4, gender: "male", description: "whiny", user_id: 2, img_url: "/assets/Sylvester.jpg")
puts "Made cats!"

Claim.create(user_id: 1, cat_id: 7)
puts "Made claims!"
