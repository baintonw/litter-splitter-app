# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Cat.destroy_all
Claim.destroy_all

User.create(name: "Jaimie", username: "Jaimie", password: "456")
User.create(name: "Will", username: "Will", password: "456")
User.create(name: "Yana", username: "Yana", password: "456")
User.create(name: "Matt", username: "Matt", password: "456")

puts "Made users!"

Cat.create(name: "Ziggy", age: 1, gender: "male", description: "Always in a tux, ready for his next gala. Despite his migh-class look, this is a down-to-earth guy, just looking to nap and snuggle", user_id: 4, img_url: "/assets/ziggy.jpg", adopted: false)
Cat.create(name: "Randall", age: 1, gender: "male", description: "I've never met a cat like him! He uses his hands like a human, it's so funny and strange. He's super friendly and curious - no food is safe around him! He can open just about anything!", user_id: 4, img_url: "/assets/randall.jpg", adopted: false)
Cat.create(name: "Andy", age: 3, gender: "male", description: "This big boy just wants to nap and get pets all day. He's a prince and should be treated as such.", user_id: 4, img_url: "/assets/andy.jpg", adopted: false)
Cat.create(name: "Monkey", age: 2, gender: "male", description: "I've never met anyone like him. He's very opinionated and always has something to say. All he wants is love and attention, all the time. All. The. Time.", user_id: 1, img_url: "/assets/monkey.jpg", adopted: false)
Cat.create(name: "Slim", age: 4, gender: "male", description: "big boys need love too.", user_id: 4, img_url: "/assets/slim.jpg", adopted: false)
Cat.create(name: "Beatrice", age: 1, gender: "female", description: "Just look at this lil survivor. She loves to dance.", user_id: 4, img_url: "/assets/beatrice.jpg", adopted: false)
Cat.create(name: "Michael", age: 5, gender: "male", description: "He's so nosey, always up in my business.", user_id: 4, img_url: "/assets/michael.jpg", adopted: false)
Cat.create(name: "Smudge", age: 1, gender: "female", description: "Adorable diva, she loves getting her photo taken and being told how beautiful she is.", user_id: 4, img_url: "/assets/smudge.jpg", adopted: false)
Cat.create(name: "Buster", age: 6, gender: "male", description: "Honestly most low-maintenence cat I've ever met. Never moves, eats, or uses the litterbox. Perfect for first-time cat owners!", user_id: 4, img_url: "/assets/buster.jpg", adopted: false)
Cat.create(name: "Queenie", age: 7, gender: "female", description: "Bow down, b*tches.", user_id: 4, img_url: "/assets/queenie.jpg", adopted: false)
Cat.create(name: "Sylvester", age: 4, gender: "male", description: "widdle cutie wit a bootie.", user_id: 2, img_url: "/assets/sylvester.jpg", adopted: false)
Cat.create(name: "Patty", age: 8, gender: "female", description: "Don't judge a book by it's cover. She's actually an eternal optimist. Joie de vivre, bon vivant, c'est Patty!", user_id: 2, img_url: "/assets/patty.jpg", adopted: false)
Cat.create(name: "Steve", age: 1, gender: "male", description: "I mean c'mon. He's perfect.", user_id: 3, img_url: "/assets/steve.jpg", adopted: false)
Cat.create(name: "Taco", age: 17, gender: "male", description: "Man about town, this guy runs the neighborhood. He's streetsmart but wants to settle down.", user_id: 3, img_url: "/assets/taco.jpg", adopted: false)
Cat.create(name: "Pluche", age: 5, gender: "female", description: "Very high-end ragdoll. Could be a showcat but she's not about that life.", user_id: 3, img_url: "/assets/pluche.jpg", adopted: false)
Cat.create(name: "Agatha", age: 3, gender: "female", description: "The most mysterious creature I've ever encountered. If you need more intrigue in your life, she's your gal.", user_id: 2, img_url: "/assets/agatha.jpg", adopted: false)
Cat.create(name: "Kevin", age: 34, gender: "male", description: "He's a piano prodigy. Only eats bread.", user_id: 3, img_url: "/assets/kevin.jpg", adopted: false)
Cat.create(name: "Frankie", age: 1, gender: "male", description: "too toot for his own goot.", user_id: 3, img_url: "/assets/frankie.jpg", adopted: false)


puts "Made cats!"

Claim.create(user_id: 1, cat_id: 7, active: false)
puts "Made claims!"
