# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create!(username: 'Luma')
car1 = Car.create(model: 'Cybertruck', city: 'San Diego')
car2 = Car.create(model: 'Model S', city: 'California')
Booking.create!(user: user1, car: car1, date: DateTime.new(2022, 9, 1, 12, 0))
Booking.create!(user: user1, car: car2, date: DateTime.new(2022, 10, 22, 12, 0))
Booking.create!(user: user1, car: car1, date: DateTime.new(2022, 8, 11, 12, 0))
