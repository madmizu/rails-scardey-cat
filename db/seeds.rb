# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destorying Existing seed data..."
User.destroy_all
Score.destroy_all

puts "Creating User seed data..."
User.create ({username: "mouse",email: "mouse@email.com",password: "1234"})
User.create ({username: "cat",email: "cat@email.com",password: "1234"})
User.create ({username: "dog",email: "dog@email.com",password: "1234"})
User.create ({username: "bird",email: "bird@email.com",password: "1234"})
User.create ({username: "fish",email: "fish@email.com",password: "1234"})
User.create ({username: "cow",email: "cow@email.com",password: "1234"})
User.create ({username: "deer",email: "deer@email.com",password: "1234"})

puts "Creating Score seed data..."
20.times do
    Score.create ({
        score: Faker::Number.between(from: 100, to: 90000),
        user_id: Faker::Number.between(from: 1, to: 7)
    })
end

puts "Done seeding!"