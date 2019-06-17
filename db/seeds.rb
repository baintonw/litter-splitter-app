# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Cat.destroy_all

User.create(name: "Jaimie")
User.create(name: "Will")
User.create(name: "Yana")
User.create(name: "Matt")
puts "Made users!"

Cat.create(name: "Monkey", age: 2, gender: "male", description: "sweet little baby", user_id: 1)
Cat.create(name: "Agatha", age: 2, gender: "female", description: "mysterious shadow", user_id: 2)
Cat.create(name: "Frankie", age: 14, gender: "male", description: "loves to cuddle", user_id: 3)
Cat.create(name: "Ziggy", age: 1, gender: "male", description: "kind of crosseyed but handsome in his own way", user_id: 4)
Cat.create(name: "Patty", age: 8, gender: "female", description: "big mama", user_id: 2)
Cat.create(name: "Steve", age: 17, gender: "male", description: "papi", user_id: 3)
Cat.create(name: "Sylvester", age: 4, gender: "male", description: "whiny", user_id: 2)
puts "Made cats!"

Claim.create(user_id: 1, cat_id: 7)
puts "Made claims!"
