# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# Users create
10.times do |i|
    name = Faker::Name.name
    password = Faker::Internet.password(min_length: 6, max_length: 10)
    User.create(
        name:name,
        email:"#{name}@love.fr",
        # age:rand(20..40),
        # password:password,
        # password_confirmation:password,
        # city_id:City.all.sample.id
    )
    puts "*"*(i+1)
    puts "#{i+1} user(s) created"
end