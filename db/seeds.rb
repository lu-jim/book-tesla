# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user1 = User.create!(username: 'Luma', email: 'test@email.com', password: '12345678', password_confirmation: '12345678' )
car1 = Car.create(model: 'Cybertruck' image_link:'https://www.tesla.com/xNVh4yUEc3B9/04_Desktop.jpg')
car2 = Car.create(model: 'Model S' mage_link:'https://www.tesla.com/assets/img/my_fb_s.jpg)
Booking.create!(user: user1, car: car1, location: 'San Diego', date: DateTime.new(2022, 9, 1, 12, 0))
Booking.create!(user: user1, car: car2, location: 'New York', date: DateTime.new(2022, 10, 22, 12, 0))
Booking.create!(user: user1, car: car1, location: 'San Diego', date: DateTime.new(2022, 8, 11, 12, 0))
